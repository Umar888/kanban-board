import 'package:kanban_board/intermediate_widget/kanban_board_ui/kanban_board_ui.dart';

import '../bloc/home_bloc.dart';



class TaskItem extends AppFlowyGroupItem {
  final bool isUpdating;
  final String groupId;
  final String title;
  final String taskId;
  final String subtitle;
  final int seconds;
  final bool isPlaying;
  final List<TasksTags> tag;
  final List<String> labels;
  final TasksPriority tasksPriority;
  final DateTime dateTime;
  final int totalComments;

  TaskItem({
    this.totalComments = 5,
    this.seconds = 0,
    this.isPlaying = false,
    required this.dateTime,
    required this.groupId,
    required this.isUpdating,
    required this.taskId,
    required this.title,
    this.tasksPriority = TasksPriority.normalPriority,
    this.tag = const [],
    required this.labels,
    this.subtitle = "Loreum Ispum dolor sit amet, libre unst consecteur adispicing edit.",
  });

  @override
  String get id => title;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is TaskItem &&
        other.title == title &&
        other.isUpdating == isUpdating &&
        other.labels == labels &&
        other.taskId == taskId &&
        other.subtitle == subtitle &&
        other.tag.length == tag.length &&
        other.tag.every((element) => tag.contains(element)) &&
        other.tasksPriority == tasksPriority &&
        other.dateTime == dateTime &&
        other.totalComments == totalComments &&
        other.seconds == seconds &&
        other.isPlaying == isPlaying &&
        other.groupId == groupId;
  }

  @override
  int get hashCode {
    return title.hashCode ^
    taskId.hashCode ^
    isUpdating.hashCode ^
    subtitle.hashCode ^
    labels.hashCode ^
    tag.hashCode ^
    tasksPriority.hashCode ^
    dateTime.hashCode ^
    totalComments.hashCode ^
    seconds.hashCode ^
    isPlaying.hashCode ^
    groupId.hashCode;
  }

  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'subtitle': subtitle,
      'labels': labels,
      'isUpdating': isUpdating,
      'taskId': taskId,
      'seconds': seconds,
      'isPlaying': isPlaying,
      'tag': tag.map((e) => e.toString().split('.').last).toList(),
      'tasksPriority': tasksPriority.toString().split('.').last,
      'dateTime': dateTime.toIso8601String(),
      'totalComments': totalComments,
    };
  }

  factory TaskItem.fromJson(Map<String, dynamic> json) {
    return TaskItem(
      title: json['title'],
      taskId: json['taskId'],
      labels: json['labels'],
      isUpdating: json['isUpdating'],
      seconds: json['seconds'] ?? 0,
      isPlaying: json['isPlaying'] ?? false,
      subtitle: json['subtitle'] ?? "Loreum Ispum dolor sit amet, libre unst consecteur adispicing edit.",
      tag: (json['tag'] as List<dynamic>).map((e) => TasksTags.values.firstWhere((element) => element.toString().split('.').last == e)).toList(),
      tasksPriority: TasksPriority.values.firstWhere((element) => element.toString().split('.').last == json['tasksPriority']),
      dateTime: DateTime.parse(json['dateTime']),
      totalComments: json['totalComments'] ?? 5,
      groupId: json['groupId'] ?? '',
    );
  }
}

