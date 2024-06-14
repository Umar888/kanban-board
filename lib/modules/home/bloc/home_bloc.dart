import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';
import 'package:kanban_board/modules/home/models/comments_model.dart';
import 'package:kanban_board/modules/home/models/tasks_model.dart';
import 'package:kanban_board/services/extensions/string_extension.dart';
import 'package:kanban_board/services/notifications.dart';

import '../../../constant/string_constants.dart';
import '../../../helpers/internet/internet_cubit.dart';
import '../../../local_database/database_helper.dart';
import '../../../multi_board_list.dart';
import '../../../single_board_list.dart';
import '../repository/home_repository.dart';
import 'package:timezone/timezone.dart' as tz;
import 'package:timezone/data/latest_all.dart' as tz;

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {

  HomeBloc() : super(HomeState.initial()) {
    HomeRepository homeRepository = HomeRepository();
    DatabaseHelper databaseHelper = DatabaseHelper();
    on<HomeEvent>((event, emit)  async {
      await event.map(
      updateSelectedTaskTag: (_) async {
      if(!state.selectedTaskTag.contains(_.tasksTags)) {
        emit(state.copyWith(
          selectedTaskTag: [...state.selectedTaskTag, _.tasksTags],
        ));
      }
      },
      sortByDateDescending: (_) async {
        List<TaskModel> allTasks = List.from(state.allTasksModel);

        List<TaskModel> filteredTasks = [];
        List<TaskModel> unfilteredTasks = [];
        for (TaskModel task in allTasks) {
          if ((task.labels??[]).first == _.id) {
            filteredTasks.add(task);
          } else {
            unfilteredTasks.add(task);
          }
        }

        filteredTasks.sort((a, b) {
          DateTime dateA = (a.createdAt??"").toDateTime();
          DateTime dateB = (b.createdAt??"").toDateTime();
          return dateB.compareTo(dateA);
        });

        emit(state.copyWith(allTasksModel: [...unfilteredTasks, ...filteredTasks]));
      },
      sortByDateAscending: (_) async {
        List<TaskModel> allTasks = List.from(state.allTasksModel);

        List<TaskModel> filteredTasks = [];
        List<TaskModel> unfilteredTasks = [];
        for (TaskModel task in allTasks) {
          if ((task.labels??[]).first == _.id) {
            filteredTasks.add(task);
          } else {
            unfilteredTasks.add(task);
          }
        }

        filteredTasks.sort((a, b) {
          DateTime dateA = (a.createdAt??"").toDateTime();
          DateTime dateB = (b.createdAt??"").toDateTime();
          return dateA.compareTo(dateB);
        });

        emit(state.copyWith(allTasksModel: [...unfilteredTasks, ...filteredTasks]));
      },
      sortByPriorityDescending: (_) async {
        List<TaskModel> allTasks = List.from(state.allTasksModel);

        List<TaskModel> filteredTasks = [];
        List<TaskModel> unfilteredTasks = [];
        for (TaskModel task in allTasks) {
          if ((task.labels??[]).first == _.id) {
            filteredTasks.add(task);
          } else {
            unfilteredTasks.add(task);
          }
        }

        filteredTasks.sort((a, b) {
          int priorityA = a.priority ?? 0;
          int priorityB = b.priority ?? 0;
          return priorityB.compareTo(priorityA); // Sort by priority descending
        });

        emit(state.copyWith(allTasksModel: [...unfilteredTasks, ...filteredTasks]));
      },
      sortByPriorityAscending: (_) async {
        List<TaskModel> allTasks = List.from(state.allTasksModel);

        List<TaskModel> filteredTasks = [];
        List<TaskModel> unfilteredTasks = [];
        for (TaskModel task in allTasks) {
          if ((task.labels??[]).first == _.id) {
            filteredTasks.add(task);
          } else {
            unfilteredTasks.add(task);
          }
        }

        filteredTasks.sort((a, b) {
          int priorityA = a.priority ?? 0;
          int priorityB = b.priority ?? 0;
          return priorityA.compareTo(priorityB); // Sort by priority descending
        });

        emit(state.copyWith(allTasksModel: [...unfilteredTasks, ...filteredTasks]));
      },
      sortByNameAscending: (_) async {
        List<TaskModel> allTasks = List.from(state.allTasksModel);

        List<TaskModel> filteredTasks = [];
        List<TaskModel> unfilteredTasks = [];
        for (TaskModel task in allTasks) {
          if ((task.labels??[]).first == _.id) {
            filteredTasks.add(task);
          } else {
            unfilteredTasks.add(task);
          }
        }

        filteredTasks.sort((a, b) {
          return (a.content ?? "").toLowerCase().compareTo((b.content ?? "").toLowerCase());
        });

        emit(state.copyWith(allTasksModel: [...unfilteredTasks, ...filteredTasks]));
      },
      sortByNameDescending: (_) async {
        List<TaskModel> allTasks = List.from(state.allTasksModel);

        List<TaskModel> filteredTasks = [];
        List<TaskModel> unfilteredTasks = [];
        for (TaskModel task in allTasks) {
          if ((task.labels??[]).first == _.id) {
            filteredTasks.add(task);
          } else {
            unfilteredTasks.add(task);
          }
        }

        filteredTasks.sort((a, b) {
          return (b.content ?? "").toLowerCase().compareTo((a.content ?? "").toLowerCase());
        });

        emit(state.copyWith(allTasksModel: [...unfilteredTasks, ...filteredTasks]));
      },
      removeSelectedTaskTag: (_) async {
        List<TasksTags> selectedTaskTag = List.from(state.selectedTaskTag);
        selectedTaskTag.removeAt(_.index);
        emit(state.copyWith(selectedTaskTag: selectedTaskTag));
      },
      updateSelectedTaskPriority: (_) async {
      emit(state.copyWith(
        selectedTaskPriority: _.taskPriority,
      ));
      },
      resetSelectItems: (_) async {
      emit(state.copyWith(
        selectedTaskPriority: TasksPriority.normalPriority,
        addHomeLoadingBlocStatus: AddHomeLoadingBlocStatus.isUnknown,
        selectedTasksStatus: TasksStatus.todo,
        selectedTaskTag: [],
      ));
      },
      resetMessage: (_) async {
      emit(state.copyWith(
        message: "",
      ));
      },
      updateFocusedDate: (_) async {
        emit(state.copyWith(
          focusedDate: _.focusedDate,
          taskManagerLoadingBlocStatus: TaskManagerLoadingBlocStatus.isLoading
        ));
        if(_.internetState is InternetConnected){
          List<TaskModel> allTasksModel = await homeRepository.fetchAllTasksByDate(date: DateFormat("MMM dd yyyy").format(_.focusedDate));
          if(allTasksModel.isNotEmpty){
            emit(state.copyWith(
                taskManagerLoadingBlocStatus: TaskManagerLoadingBlocStatus.isSuccess,
                allTasksModel: allTasksModel
            ));
          }
          else{
            List<TaskModel> allTasksModelLocal = await databaseHelper.getTasksByCreatedAt(_.focusedDate);
            emit(state.copyWith(
                taskManagerLoadingBlocStatus: TaskManagerLoadingBlocStatus.isSuccess,
                allTasksModel: allTasksModelLocal
            ));
          }
        }
        else{
          List<TaskModel> allTasksModelLocal = await databaseHelper.getTasksByCreatedAt(_.focusedDate);
          emit(state.copyWith(
              taskManagerLoadingBlocStatus: TaskManagerLoadingBlocStatus.isSuccess,
              allTasksModel: allTasksModelLocal
          ));
        }
      },
      updateCurrentHomeIndex: (_) async {
      emit(state.copyWith(
        currentHomeIndex: _.index,
      ));
      },
      updateTimerLocally: (_) async {
        await databaseHelper.updateTaskLabels(_.taskId, _.labels);
      },
      updateTimerStateLocally: (_) async {
        await databaseHelper.updateTaskLabels(_.taskId, _.labels);
      },

          ///-----------------------------------////

        updateSection: (_) async {
          TaskModel updateTask = await homeRepository.updateSectionOfTask(
            sectionId: _.sectionId.toNormalString().capitalizeEachWord(),
              fromSectionId: _.fromSectionId.toNormalString().capitalizeEachWord(),
            labels: _.labels,
            taskId: _.taskId
          );
          if (updateTask.id != null && updateTask.id != "error") {
            int rowsAffected = await databaseHelper.updateTask(updateTask);
            if (rowsAffected > 0) {
              List<TaskModel> tasksModel = await databaseHelper.getTasks();
              emit(state.copyWith(
                allTasksModel: tasksModel,
              ));
            }
          }

        },
        updateTimer: (_) async {


          int rowsAffected = await databaseHelper.updateTaskLabels(_.taskId, _.labels);
          if(rowsAffected > 0){
            List<TaskModel> tasksModel = await databaseHelper.getTasks();
            emit(state.copyWith(
              allTasksModel: tasksModel,
            ));
            await Future<void>.microtask(() async {
              await homeRepository.updateTimer(
                  labels: _.labels,
                  taskId: _.taskId
              );
            });

          }

        },
        updateTimerState: (_) async {
          int rowsAffected = await databaseHelper.updateTaskLabels(_.taskId, _.labels);
          if(rowsAffected > 0){
            List<TaskModel> tasksModel = await databaseHelper.getTasks();
            emit(state.copyWith(
              allTasksModel: tasksModel,
            ));
            await Future<void>.microtask(() async {
              await homeRepository.updateTimerState(
                labels: _.labels,
                taskId: _.taskId,
              );
            });
          }
        },
        completeTask: (_) async {
          List<TaskModel>? allTaskUpdatedModel = state.allTasksModel.map((repo) {
            return repo.copyWith(isUpdating: repo == state.allTasksModel.firstWhere((e) => e.id == _.taskId));
          }).toList();
          emit(state.copyWith(
              allTasksModel: allTaskUpdatedModel
          ));
          TaskModel updateTask = await homeRepository.completeTask(
            labels: _.labels,
            taskId: _.taskId
          );
          if (updateTask.id != null && updateTask.id != "error") {
            int rowsAffected = await databaseHelper.updateTask(updateTask);
            if (rowsAffected > 0) {
              List<TaskModel> tasksModel = await databaseHelper.getTasks();
              emit(state.copyWith(
                allTasksModel: tasksModel,
              ));
            }
          }

        },
        startTask: (_) async {
          List<TaskModel>? allTaskUpdatedModel = state.allTasksModel.map((repo) {
            return repo.copyWith(isUpdating: repo == state.allTasksModel.firstWhere((e) => e.id == _.taskId));
          }).toList();
          emit(state.copyWith(
              allTasksModel: allTaskUpdatedModel
          ));
          TaskModel updateTask = await homeRepository.startTask(
            labels: _.labels,
            taskId: _.taskId
          );
          if (updateTask.id != null && updateTask.id != "error") {
            int rowsAffected = await databaseHelper.updateTask(updateTask);
            if (rowsAffected > 0) {
              List<TaskModel> tasksModel = await databaseHelper.getTasks();
              emit(state.copyWith(
                allTasksModel: tasksModel,
              ));
            }
          }

        },
        reopenTask: (_) async {
          List<TaskModel>? allTaskUpdatedModel = state.allTasksModel.map((repo) {
            return repo.copyWith(isUpdating: repo == state.allTasksModel.firstWhere((e) => e.id == _.taskId));
          }).toList();
          emit(state.copyWith(
              allTasksModel: allTaskUpdatedModel
          ));
          TaskModel updateTask = await homeRepository.reopenTask(
            labels: _.labels,
            taskId: _.taskId
          );
          if (updateTask.id != null && updateTask.id != "error") {
            int rowsAffected = await databaseHelper.updateTask(updateTask);
            if (rowsAffected > 0) {
              List<TaskModel> tasksModel = await databaseHelper.getTasks();
              emit(state.copyWith(
                allTasksModel: tasksModel,
              ));
            }
          }

        },
        deleteTask: (_) async {
          List<TaskModel>? allTaskUpdatedModel = state.allTasksModel.map((repo) {
            return repo.copyWith(isUpdating: repo == state.allTasksModel.firstWhere((e) => e.id == _.taskId));
          }).toList();
          emit(state.copyWith(
              allTasksModel: allTaskUpdatedModel
          ));
          bool deleteTask = await homeRepository.deleteTasks(
            taskId: _.taskId
          );
          if(deleteTask){
            await NotificationPlugin().cancelNotification(int.parse(( _.taskId).substring(( _.taskId).length -3)));

            List<TaskModel> tasksModel1 = await databaseHelper.getTasks();
            int res = await databaseHelper.deleteTask(_.taskId);
            if(res == 1){
              List<TaskModel> tasksModel = await databaseHelper.getTasks();
              emit(state.copyWith(
                  allTasksModel: tasksModel
              ));
            }
          }

        },
        deleteComment: (_) async {
          List<CommentsModel>? allCommentsUpdatedModel = state.commentModel.map((repo) {
            return repo.copyWith(isUpdating: repo == state.commentModel.firstWhere((e) => e.id == _.commentId));
          }).toList();
          emit(state.copyWith(
              commentModel: allCommentsUpdatedModel
          ));
          bool deleteComment = await homeRepository.deleteComment(
            commentId: _.commentId
          );
          if(deleteComment){
            int res = await databaseHelper.deleteComment(_.commentId);
            if(res == 1){
              List<CommentsModel> tasksModel = await databaseHelper.getComments(_.taskId);
              emit(state.copyWith(
                 commentModel: tasksModel
              ));
            }
          }

        },
        fetchAllTasks: (_) async {
          if(_.requiredReload){
            emit(state.copyWith(
              homeLoadingBlocStatus: HomeLoadingBlocStatus.isLoading,
            ));
          }
          if(_.internetState is InternetConnected){
            List<TaskModel> allTasksModel = await homeRepository.fetchAllTasks();
            if(allTasksModel.isNotEmpty){
              await databaseHelper.deleteAllTasks();
              for (TaskModel task in allTasksModel) {
                await databaseHelper.insertTask(task);
              }
              emit(state.copyWith(
                  homeLoadingBlocStatus: HomeLoadingBlocStatus.isSuccess,
                  allTasksModel: allTasksModel
              ));
            }
            else{
              List<TaskModel> allTasksModelLocal = await databaseHelper.getTasks();
              emit(state.copyWith(
                  homeLoadingBlocStatus: HomeLoadingBlocStatus.isSuccess,
                  allTasksModel: allTasksModelLocal
              ));
            }
          }
          else{
            List<TaskModel> allTasksModelLocal = await databaseHelper.getTasks();
            emit(state.copyWith(
                homeLoadingBlocStatus: HomeLoadingBlocStatus.isSuccess,
                allTasksModel: allTasksModelLocal
            ));
          }
        },
        addCurrentTimeStampToAllTasksLocally: (_) async {
          List<TaskModel> allTasksModel = await databaseHelper.getTasks();
          if(allTasksModel.isNotEmpty){
            for (TaskModel task in allTasksModel) {
              List<String> taskLabels = task.labels??[];
              if(taskLabels.contains(inProgressStatusId)){
                List<String> labels = taskLabels.where((e) => e.startsWith("ztimer-state")).toList();
                if(taskLabels[taskLabels.length - 2].replaceAll("ztimer-", "").isNumeric()){
                  int time = int.parse(taskLabels[taskLabels.length - 2].replaceAll("ztimer-", ""));
                  int dateTime = _.savedTime;
                  if(labels.isNotEmpty){
                    DateTime time1 = DateTime.now();
                    DateTime time2 = DateTime.fromMillisecondsSinceEpoch(dateTime);
                    int differenceInSeconds = (time1.difference(time2).inMilliseconds / 1000).round();
                    String label = labels.first;
                    if(label.contains("play")){
                      taskLabels.removeWhere((e) => e.startsWith("ztimer-"));
                      taskLabels.add("ztimer-${(differenceInSeconds+time).toString()}");
                      taskLabels.add("ztimer-state-play");
                      taskLabels.sort();
                    }
                    add(HomeEvent.updateTimer(taskId: task.id ?? "",labels: taskLabels));
                  }
                }
              }
            }
          }
        },
        fetchAllComments: (_) async {
          if(!_.isSyncing){
            emit(state.copyWith(
                homeLoadingBlocStatus: HomeLoadingBlocStatus.isLoading,
                commentModel:[]
            ));
          }
          if(_.internetState is InternetConnected){
            List<CommentsModel> allCommentsModel = await homeRepository.fetchAllComments(taskId: _.taskId);
            emit(state.copyWith(
                homeLoadingBlocStatus: HomeLoadingBlocStatus.isSuccess,
                commentModel: allCommentsModel
            ));
            if(allCommentsModel.isNotEmpty){
              await databaseHelper.deleteCommentByTaskId(_.taskId);
              for (CommentsModel comment in allCommentsModel) {
                await databaseHelper.insertComment(comment);
              }
            }
            else{
              List<CommentsModel> allCommentsModel = await databaseHelper.getComments(_.taskId);
              emit(state.copyWith(
                  homeLoadingBlocStatus: HomeLoadingBlocStatus.isSuccess,
                  commentModel: allCommentsModel
              ));
            }
          }
          else{
            List<CommentsModel> allCommentsModel = await databaseHelper.getComments(_.taskId);
            emit(state.copyWith(
                homeLoadingBlocStatus: HomeLoadingBlocStatus.isSuccess,
                commentModel: allCommentsModel
            ));
          }

        },
        syncData: (_) async {
          List<TaskModel> allTasksModel = await homeRepository.fetchAllTasks();
          if(allTasksModel.isNotEmpty){
            await databaseHelper.deleteAllTasks();
            for (TaskModel task in allTasksModel) {
              await databaseHelper.insertTask(task);
              add(HomeEvent.fetchAllComments(taskId: task.id??"",isSyncing: true,internetState: _.context.read<InternetCubit>().state));
            }
            emit(state.copyWith(
              allTasksModel: allTasksModel
            ));
          }
        },
        syncDataInServer: (_) async {
          List<TaskModel> allTasksModel = await databaseHelper.getTasks();
          if(allTasksModel.isNotEmpty){
            for(TaskModel task in allTasksModel){
              add(HomeEvent.updateTimer(taskId: task.id??"", labels: task.labels??[]));
            }
          }
        },
        setPickedFileForComment: (event) async {
          emit(state.copyWith(
            pickedFileForComment: event.file,
          ));
        },
        addNewTask: (event) async {
          emit(state.copyWith(
            addHomeLoadingBlocStatus: AddHomeLoadingBlocStatus.isLoading,
          ));

          try {
            TaskModel addNewTaskModel = await homeRepository.addNewTask(
              content: event.content,
              description: event.description,
              dueDate: event.dueDate,
              priority: state.selectedTaskPriority.index + 1,
              sectionId: state.selectedTasksStatus.name.toNormalString().capitalizeEachWord(),
              labels: state.selectedTaskTag.map((e) => e.name.toNormalString().capitalizeEachWord()).toList(),
            );



            if (addNewTaskModel.id != null && addNewTaskModel.id != "error") {
              tz.initializeTimeZones();

              tz.setLocalLocation(tz.getLocation(addNewTaskModel.timezone??""));

              await NotificationPlugin().scheduleNotification(tz.local, (addNewTaskModel.datetime??"").toDateTime(), "Task Completed", "Deadline of task ${addNewTaskModel.content??""} reached", int.parse((addNewTaskModel.id??"").substring((addNewTaskModel.id??"").length -3)));
              int rowsAffected = await databaseHelper.insertTask(addNewTaskModel);
              if (rowsAffected > 0) {
                List<TaskModel> tasksModel = await databaseHelper.getTasks();
                emit(state.copyWith(
                  allTasksModel: tasksModel,
                  addHomeLoadingBlocStatus: AddHomeLoadingBlocStatus.isSuccess,
                  message: "Task added successfully",
                ));
                event.onComplete();
              } else {
                emit(state.copyWith(
                  addHomeLoadingBlocStatus: AddHomeLoadingBlocStatus.isFail,
                  message: "Failed to add new task to the local database",
                ));
                event.onComplete();
              }
            } else {
              emit(state.copyWith(
                addHomeLoadingBlocStatus: AddHomeLoadingBlocStatus.isFail,
                message: "Failed to add new task. Check internet connectivity",
              ));
              event.onComplete();
            }
          } catch (e) {
            print(e.toString());
            emit(state.copyWith(
              addHomeLoadingBlocStatus: AddHomeLoadingBlocStatus.isFail,
              message: "An error occurred: ${e.toString()}",
            ));
            event.onComplete();
          }
        },
        updateFullTask: (event) async {
          emit(state.copyWith(
            addHomeLoadingBlocStatus: AddHomeLoadingBlocStatus.isLoading,
          ));

          try {
            TaskModel addNewTaskModel = await homeRepository.updateTask(
              taskId: event.taskId,
              content: event.content,
              description: event.description,
              dueDate: event.dueDate,
              priority: state.selectedTaskPriority.index + 1,
              sectionId: state.selectedTasksStatus.name.toNormalString().capitalizeEachWord(),
              labels: state.selectedTaskTag.map((e) => e.name.toNormalString().capitalizeEachWord()).toList(),
            );

            if (addNewTaskModel.id != null && addNewTaskModel.id != "error") {
              await NotificationPlugin().cancelNotification(int.parse((addNewTaskModel.id??"").substring((addNewTaskModel.id??"").length -3)));
              tz.initializeTimeZones();

              tz.setLocalLocation(tz.getLocation(addNewTaskModel.timezone??""));

              await NotificationPlugin().scheduleNotification(tz.local, (addNewTaskModel.datetime??"").toDateTime(), "Task Completed", "Deadline of task ${addNewTaskModel.content??""} reached", int.parse((addNewTaskModel.id??"").substring((addNewTaskModel.id??"").length -3)));

              int rowsAffected = await databaseHelper.updateTask(addNewTaskModel);
              if (rowsAffected > 0) {
                List<TaskModel> tasksModel = await databaseHelper.getTasks();
                emit(state.copyWith(
                  allTasksModel: tasksModel,
                  addHomeLoadingBlocStatus: AddHomeLoadingBlocStatus.isSuccess,
                  message: "Task updated successfully",
                ));
                event.onComplete();
              } else {
                emit(state.copyWith(
                  addHomeLoadingBlocStatus: AddHomeLoadingBlocStatus.isFail,
                  message: "Failed to update task in local database",
                ));
                event.onComplete();
              }
            } else {
              emit(state.copyWith(
                addHomeLoadingBlocStatus: AddHomeLoadingBlocStatus.isFail,
                message: "Failed to update task. Check internet connectivity",
              ));
              event.onComplete();
            }
          } catch (e) {
            emit(state.copyWith(
              addHomeLoadingBlocStatus: AddHomeLoadingBlocStatus.isFail,
              message: "An error occurred: ${e.toString()}",
            ));
            event.onComplete();
          }
        },
        addNewComment: (event) async {
          emit(state.copyWith(
            addHomeLoadingBlocStatus: AddHomeLoadingBlocStatus.isLoading,
          ));

          try {
            CommentsModel addCommentModel = await homeRepository.addNewComment(
              content: event.content,
              taskId: event.taskId,
              attachment: state.pickedFileForComment,
            );

            if (addCommentModel.id != null && addCommentModel.id != "error") {
              int rowsAffected = await databaseHelper.insertComment(addCommentModel);
              if (rowsAffected > 0) {
                List<CommentsModel> commentsModel = await databaseHelper.getComments(event.taskId);
                emit(state.copyWith(
                  commentModel: commentsModel,
                  addHomeLoadingBlocStatus: AddHomeLoadingBlocStatus.isSuccess,
                  message: "Comment added successfully",
                ));
                event.onComplete();
              } else {
                emit(state.copyWith(
                  addHomeLoadingBlocStatus: AddHomeLoadingBlocStatus.isFail,
                  message: "Failed to add new comment to the local database",
                ));
                event.onComplete();
              }
            } else {
              emit(state.copyWith(
                addHomeLoadingBlocStatus: AddHomeLoadingBlocStatus.isFail,
                message: "Failed to add new comment. Check internet connectivity",
              ));
              event.onComplete();
            }
          } catch (e) {
            emit(state.copyWith(
              addHomeLoadingBlocStatus: AddHomeLoadingBlocStatus.isFail,
              message: "An error occurred: ${e.toString()}",
            ));
            event.onComplete();
          }
        },
        updateComment: (event) async {
          emit(state.copyWith(
            addHomeLoadingBlocStatus: AddHomeLoadingBlocStatus.isLoading,
          ));

          try {
            CommentsModel addCommentModel = await homeRepository.updateComment(
              content: event.content,
              commentId: event.commentId,
            );

            if (addCommentModel.id != null && addCommentModel.id != "error") {
              int rowsAffected = await databaseHelper.updateComment(addCommentModel);
              if (rowsAffected > 0) {
                List<CommentsModel> commentsModel = await databaseHelper.getComments(event.taskId);
                emit(state.copyWith(
                  commentModel: commentsModel,
                  addHomeLoadingBlocStatus: AddHomeLoadingBlocStatus.isSuccess,
                  message: "Comment updated successfully",
                ));
                event.onComplete();
              } else {
                emit(state.copyWith(
                  addHomeLoadingBlocStatus: AddHomeLoadingBlocStatus.isFail,
                  message: "Failed to update comment in local database",
                ));
                event.onComplete();
              }
            } else {
              emit(state.copyWith(
                addHomeLoadingBlocStatus: AddHomeLoadingBlocStatus.isFail,
                message: "Failed to update comment. Check internet connectivity",
              ));
              event.onComplete();
            }
          } catch (e) {
            emit(state.copyWith(
              addHomeLoadingBlocStatus: AddHomeLoadingBlocStatus.isFail,
              message: "An error occurred: ${e.toString()}",
            ));
            event.onComplete();
          }
        },
        updateSelectedTaskStatus: (_) async {
          emit(state.copyWith(
            selectedTasksStatus: _.tasksStatus,
          ));
        }
      );
    });
  }


}