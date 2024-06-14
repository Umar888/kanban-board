import 'dart:math';

import 'package:kanban_board/constant/string_constants.dart';
import 'package:kanban_board/services/extensions/string_extension.dart';

abstract class RequestBody {

  static Map<String, dynamic> addNewTask({
    required String content,
    required String description,
    required String dueDate,
    required int priority,
    required String sectionId,
    required List<String> labels
  }) {
    Set<String> uniqueLabels = Set<String>.from(labels);

    // Add additional labels based on the sectionId
    if (sectionId == "Todo") {
      uniqueLabels.removeWhere((e) => e.startsWith("ztimer-"));
      uniqueLabels.remove(inProgressStatusId);
      uniqueLabels.remove(doneStatusId);
      uniqueLabels.add(todoStatusId);
    } else if (sectionId == "In Progress") {
      uniqueLabels.remove(todoStatusId);
      uniqueLabels.remove(doneStatusId);
      uniqueLabels.removeWhere((e) => e.startsWith("ztimer-"));
      uniqueLabels.add(inProgressStatusId);
      uniqueLabels.add("ztimer-0");
      uniqueLabels.add("ztimer-state-pause");
    } else if (sectionId == "Done") {
      uniqueLabels.remove(todoStatusId);
      uniqueLabels.removeWhere((e) => e.startsWith("ztimer-state-"));
      uniqueLabels.remove(inProgressStatusId);
      uniqueLabels.add(doneStatusId);
      uniqueLabels.add("ztimer-0");
    }

    List<String> sortedLabels = uniqueLabels.toList()..sort();

    return {
      "content": content,
      "description": description,
      "priority": priority,
      "due_datetime": dueDate,
      "labels": sortedLabels,
    };
  }

  static Map<String, dynamic> addNewComment({
    required String taskId,
    required String content
  }) {
    return {
      "content":content,
      "task_id":taskId
    };
  }
  static Map<String, dynamic> updateComment({
    required String content
  }) {
    return {
      "content":content
    };
  }

  static Map<String, dynamic> updateSectionOfTask({
    required String sectionId,
    required List<String> labels,
  }) {
    // Create a Set to store unique labels
    Set<String> uniqueLabels = Set<String>.from(labels);

    // Add additional labels based on the sectionId
    if (sectionId == "To Do") {
      uniqueLabels.removeWhere((e) => e.startsWith("ztimer-"));
      uniqueLabels.remove(inProgressStatusId);
      uniqueLabels.remove(doneStatusId);
      uniqueLabels.add(todoStatusId);
    } else if (sectionId == "In Progress") {
      uniqueLabels.remove(todoStatusId);
      uniqueLabels.remove(doneStatusId);
      uniqueLabels.removeWhere((e) => e.startsWith("ztimer-"));
      uniqueLabels.add(inProgressStatusId);
      uniqueLabels.add("ztimer-0");
      uniqueLabels.add("ztimer-state-pause");
    } else if (sectionId == "Done") {

      uniqueLabels.remove(todoStatusId);
      uniqueLabels.removeWhere((e) => e.startsWith("ztimer-state-"));
      uniqueLabels.remove(inProgressStatusId);
      uniqueLabels.add(doneStatusId);
      if(uniqueLabels.where((e) => e.startsWith("ztimer-")).isEmpty){
        uniqueLabels.add("ztimer-0");
      }
    }

    List<String> sortedLabels = uniqueLabels.toList()..sort();

    return {"labels": sortedLabels};
  }


  static Map<String, dynamic> updateTimer({
    required List<String> labels

  }) {
    return {
      "labels":labels,
     };
  }
  static Map<String, dynamic> updateTimerState({
    required List<String> labels

  }) {
    return {
      "labels":labels,
     };
  }

  static Map<String, dynamic> completeTask({
    required List<String> labels

  }) {

    Set<String> uniqueLabels = Set<String>.from(labels);
    uniqueLabels.remove(todoStatusId);
    uniqueLabels.remove(inProgressStatusId);
    uniqueLabels.removeWhere((e) => e.startsWith("ztimer-state-"));
    uniqueLabels.add(doneStatusId);
    if(!labels.last.replaceAll("ztimer-", "").isNumeric()){
      uniqueLabels.add("ztimer-0");
    }

    List<String> sortedLabels = uniqueLabels.toList()..sort();

    return {"labels": sortedLabels};
  }
  static Map<String, dynamic> startTask({
    required List<String> labels,
  }) {
    // Create a Set to store unique labels
    Set<String> uniqueLabels = Set<String>.from(labels);
    uniqueLabels.remove(todoStatusId);
    uniqueLabels.remove(doneStatusId);
    uniqueLabels.removeWhere((e) => e.startsWith("ztimer-"));
    uniqueLabels.add(inProgressStatusId);
    uniqueLabels.add("ztimer-0");
    uniqueLabels.add("ztimer-state-pause");

    List<String> sortedLabels = uniqueLabels.toList()..sort();

    return {"labels": sortedLabels};
  }

  static Map<String, dynamic> reopenTask({
    required List<String> labels

  }) {
    Set<String> uniqueLabels = Set<String>.from(labels);
    uniqueLabels.remove(inProgressStatusId);
    uniqueLabels.remove(doneStatusId);
    uniqueLabels.removeWhere((e) => e.startsWith("ztimer-"));
    uniqueLabels.add(todoStatusId);

    List<String> sortedLabels = uniqueLabels.toList()..sort();

    return {
      "labels":sortedLabels,
     };
  }

}
