

import 'dart:io';

import 'package:intl/intl.dart';
import 'package:kanban_board/services/extensions/string_extension.dart';

import '../../../constant/api_path_constants.dart';
import '../../../networking/api_provider.dart';
import '../../../networking/http_response.dart';
import '../../../networking/request_body.dart';

class HomeDataSource {
  final ApiProvider _apiProvider = ApiProvider();

  Future<HttpResponse> addNewTask({
    required String content,
    required String description,
    required int priority,
    required String sectionId,
    required String dueDate,
    required List<String> labels
  }) async {
    HttpResponse response = await _apiProvider.doPost(
        path: tasksAPI,
        body: RequestBody.addNewTask(content: content, dueDate: dueDate, description: description, priority: priority, sectionId: sectionId, labels: labels),

        tokenRequired: false);
    return response;
  }

  Future<HttpResponse> updateTask({
    required String content,
    required String taskId,
    required String description,
    required int priority,
    required String sectionId,
    required String dueDate,
    required List<String> labels
  }) async {
    HttpResponse response = await _apiProvider.doPost(
        path: "$tasksAPI/$taskId",
        body: RequestBody.addNewTask(content: content, dueDate: dueDate, description: description, priority: priority, sectionId: sectionId, labels: labels),
        tokenRequired: false);
    return response;
  }
  Future<HttpResponse> addNewComment({
    required File? attachment,
    required String taskId,
    required String content
  }) async {
    HttpResponse response = await _apiProvider.doPost(
        path: commentsAPI,
        attachment: attachment,
        body: RequestBody.addNewComment(taskId: taskId, content: content),

        tokenRequired: false);
    return response;
  }
  Future<HttpResponse> updateComment({
    required String commentId,
    required String content
  }) async {
    HttpResponse response = await _apiProvider.doPost(
        path: "$commentsAPI/$commentId",
        body: RequestBody.updateComment(content: content),

        tokenRequired: false);
    return response;
  }
  Future<HttpResponse> fetchAllComments({
    required String taskId
  }) async {
    HttpResponse response = await _apiProvider.doGet(
        path: "$commentsAPI?task_id=$taskId",
        tokenRequired: false);
    return response;
  }
  Future<HttpResponse> updateSectionOfTask({
    required String taskId,
    required String sectionId,
    required String fromSectionId,
    required List<String> labels
  }) async {
    // if(sectionId == "Done"){
    //   await _apiProvider.doPost(
    //       path: "$tasksAPI/$taskId/close",
    //       tokenRequired: false);
    // }
    // else if(fromSectionId == "Done"){
    //   await _apiProvider.doPost(
    //       path: "$tasksAPI/$taskId/reopen",
    //       tokenRequired: false);
    // }
    HttpResponse response = await _apiProvider.doPost(
        path: "$tasksAPI/$taskId",
        body: RequestBody.updateSectionOfTask(sectionId: sectionId,labels: labels),

        tokenRequired: false);
    return response;
  }

  Future<HttpResponse> updateTimer({
    required String taskId,
    required List<String> labels
  }) async {
    HttpResponse response = await _apiProvider.doPost(
        path: "$tasksAPI/$taskId",
        body: RequestBody.updateTimer(labels: labels),

        tokenRequired: false);
    return response;
  }
  Future<HttpResponse> updateTimerState({
    required String taskId,
    required List<String> labels
  }) async {
    HttpResponse response = await _apiProvider.doPost(
        path: "$tasksAPI/$taskId",
        body: RequestBody.updateTimerState(labels: labels),

        tokenRequired: false);
    return response;
  }

  Future<List<HttpResponse>> completeTask({
    required String taskId,
    required List<String> labels
  }) async {
    HttpResponse response1 = await _apiProvider.doPost(
        path: "$tasksAPI/$taskId",
        body: RequestBody.completeTask(labels: labels),
        tokenRequired: false);
    // HttpResponse response2 = await _apiProvider.doPost(
    //     path: "$tasksAPI/$taskId/close",
    //     tokenRequired: false);
    return [response1];
  }
  Future<HttpResponse> startTask({
    required String taskId,
    required List<String> labels
  }) async {
    HttpResponse response = await _apiProvider.doPost(
        path: "$tasksAPI/$taskId",
        body: RequestBody.startTask(labels: labels),
        tokenRequired: false);
    return response;
  }
  Future<List<HttpResponse>> reopenTask({
    required String taskId,
    required List<String> labels
  }) async {
    HttpResponse response1 = await _apiProvider.doPost(
        path: "$tasksAPI/$taskId",
        body: RequestBody.reopenTask(labels: labels),
        tokenRequired: false);
    // HttpResponse response2 = await _apiProvider.doPost(
    //     path: "$tasksAPI/$taskId/reopen",
    //     tokenRequired: false);
    return [response1];
  }

  Future<HttpResponse> deleteTasks({
    required String taskId,
  }) async {
    HttpResponse response = await _apiProvider.doDelete(
        path: "$tasksAPI/$taskId",
        tokenRequired: false);
    return response;
  }

  Future<HttpResponse> deleteComment({
    required String commentId,
  }) async {
    HttpResponse response = await _apiProvider.doDelete(
        path: "$commentsAPI/$commentId",
        tokenRequired: false);
    return response;
  }

  Future<HttpResponse> fetchAllTasks() async {
    HttpResponse response = await _apiProvider.doGet(
        path: tasksAPI,
        tokenRequired: false);
    return response;
  }
  Future<HttpResponse> fetchAllTasksByDate({required String createdAt}) async {
    HttpResponse response = await _apiProvider.doGet(
        path: "$tasksAPI?filter=created: $createdAt",
        tokenRequired: false);
    return response;
  }
}