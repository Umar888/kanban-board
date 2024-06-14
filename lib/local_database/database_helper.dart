import 'dart:convert';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import '../modules/home/models/tasks_model.dart';
import '../modules/home/models/comments_model.dart'; // Import the CommentsModel class

class DatabaseHelper {
  static final DatabaseHelper _instance = DatabaseHelper._internal();
  factory DatabaseHelper() => _instance;
  DatabaseHelper._internal();
  Database? _database;

  // Getter for accessing the database instance
  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDatabase();
    return _database!;
  }

  // Method to initialize the database
  Future<Database> _initDatabase() async {
    String path = join(await getDatabasesPath(), 'tasks_database2.db');
    return await openDatabase(
      path,
      version: 5, // Updated the version to match the new schema
      onCreate: (db, version) async {
        await db.execute('''
          CREATE TABLE Tasks(
            id TEXT PRIMARY KEY,
            project_id TEXT,
            section_id TEXT,
            datetime TEXT,
            timezone TEXT,
            priority INTEGER,
            content TEXT,
            description TEXT,
            labels TEXT,
            is_completed INTEGER,
            comment_count INTEGER,
            creator_id TEXT,
            created_at TEXT,
            url TEXT
          )
        ''');
        await db.execute('''
          CREATE TABLE Comments(
            id TEXT PRIMARY KEY,
            task_id TEXT,
            content TEXT,
            posted_at TEXT,
            attachment TEXT,
            FOREIGN KEY (task_id) REFERENCES Tasks(id) ON DELETE CASCADE
          )
        ''');
      },
      onUpgrade: (db, oldVersion, newVersion) async {
        if (oldVersion < 4) {
          await db.execute('ALTER TABLE Tasks ADD COLUMN new_column_name TEXT');
        }
        if (oldVersion < 5) {
          await db.execute('''
            CREATE TABLE Comments(
              id TEXT PRIMARY KEY,
              task_id TEXT,
              content TEXT,
              posted_at TEXT,
              attachment TEXT,
              FOREIGN KEY (task_id) REFERENCES Tasks(id) ON DELETE CASCADE
            )
          ''');
        }
      },
    );
  }

  // Method to insert a new task into the database
  Future<int> insertTask(TaskModel task) async {
    final db = await database;

    Map<String, dynamic> taskMap = task.toJson();
    taskMap['labels'] = jsonEncode(task.labels); // Serialize the labels list
    taskMap['is_completed'] = task.isCompleted! ? 1 : 0; // Convert boolean to integer

    return await db.insert(
      'Tasks',
      taskMap,
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  // Method to retrieve all tasks from the database
  Future<List<TaskModel>> getTasks() async {
    final db = await database;
    final List<Map<String, dynamic>> maps = await db.query('Tasks');

    return List.generate(maps.length, (i) {
      Map<String, dynamic> taskMap = maps[i];
      List<String>? labels = List<String>.from(jsonDecode(taskMap['labels'] ?? '[]'));
      bool isCompleted = taskMap['is_completed'] == 1;

      return TaskModel(
        id: taskMap['id'],
        projectId: taskMap['project_id'],
        sectionId: taskMap['section_id'],
        priority: taskMap['priority'],
        content: taskMap['content'],
        description: taskMap['description'],
        datetime: taskMap['datetime'],
        timezone: taskMap['timezone'],
        labels: labels,
        isCompleted: isCompleted,
        commentCount: taskMap['comment_count'],
        creatorId: taskMap['creator_id'],
        createdAt: taskMap['created_at'],
        url: taskMap['url'],
      );
    });
  }

  Future<List<TaskModel>> getTasksByCreatedAt(DateTime date) async {
    final db = await database;

    // Format the date to match the 'created_at' format (YYYY-MM-DD)
    String formattedDate = date.toIso8601String().split('T').first;

    // Fetch tasks where the 'created_at' date matches the given date
    final List<Map<String, dynamic>> maps = await db.query(
      'Tasks',
      where: "created_at LIKE ?",
      whereArgs: ['$formattedDate%'],
    );

    return List.generate(maps.length, (i) {
      Map<String, dynamic> taskMap = maps[i];
      List<String>? labels = List<String>.from(jsonDecode(taskMap['labels'] ?? '[]'));
      bool isCompleted = taskMap['is_completed'] == 1;

      return TaskModel(
        id: taskMap['id'],
        projectId: taskMap['project_id'],
        sectionId: taskMap['section_id'],
        priority: taskMap['priority'],
        content: taskMap['content'],
        description: taskMap['description'],
        datetime: taskMap['datetime'],
        timezone: taskMap['timezone'],
        labels: labels,
        isCompleted: isCompleted,
        commentCount: taskMap['comment_count'],
        creatorId: taskMap['creator_id'],
        createdAt: taskMap['created_at'],
        url: taskMap['url'],
      );
    });
  }

  // Method to update an existing task in the database
  Future<int> updateTask(TaskModel task) async {
    final db = await database;

    Map<String, dynamic> taskMap = task.toJson();
    taskMap['labels'] = jsonEncode(task.labels); // Serialize the labels list
    taskMap['is_completed'] = task.isCompleted! ? 1 : 0; // Convert boolean to integer

    return await db.update(
      'Tasks',
      taskMap,
      where: 'id = ?',
      whereArgs: [task.id],
    );
  }

  // Method to delete all tasks from the database
  Future<int> deleteAllTasks() async {
    final db = await database;
    return await db.delete('Tasks');
  }

  Future<int> updateTaskLabels(String id, List<String> labels) async {
    final db = await database;

    String serializedLabels = jsonEncode(labels);

    return await db.update(
      'Tasks',
      {'labels': serializedLabels},
      where: 'id = ?',
      whereArgs: [id],
    );
  }

  // Method to delete a specific task from the database by its ID
  Future<int> deleteTask(String id) async {
    final db = await database;
    return await db.delete(
      'Tasks',
      where: 'id = ?',
      whereArgs: [id],
    );
  }

  // Method to insert a new comment into the database
  Future<int> insertComment(CommentsModel comment) async {
    final db = await database;

    Map<String, dynamic> commentMap = comment.toJson();
    if (comment.attachment != null) {
      commentMap['attachment'] = jsonEncode(comment.attachment!.toJson());
    }

    return await db.insert(
      'Comments',
      commentMap,
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  // Method to retrieve all comments for a specific task from the database
  Future<List<CommentsModel>> getComments(String taskId) async {
    final db = await database;
    final List<Map<String, dynamic>> maps = await db.query(
      'Comments',
      where: 'task_id = ?',
      whereArgs: [taskId],
    );

    return List.generate(maps.length, (i) {
      Map<String, dynamic> commentMap = maps[i];
      return CommentsModel.fromJson(commentMap);
    });
  }

  // Method to update an existing comment in the database
  Future<int> updateComment(CommentsModel comment) async {
    final db = await database;

    Map<String, dynamic> commentMap = comment.toJson();
    if (comment.attachment != null) {
      commentMap['attachment'] = jsonEncode(comment.attachment!.toJson());
    }

    return await db.update(
      'Comments',
      commentMap,
      where: 'id = ?',
      whereArgs: [comment.id],
    );
  }

  // Method to delete a specific comment from the database by its ID
  Future<int> deleteComment(String id) async {
    final db = await database;
    return await db.delete(
      'Comments',
      where: 'id = ?',
      whereArgs: [id],
    );
  }
  // Method to delete a specific comment from the database by its  task ID
  Future<int> deleteCommentByTaskId(String id) async {
    final db = await database;
    return await db.delete(
      'Comments',
      where: 'task_id = ?',
      whereArgs: [id],
    );
  }
}
