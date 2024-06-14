part of 'home_bloc.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.updateSelectedTaskTag({required TasksTags tasksTags}) = _UpdateSelectedTaskTag;
  const factory HomeEvent.removeSelectedTaskTag({required int index}) = _RemoveSelectedTaskTag;
  const factory HomeEvent.updateSelectedTaskPriority({required TasksPriority taskPriority}) = _UpdateSelectedTaskPriority;
  const factory HomeEvent.updateSelectedTaskStatus({required TasksStatus tasksStatus}) = _UpdateSelectedTaskStatus;
  const factory HomeEvent.addNewTask({required String dueDate,required String content, required String description, required VoidCallback? Function() onComplete}) = _AddNewTask;
  const factory HomeEvent.updateFullTask({required String dueDate,required String content, required String taskId,required String description, required VoidCallback? Function() onComplete}) = _AddFullTask;
  const factory HomeEvent.addNewComment({required String taskId,required String content, required VoidCallback? Function() onComplete}) = _AddNewComment;
  const factory HomeEvent.updateComment({required String taskId,required String commentId,required String content, required VoidCallback? Function() onComplete}) = _Updateomment;
  const factory HomeEvent.fetchAllComments({required String taskId, required bool isSyncing,
    required InternetState internetState}) = _FetchAllComments;
  const factory HomeEvent.fetchAllTasks({
    required bool requiredReload,
    required InternetState internetState,
  }) = _FetchAllTasks;
  const factory HomeEvent.setPickedFileForComment(File? file) = _SetPickedFileForComment;
  const factory HomeEvent.syncData({required BuildContext context}) = _SyncData;
  const factory HomeEvent.syncDataInServer() = _SyncDataInServer;
  const factory HomeEvent.addCurrentTimeStampToAllTasksLocally({required int savedTime}) = _AddCurrentTimeStampToAllTasksLocally;
  const factory HomeEvent.updateCurrentHomeIndex({required int index}) = _UpdateCurrentHomeIndex;
  const factory HomeEvent.resetSelectItems() = _ResetSelectItems;
  const factory HomeEvent.updateFocusedDate({required DateTime focusedDate,required InternetState internetState}) = _UpdateFocusedDate;
  const factory HomeEvent.resetMessage() = _ResetMessage;
  const factory HomeEvent.updateSection({required String taskId, required String fromSectionId,  required String sectionId, required List<String> labels}) = _UpdateSection;
  const factory HomeEvent.updateTimer({required String taskId, required List<String> labels}) = _UpdateTimer;
  const factory HomeEvent.updateTimerState({required String taskId,  required List<String> labels}) = _UpdateTimerState;
  const factory HomeEvent.updateTimerLocally({required String taskId, required List<String> labels}) = _UpdateTimerLocally;
  const factory HomeEvent.updateTimerStateLocally({required String taskId,  required List<String> labels}) = _UpdateTimerStateLocally;
  const factory HomeEvent.completeTask({required String taskId, required List<String> labels}) = _CompleteTask;
  const factory HomeEvent.reopenTask({required String taskId, required List<String> labels}) = _ReopenTaskTask;
  const factory HomeEvent.startTask({required String taskId, required List<String> labels}) = _StartTask;
  const factory HomeEvent.deleteTask({required String taskId}) = _DeleteTask;
  const factory HomeEvent.deleteComment({required String commentId,required String taskId}) = _DeleteComment;
  const factory HomeEvent.sortByDateDescending(String id) = _SortByDateDescending;
  const factory HomeEvent.sortByNameDescending(String id) = _SortByNameDescending;
  const factory HomeEvent.sortByNameAscending(String id) = _SortByNameAscending;
  const factory HomeEvent.sortByDateAscending(String id) = _SortByDateAscending;
  const factory HomeEvent.sortByPriorityDescending(String id) = _SortByPriorityDescending;
  const factory HomeEvent.sortByPriorityAscending(String id) = _SortByPriorityAscending;
}