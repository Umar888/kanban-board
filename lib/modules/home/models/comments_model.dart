import 'package:equatable/equatable.dart';

class CommentsModel extends Equatable {
  final String? content;
  final String? id;
  final String? postedAt;
  final String? taskId;
  final bool? isUpdating;
  final Attachment? attachment;

  CommentsModel({
    this.content,
    this.id,
    this.postedAt,
    this.taskId,
    this.isUpdating = false,
    this.attachment,
  });

  CommentsModel.fromJson(Map<String, dynamic> json)
      : content = json['content'],
        id = json['id'],
        isUpdating = false,
        postedAt = json['posted_at'],
        taskId = json['task_id'],
        attachment = json['attachment'] != null
            ? Attachment.fromJson(json['attachment'])
            : null;

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['content'] = content;
    data['id'] = id;
    data['posted_at'] = postedAt;
    data['task_id'] = taskId;
    if (attachment != null) {
      data['attachment'] = attachment!.toJson();
    }
    return data;
  }

  CommentsModel copyWith({
    String? content,
    String? id,
    String? postedAt,
    String? taskId,
    bool? isUpdating,
    Attachment? attachment,
  }) {
    return CommentsModel(
      content: content ?? this.content,
      id: id ?? this.id,
      postedAt: postedAt ?? this.postedAt,
      taskId: taskId ?? this.taskId,
      isUpdating: isUpdating ?? this.isUpdating,
      attachment: attachment ?? this.attachment,
    );
  }

  @override
  List<Object?> get props => [content, id, postedAt, taskId, isUpdating, attachment];
}

class Attachment extends Equatable {
  final String? fileName;
  final String? fileType;
  final String? fileUrl;
  final String? resourceType;

  Attachment({
    this.fileName,
    this.fileType,
    this.fileUrl,
    this.resourceType,
  });

  Attachment.fromJson(Map<String, dynamic> json)
      : fileName = json['file_name'],
        fileType = json['file_type'],
        fileUrl = json['file_url'],
        resourceType = json['resource_type'];

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['file_name'] = fileName;
    data['file_type'] = fileType;
    data['file_url'] = fileUrl;
    data['resource_type'] = resourceType;
    return data;
  }

  Attachment copyWith({
    String? fileName,
    String? fileType,
    String? fileUrl,
    String? resourceType,
  }) {
    return Attachment(
      fileName: fileName ?? this.fileName,
      fileType: fileType ?? this.fileType,
      fileUrl: fileUrl ?? this.fileUrl,
      resourceType: resourceType ?? this.resourceType,
    );
  }

  @override
  List<Object?> get props => [fileName, fileType, fileUrl, resourceType];
}
