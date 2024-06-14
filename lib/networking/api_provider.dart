import 'dart:async';
import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:kanban_board/constant/string_constants.dart';

import '../constant/api_path_constants.dart';
import '../networking/http_response.dart';

class ApiProvider {
  final String _baseUrl = mainUrl;
  Map<String, String> requestHeaders = {'Accept-Charset': 'utf-8'};

  Future<HttpResponse> doGet({required String path, dynamic params, bool tokenRequired = true}) async {
    // Check network connectivity
    var connectivityResult = await Connectivity().checkConnectivity();
    if (connectivityResult == ConnectivityResult.none) {
      return HttpResponse(status: false, message: 'No internet connection');
    }

    Map<String, String> headers = {};
    log("get path ${_baseUrl + path}");

    headers.putIfAbsent('Content-Type', () => 'application/json');
    headers.putIfAbsent('Authorization', () => 'Bearer $accessToken');


    try {
      var uri = Uri.parse(_baseUrl + path);
      if (params != null) {
        uri = uri.replace(queryParameters: params);
      }
      var response = await http.get(uri, headers: headers).timeout(const Duration(seconds: 20));
      if (kDebugMode) {
        print("response.statusCode ${response.statusCode}");
      }

      dynamic data; // set decoded body response
      if (response.body.isNotEmpty) {
        data = json.decode(response.body);
      }

      switch (response.statusCode) {
        case 200: // API success
        case 201:
        case 204:
          return HttpResponse(status: true, message: '', data: data);
        case 401: // token expired
        case 403:
        // Refresh token and retry request
          var refreshedResponse = await _refreshAndRetryGet(path: path, params: params, headers: headers, tokenRequired: tokenRequired);
          return refreshedResponse;
        case 400:
          return HttpResponse(status: false, message: '', data: data);
        case 404: // API not found
          return HttpResponse(status: false, message: 'API not found');
        case 409: // Conflict
          return HttpResponse(status: false, message: 'Conflict occurred! User already exist', data: data);
        case 504: // Timeout
          return HttpResponse(status: false, message: 'Gateway Timeout');
        default:
          return HttpResponse(status: false, message: 'Unexpected error occurred');
      }
    } on SocketException catch (_) {
      return HttpResponse(status: false, message: 'No internet connection');
    } on TimeoutException catch (_) {
      return HttpResponse(status: false, message: 'Request timeout');
    } catch (e) {
      log("error: $e");
      return HttpResponse(status: false, message: 'An error occurred');
    }
  }

  // Similar enhancements can be applied to doPost and other methods
  Future<HttpResponse> _refreshAndRetryGet({required String path, dynamic params, required Map<String, String> headers, bool tokenRequired = true}) async {
    // Handle token refresh logic here, if any

    var uri = Uri.parse(_baseUrl + path);
    if (params != null) {
      uri = uri.replace(queryParameters: params);
    }
    var response = await http.get(uri, headers: headers);

    dynamic data; // set decoded body response
    if (response.body.isNotEmpty) {
      data = json.decode(response.body);
    }
    if (response.statusCode == 200) {
      return HttpResponse(status: true, message: '', data: data);
    }
    return HttpResponse(status: false, message: 'Failed to refresh token', data: data);
  }

  Future<HttpResponse> doPost({
    required String path,
    dynamic body,
    dynamic params,
    File? attachment,
    bool tokenRequired = true,
  }) async {
    // Check network connectivity
    var connectivityResult = await Connectivity().checkConnectivity();
    if (connectivityResult == ConnectivityResult.none) {
      return HttpResponse(status: false, message: 'No internet connection');
    }

    Map<String, String> headers = {};
    log("post path ${_baseUrl + path}");
    log("post body ${jsonEncode(body)}");

    headers.putIfAbsent('Content-Type', () => 'application/json');
    headers.putIfAbsent('Authorization', () => 'Bearer $accessToken');

    try {
      var uri = Uri.parse(_baseUrl + path);
      var request;

      if (attachment != null) {
        request = http.MultipartRequest('POST', uri);
        request.headers.addAll(headers);

        if (body != null) {
          request.fields['body'] = jsonEncode(body);
        }

        request.files.add(await http.MultipartFile.fromPath(
          'attachment',
          attachment.path,
          filename: attachment.path.split('/').last,
        ));
      } else {
        request = http.Request('POST', uri);
        request.headers.addAll(headers);

        if (body != null) {
          request.body = jsonEncode(body);
        }
      }

      final streamedResponse = await request.send().timeout(const Duration(seconds: 10));
      var response = await http.Response.fromStream(streamedResponse);

      dynamic data; // set decoded body response
      if (response.body.isNotEmpty) {
        data = json.decode(response.body);
      }

      switch (response.statusCode) {
        case 200: // API success
        case 201:
        case 204:
          return HttpResponse(status: true, message: '', data: data);
        case 401: // token expired
        case 403:
        // Refresh token and retry request
          var refreshedResponse = await _refreshAndRetryPost(
              path: path,
              body: body,
              headers: headers,
              attachment: attachment,
              tokenRequired: tokenRequired
          );
          return refreshedResponse;
        case 400:
          return HttpResponse(status: false, message: '', data: data);
        case 404: // API not found
          return HttpResponse(status: false, message: 'API not found');
        case 409: // Conflict
          return HttpResponse(status: false, message: 'Conflict occurred! User already exist', data: data);
        case 504: // Timeout
          return HttpResponse(status: false, message: 'Gateway Timeout');
        default:
          return HttpResponse(status: false, message: 'Unexpected error occurred');
      }
    } on SocketException catch (_) {
      return HttpResponse(status: false, message: 'No internet connection');
    } on TimeoutException catch (_) {
      return HttpResponse(status: false, message: 'Request timeout');
    } catch (e) {
      log("error: $e");
      return HttpResponse(status: false, message: 'An error occurred');
    }
  }

