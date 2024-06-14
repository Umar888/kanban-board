import 'package:equatable/equatable.dart';

class TaskModel extends Equatable {
  String? id;
  String? projectId;
  String? sectionId;
  int? priority;
  String? content;
  String? description;
  String? datetime; // Use 'datetime' to match the column name in the database
  String? timezone;
  List<String>? labels;
  bool? isCompleted;
  int? commentCount;
  String? creatorId;
  String? createdAt;
  String? url;
  bool? isUpdating;

  TaskModel({
    this.id,
    this.isUpdating,
    this.projectId,
    this.datetime,
    this.timezone,
    this.sectionId,
    this.priority,
    this.content,
    this.description,
    this.labels,
    this.isCompleted,
    this.commentCount,
    this.creatorId,
    this.createdAt,
    this.url,
  });

  @override
  List<Object?> get props => [
    id,
    projectId,
    datetime,
    timezone,
    sectionId,
    priority,
    content,
    description,
    labels,
    isCompleted,
    commentCount,
    creatorId,
    createdAt,
    url,
    isUpdating,
  ];

  TaskModel copyWith({
    String? id,
    bool? isUpdating,
    String? projectId,
    String? sectionId,
    int? priority,
    String? content,
    String? description,
    String? datetime,
    String? timezone,
    List<String>? labels,
    bool? isCompleted,
    int? commentCount,
    String? creatorId,
    String? createdAt,
    String? url,
  }) {
    return TaskModel(
      id: id ?? this.id,
      isUpdating: isUpdating ?? this.isUpdating,
      datetime: datetime ?? this.datetime,
      timezone: timezone ?? this.timezone,
      projectId: projectId ?? this.projectId,
      sectionId: sectionId ?? this.sectionId,
      priority: priority ?? this.priority,
      content: content ?? this.content,
      description: description ?? this.description,
      labels: labels ?? this.labels,
      isCompleted: isCompleted ?? this.isCompleted,
      commentCount: commentCount ?? this.commentCount,
      creatorId: creatorId ?? this.creatorId,
      createdAt: createdAt ?? this.createdAt,
      url: url ?? this.url,
    );
  }

  factory TaskModel.fromJson(Map<String, dynamic> json) {
    return TaskModel(
      id: json['id'],
      isUpdating: false,
      projectId: json['project_id'],
      datetime: json['due']['datetime'],
      timezone: json['due']['timezone'],
      sectionId: json['section_id'],
      priority: json['priority'],
      content: json['content'],
      description: json['description'],
      labels: json['labels'] != null ? List<String>.from(json['labels']) : null,
      isCompleted: json['is_completed'],
      commentCount: json['comment_count'],
      creatorId: json['creator_id'],
      createdAt: json['created_at'],
      url: json['url'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['id'] = id;
    data['project_id'] = projectId;
    data['datetime'] =  datetime;
    data['timezone'] =  timezone;
    data['section_id'] = sectionId;
    data['priority'] = priority;
    data['content'] = content;
    data['description'] = description;
    data['labels'] = labels;
    data['is_completed'] = isCompleted;
    data['comment_count'] = commentCount;
    data['creator_id'] = creatorId;
    data['created_at'] = createdAt;
    data['url'] = url;
    return data;
  }
}
