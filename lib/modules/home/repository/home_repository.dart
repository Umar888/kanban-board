

import 'dart:io';

import 'package:kanban_board/modules/home/data_source/home_datasource.dart';
import 'package:kanban_board/modules/home/models/comments_model.dart';
import 'package:kanban_board/modules/home/models/tasks_model.dart';
import 'package:kanban_board/networking/http_response.dart';


class HomeRepository {

  HomeDataSource homeDataSource =  HomeDataSource();

  Future<TaskModel> addNewTask({
    required String content,
    required String description,
    required int priority,
    required String sectionId,
    required String dueDate,
    required List<String> labels
} ) async {
    HttpResponse response = await homeDataSource.addNewTask(dueDate: dueDate,content: content, description: description, priority: priority, sectionId: sectionId, labels: labels);

    if (response.data != null && response.data["id"] != null) {
      return TaskModel.fromJson(response.data);
    }
    else{
      return TaskModel(id: "error");
    }

  }
  Future<TaskModel> updateTask({
    required String taskId,
    required String content,
    required String description,
    required int priority,
    required String sectionId,
    required String dueDate,
    required List<String> labels
} ) async {
    HttpResponse response = await homeDataSource.updateTask(taskId: taskId,dueDate: dueDate,content: content, description: description, priority: priority, sectionId: sectionId, labels: labels);

    if (response.data != null && response.data["id"] != null) {
      return TaskModel.fromJson(response.data);
    }
    else{
      return TaskModel(id: "error");
    }

  }
  Future<CommentsModel> addNewComment({
    required File? attachment,
    required String taskId,
    required String content
} ) async {
    HttpResponse response = await homeDataSource.addNewComment(attachment: attachment, taskId: taskId, content: content);

    if (response.data != null && response.data["id"] != null) {
      return CommentsModel.fromJson(response.data);
    }
    else{
      return CommentsModel(id: "error");
    }

  }
  Future<CommentsModel> updateComment({
    required String commentId,
    required String content
} ) async {
    HttpResponse response = await homeDataSource.updateComment(commentId: commentId, content: content);
    if (response.data != null && response.data["id"] != null) {
      return CommentsModel.fromJson(response.data);
    }
    else{
      return CommentsModel(id: "error");
    }

  }

  Future<TaskModel> updateSectionOfTask({
    required String taskId,
    required String fromSectionId,
    required String sectionId,
    required List<String> labels
} ) async {
    HttpResponse response = await homeDataSource.updateSectionOfTask(fromSectionId:fromSectionId,taskId: taskId, sectionId: sectionId,labels: labels);

    if (response.data != null && response.data["id"] != null) {
      return TaskModel.fromJson(response.data);
    }
    else{
      return TaskModel(id: "error");
    }

  }
  Future<TaskModel> updateTimer({
    required String taskId,
    required List<String> labels
} ) async {
    HttpResponse response = await homeDataSource.updateTimer(taskId: taskId, labels: labels);

    if (response.data != null && response.data["id"] != null) {
      return TaskModel.fromJson(response.data);
    }
    else{
      return TaskModel(id: "error");
    }

  }
  Future<TaskModel> updateTimerState({
    required String taskId,
    required List<String> labels
} ) async {
    HttpResponse response = await homeDataSource.updateTimerState(taskId: taskId,  labels: labels);

    if (response.data != null && response.data["id"] != null) {
      return TaskModel.fromJson(response.data);
    }
    else{
      return TaskModel(id: "error");
    }

  }
  Future<TaskModel> startTask({
    required String taskId,
    required List<String> labels
} ) async {
    HttpResponse response = await homeDataSource.startTask(taskId: taskId, labels: labels);

    if (response.data != null && response.data["id"] != null) {
      return TaskModel.fromJson(response.data);
    }
    else{
      return TaskModel(id: "error");
    }

  }

  Future<TaskModel> completeTask({
    required String taskId,
    required List<String> labels
} ) async {
    List<HttpResponse> response = await homeDataSource.completeTask(taskId: taskId, labels: labels);
    if (response.first.data != null) {
      return TaskModel.fromJson(response.first.data);
    }
    else{
      return TaskModel(id: "error");
    }
  }
  Future<TaskModel> reopenTask({
    required String taskId,
    required List<String> labels
} ) async {
    List<HttpResponse> response = await homeDataSource.reopenTask(taskId: taskId, labels: labels);
    if (response.first.data != null) {
      return TaskModel.fromJson(response.first.data);
    }
    else{
      return TaskModel(id: "error");
    }
  }
  Future<bool> deleteTasks({
    required String taskId
} ) async {
    HttpResponse response = await homeDataSource.deleteTasks(taskId: taskId);

    if (response.status??false) {
      return true;
    }
    else{
      return false;
    }

  }
  Future<bool> deleteComment({
    required String commentId
} ) async {
    HttpResponse response = await homeDataSource.deleteComment(commentId: commentId);

    if (response.status??false) {
      return true;
    }
    else{
      return false;
    }

  }
  Future<List<TaskModel>> fetchAllTasks() async {
    HttpResponse response = await homeDataSource.fetchAllTasks();
    if (response.data != null && response.data is List) {
      List<dynamic> data = response.data;
      return data.map((task) => TaskModel.fromJson(task)).toList();
    }
    else{
      return [];
    }
  }
  Future<List<TaskModel>> fetchAllTasksByDate({required String date}) async {
    HttpResponse response = await homeDataSource.fetchAllTasksByDate(createdAt: date);
    if (response.data != null && response.data is List) {
      List<dynamic> data = response.data;
      return data.map((task) => TaskModel.fromJson(task)).toList();
    }
    else{
      return [];
    }
  }
  Future<List<CommentsModel>> fetchAllComments({required String taskId}) async {
    HttpResponse response = await homeDataSource.fetchAllComments(taskId: taskId);
    if (response.data != null && response.data is List) {
      List<dynamic> data = response.data;
      return data.map((task) => CommentsModel.fromJson(task)).toList();
    }
    else{
      return [];
    }
  }

}