  Future<HttpResponse> _refreshAndRetryPost({
    required String path,
    dynamic body,
    required Map<String, String> headers,
    File? attachment,
    bool tokenRequired = true,
  }) async {
    // Handle token refresh logic here, if any

    var uri = Uri.parse(_baseUrl + path);
    var request;

    if (attachment != null) {
      request = http.MultipartRequest('POST', uri);
      request.headers.addAll(headers);

      if (body != null) {
        request.fields['body'] = jsonEncode(body);
      }

      request.files.add(await http.MultipartFile.fromPath(
        'attachment',
        attachment.path,
        filename: attachment.path.split('/').last,
      ));
    } else {
      request = http.Request('POST', uri);
      request.headers.addAll(headers);

      if (body != null) {
        request.body = jsonEncode(body);
      }
    }

    final streamedResponse = await request.send();
    var response = await http.Response.fromStream(streamedResponse);
    dynamic data; // set decoded body response
    if (response.body.isNotEmpty) {
      data = json.decode(response.body);
    }
    if (response.statusCode == 200) {
      return HttpResponse(status: true, message: '', data: data);
    }
    return HttpResponse(status: false, message: 'Failed to refresh token', data: data);
  }

  Future<HttpResponse> doDelete({required String path, dynamic params, bool tokenRequired = true}) async {
    // Check network connectivity
    var connectivityResult = await Connectivity().checkConnectivity();
    if (connectivityResult == ConnectivityResult.none) {
      return HttpResponse(status: false, message: 'No internet connection');
    }

    Map<String, String> headers = {};
    log("delete path ${_baseUrl + path}");

    headers.putIfAbsent('Content-Type', () => 'application/json');
    headers.putIfAbsent('Authorization', () => 'Bearer $accessToken');

    try {
      var request = http.Request("DELETE", Uri.parse(_baseUrl + path));
      request.headers.addAll(headers);

      final streamedResponse = await request.send().timeout(const Duration(seconds: 10));
      var response = await http.Response.fromStream(streamedResponse);
      dynamic data; // set decoded body response
      if (response.body.isNotEmpty) {
        data = json.decode(response.body);
      }

      switch (response.statusCode) {
        case 200: // API success
        case 204: // No content
          return HttpResponse(status: true, message: '', data: data);
        case 401: // token expired
        case 403:
        // Refresh token and retry request
          var refreshedResponse = await _refreshAndRetryDelete(path: path, headers: headers, tokenRequired: tokenRequired);
          return refreshedResponse;
        case 404: // API not found
          return HttpResponse(status: false, message: 'API not found');
        case 504: // Timeout
          return HttpResponse(status: false, message: 'Gateway Timeout');
        default:
          return HttpResponse(status: false, message: 'Unexpected error occurred');
      }
    } on SocketException catch (_) {
      return HttpResponse(status: false, message: 'No internet connection');
    } on TimeoutException catch (_) {
      return HttpResponse(status: false, message: 'Request timeout');
    } catch (e) {
      log("error: $e");
      return HttpResponse(status: false, message: 'An error occurred');
    }
  }

  Future<HttpResponse> _refreshAndRetryDelete({required String path, required Map<String, String> headers, bool tokenRequired = true}) async {
    // Handle token refresh logic here, if any

    var request = http.Request("DELETE", Uri.parse(_baseUrl + path));
    request.headers.addAll(headers);

    final streamedResponse = await request.send();
    var response = await http.Response.fromStream(streamedResponse);
    dynamic data; // set decoded body response
    if (response.body.isNotEmpty) {
      data = json.decode(response.body);
    }

    if (response.statusCode == 200) {
      return HttpResponse(status: true, message: '', data: data);
    }
    return HttpResponse(status: false, message: 'Failed to refresh token', data: data);
  }

}


