// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TasksTags tasksTags) updateSelectedTaskTag,
    required TResult Function(int index) removeSelectedTaskTag,
    required TResult Function(TasksPriority taskPriority)
        updateSelectedTaskPriority,
    required TResult Function(TasksStatus tasksStatus) updateSelectedTaskStatus,
    required TResult Function(
            AppLocalizations appLocalization,
            String dueDate,
            String content,
            String description,
            void Function()? Function() onComplete)
        addNewTask,
    required TResult Function(
            AppLocalizations appLocalization,
            String dueDate,
            String content,
            String taskId,
            String description,
            void Function()? Function() onComplete)
        updateFullTask,
    required TResult Function(AppLocalizations appLocalization, String taskId,
            String content, void Function()? Function() onComplete)
        addNewComment,
    required TResult Function(
            AppLocalizations appLocalization,
            String taskId,
            String commentId,
            String content,
            void Function()? Function() onComplete)
        updateComment,
    required TResult Function(
            String taskId, bool isSyncing, InternetState internetState)
        fetchAllComments,
    required TResult Function(bool requiredReload, InternetState internetState)
        fetchAllTasks,
    required TResult Function(File? file) setPickedFileForComment,
    required TResult Function(BuildContext context) syncData,
    required TResult Function() syncDataInServer,
    required TResult Function(int savedTime)
        addCurrentTimeStampToAllTasksLocally,
    required TResult Function(int index) updateCurrentHomeIndex,
    required TResult Function() resetSelectItems,
    required TResult Function(DateTime focusedDate, InternetState internetState)
        updateFocusedDate,
    required TResult Function() resetMessage,
    required TResult Function(String taskId, String fromSectionId,
            String sectionId, List<String> labels)
        updateSection,
    required TResult Function(String taskId, List<String> labels) updateTimer,
    required TResult Function(String taskId, List<String> labels)
        updateTimerState,
    required TResult Function(String taskId, List<String> labels)
        updateTimerLocally,
    required TResult Function(String taskId, List<String> labels)
        updateTimerStateLocally,
    required TResult Function(String taskId, List<String> labels) completeTask,
    required TResult Function(String taskId, List<String> labels) reopenTask,
    required TResult Function(String taskId, List<String> labels) startTask,
    required TResult Function(String taskId) deleteTask,
    required TResult Function(AppLocalizations appLocalization) deleteAllTask,
    required TResult Function(String commentId, String taskId) deleteComment,
    required TResult Function(String id) sortByDateDescending,
    required TResult Function(String id) sortByNameDescending,
    required TResult Function(String id) sortByNameAscending,
    required TResult Function(String id) sortByDateAscending,
    required TResult Function(String id) sortByPriorityDescending,
    required TResult Function(String id) sortByPriorityAscending,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TasksTags tasksTags)? updateSelectedTaskTag,
    TResult? Function(int index)? removeSelectedTaskTag,
    TResult? Function(TasksPriority taskPriority)? updateSelectedTaskPriority,
    TResult? Function(TasksStatus tasksStatus)? updateSelectedTaskStatus,
    TResult? Function(
            AppLocalizations appLocalization,
            String dueDate,
            String content,
            String description,
            void Function()? Function() onComplete)?
        addNewTask,
    TResult? Function(
            AppLocalizations appLocalization,
            String dueDate,
            String content,
            String taskId,
            String description,
            void Function()? Function() onComplete)?
        updateFullTask,
    TResult? Function(AppLocalizations appLocalization, String taskId,
            String content, void Function()? Function() onComplete)?
        addNewComment,
    TResult? Function(
            AppLocalizations appLocalization,
            String taskId,
            String commentId,
            String content,
            void Function()? Function() onComplete)?
        updateComment,
    TResult? Function(
            String taskId, bool isSyncing, InternetState internetState)?
        fetchAllComments,
    TResult? Function(bool requiredReload, InternetState internetState)?
        fetchAllTasks,
    TResult? Function(File? file)? setPickedFileForComment,
    TResult? Function(BuildContext context)? syncData,
    TResult? Function()? syncDataInServer,
    TResult? Function(int savedTime)? addCurrentTimeStampToAllTasksLocally,
    TResult? Function(int index)? updateCurrentHomeIndex,
    TResult? Function()? resetSelectItems,
    TResult? Function(DateTime focusedDate, InternetState internetState)?
        updateFocusedDate,
    TResult? Function()? resetMessage,
    TResult? Function(String taskId, String fromSectionId, String sectionId,
            List<String> labels)?
        updateSection,
    TResult? Function(String taskId, List<String> labels)? updateTimer,
    TResult? Function(String taskId, List<String> labels)? updateTimerState,
    TResult? Function(String taskId, List<String> labels)? updateTimerLocally,
    TResult? Function(String taskId, List<String> labels)?
        updateTimerStateLocally,
    TResult? Function(String taskId, List<String> labels)? completeTask,
    TResult? Function(String taskId, List<String> labels)? reopenTask,
    TResult? Function(String taskId, List<String> labels)? startTask,
    TResult? Function(String taskId)? deleteTask,
    TResult? Function(AppLocalizations appLocalization)? deleteAllTask,
    TResult? Function(String commentId, String taskId)? deleteComment,
    TResult? Function(String id)? sortByDateDescending,
    TResult? Function(String id)? sortByNameDescending,
    TResult? Function(String id)? sortByNameAscending,
    TResult? Function(String id)? sortByDateAscending,
    TResult? Function(String id)? sortByPriorityDescending,
    TResult? Function(String id)? sortByPriorityAscending,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TasksTags tasksTags)? updateSelectedTaskTag,
    TResult Function(int index)? removeSelectedTaskTag,
    TResult Function(TasksPriority taskPriority)? updateSelectedTaskPriority,
    TResult Function(TasksStatus tasksStatus)? updateSelectedTaskStatus,
    TResult Function(
            AppLocalizations appLocalization,
            String dueDate,
            String content,
            String description,
            void Function()? Function() onComplete)?
        addNewTask,
    TResult Function(
            AppLocalizations appLocalization,
            String dueDate,
            String content,
            String taskId,
            String description,
            void Function()? Function() onComplete)?
        updateFullTask,
    TResult Function(AppLocalizations appLocalization, String taskId,
            String content, void Function()? Function() onComplete)?
        addNewComment,
    TResult Function(
            AppLocalizations appLocalization,
            String taskId,
            String commentId,
            String content,
            void Function()? Function() onComplete)?
        updateComment,
    TResult Function(
            String taskId, bool isSyncing, InternetState internetState)?
        fetchAllComments,
    TResult Function(bool requiredReload, InternetState internetState)?
        fetchAllTasks,
    TResult Function(File? file)? setPickedFileForComment,
    TResult Function(BuildContext context)? syncData,
    TResult Function()? syncDataInServer,
    TResult Function(int savedTime)? addCurrentTimeStampToAllTasksLocally,
    TResult Function(int index)? updateCurrentHomeIndex,
    TResult Function()? resetSelectItems,
    TResult Function(DateTime focusedDate, InternetState internetState)?
        updateFocusedDate,
    TResult Function()? resetMessage,
    TResult Function(String taskId, String fromSectionId, String sectionId,
            List<String> labels)?
        updateSection,
    TResult Function(String taskId, List<String> labels)? updateTimer,
    TResult Function(String taskId, List<String> labels)? updateTimerState,
    TResult Function(String taskId, List<String> labels)? updateTimerLocally,
    TResult Function(String taskId, List<String> labels)?
        updateTimerStateLocally,
    TResult Function(String taskId, List<String> labels)? completeTask,
    TResult Function(String taskId, List<String> labels)? reopenTask,
    TResult Function(String taskId, List<String> labels)? startTask,
    TResult Function(String taskId)? deleteTask,
    TResult Function(AppLocalizations appLocalization)? deleteAllTask,
    TResult Function(String commentId, String taskId)? deleteComment,
    TResult Function(String id)? sortByDateDescending,
    TResult Function(String id)? sortByNameDescending,
    TResult Function(String id)? sortByNameAscending,
    TResult Function(String id)? sortByDateAscending,
    TResult Function(String id)? sortByPriorityDescending,
    TResult Function(String id)? sortByPriorityAscending,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateSelectedTaskTag value)
        updateSelectedTaskTag,
    required TResult Function(_RemoveSelectedTaskTag value)
        removeSelectedTaskTag,
    required TResult Function(_UpdateSelectedTaskPriority value)
        updateSelectedTaskPriority,
    required TResult Function(_UpdateSelectedTaskStatus value)
        updateSelectedTaskStatus,
    required TResult Function(_AddNewTask value) addNewTask,
    required TResult Function(_AddFullTask value) updateFullTask,
    required TResult Function(_AddNewComment value) addNewComment,
    required TResult Function(_Updateomment value) updateComment,
    required TResult Function(_FetchAllComments value) fetchAllComments,
    required TResult Function(_FetchAllTasks value) fetchAllTasks,
    required TResult Function(_SetPickedFileForComment value)
        setPickedFileForComment,
    required TResult Function(_SyncData value) syncData,
    required TResult Function(_SyncDataInServer value) syncDataInServer,
    required TResult Function(_AddCurrentTimeStampToAllTasksLocally value)
        addCurrentTimeStampToAllTasksLocally,
    required TResult Function(_UpdateCurrentHomeIndex value)
        updateCurrentHomeIndex,
    required TResult Function(_ResetSelectItems value) resetSelectItems,
    required TResult Function(_UpdateFocusedDate value) updateFocusedDate,
    required TResult Function(_ResetMessage value) resetMessage,
    required TResult Function(_UpdateSection value) updateSection,
    required TResult Function(_UpdateTimer value) updateTimer,
    required TResult Function(_UpdateTimerState value) updateTimerState,
    required TResult Function(_UpdateTimerLocally value) updateTimerLocally,
    required TResult Function(_UpdateTimerStateLocally value)
        updateTimerStateLocally,
    required TResult Function(_CompleteTask value) completeTask,
    required TResult Function(_ReopenTaskTask value) reopenTask,
    required TResult Function(_StartTask value) startTask,
    required TResult Function(_DeleteTask value) deleteTask,
    required TResult Function(_DeleteAllTask value) deleteAllTask,
    required TResult Function(_DeleteComment value) deleteComment,
    required TResult Function(_SortByDateDescending value) sortByDateDescending,
    required TResult Function(_SortByNameDescending value) sortByNameDescending,
    required TResult Function(_SortByNameAscending value) sortByNameAscending,
    required TResult Function(_SortByDateAscending value) sortByDateAscending,
    required TResult Function(_SortByPriorityDescending value)
        sortByPriorityDescending,
    required TResult Function(_SortByPriorityAscending value)
        sortByPriorityAscending,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateSelectedTaskTag value)? updateSelectedTaskTag,
    TResult? Function(_RemoveSelectedTaskTag value)? removeSelectedTaskTag,
    TResult? Function(_UpdateSelectedTaskPriority value)?
        updateSelectedTaskPriority,
    TResult? Function(_UpdateSelectedTaskStatus value)?
        updateSelectedTaskStatus,
    TResult? Function(_AddNewTask value)? addNewTask,
    TResult? Function(_AddFullTask value)? updateFullTask,
    TResult? Function(_AddNewComment value)? addNewComment,
    TResult? Function(_Updateomment value)? updateComment,
    TResult? Function(_FetchAllComments value)? fetchAllComments,
    TResult? Function(_FetchAllTasks value)? fetchAllTasks,
    TResult? Function(_SetPickedFileForComment value)? setPickedFileForComment,
    TResult? Function(_SyncData value)? syncData,
    TResult? Function(_SyncDataInServer value)? syncDataInServer,
    TResult? Function(_AddCurrentTimeStampToAllTasksLocally value)?
        addCurrentTimeStampToAllTasksLocally,
    TResult? Function(_UpdateCurrentHomeIndex value)? updateCurrentHomeIndex,
    TResult? Function(_ResetSelectItems value)? resetSelectItems,
    TResult? Function(_UpdateFocusedDate value)? updateFocusedDate,
    TResult? Function(_ResetMessage value)? resetMessage,
    TResult? Function(_UpdateSection value)? updateSection,
    TResult? Function(_UpdateTimer value)? updateTimer,
    TResult? Function(_UpdateTimerState value)? updateTimerState,
    TResult? Function(_UpdateTimerLocally value)? updateTimerLocally,
    TResult? Function(_UpdateTimerStateLocally value)? updateTimerStateLocally,
    TResult? Function(_CompleteTask value)? completeTask,
    TResult? Function(_ReopenTaskTask value)? reopenTask,
    TResult? Function(_StartTask value)? startTask,
    TResult? Function(_DeleteTask value)? deleteTask,
    TResult? Function(_DeleteAllTask value)? deleteAllTask,
    TResult? Function(_DeleteComment value)? deleteComment,
    TResult? Function(_SortByDateDescending value)? sortByDateDescending,
    TResult? Function(_SortByNameDescending value)? sortByNameDescending,
    TResult? Function(_SortByNameAscending value)? sortByNameAscending,
    TResult? Function(_SortByDateAscending value)? sortByDateAscending,
    TResult? Function(_SortByPriorityDescending value)?
        sortByPriorityDescending,
    TResult? Function(_SortByPriorityAscending value)? sortByPriorityAscending,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateSelectedTaskTag value)? updateSelectedTaskTag,
    TResult Function(_RemoveSelectedTaskTag value)? removeSelectedTaskTag,
    TResult Function(_UpdateSelectedTaskPriority value)?
        updateSelectedTaskPriority,
    TResult Function(_UpdateSelectedTaskStatus value)? updateSelectedTaskStatus,
    TResult Function(_AddNewTask value)? addNewTask,
    TResult Function(_AddFullTask value)? updateFullTask,
    TResult Function(_AddNewComment value)? addNewComment,
    TResult Function(_Updateomment value)? updateComment,
    TResult Function(_FetchAllComments value)? fetchAllComments,
    TResult Function(_FetchAllTasks value)? fetchAllTasks,
    TResult Function(_SetPickedFileForComment value)? setPickedFileForComment,
    TResult Function(_SyncData value)? syncData,
    TResult Function(_SyncDataInServer value)? syncDataInServer,
    TResult Function(_AddCurrentTimeStampToAllTasksLocally value)?
        addCurrentTimeStampToAllTasksLocally,
    TResult Function(_UpdateCurrentHomeIndex value)? updateCurrentHomeIndex,
    TResult Function(_ResetSelectItems value)? resetSelectItems,
    TResult Function(_UpdateFocusedDate value)? updateFocusedDate,
    TResult Function(_ResetMessage value)? resetMessage,
    TResult Function(_UpdateSection value)? updateSection,
    TResult Function(_UpdateTimer value)? updateTimer,
    TResult Function(_UpdateTimerState value)? updateTimerState,
    TResult Function(_UpdateTimerLocally value)? updateTimerLocally,
    TResult Function(_UpdateTimerStateLocally value)? updateTimerStateLocally,
    TResult Function(_CompleteTask value)? completeTask,
    TResult Function(_ReopenTaskTask value)? reopenTask,
    TResult Function(_StartTask value)? startTask,
    TResult Function(_DeleteTask value)? deleteTask,
    TResult Function(_DeleteAllTask value)? deleteAllTask,
    TResult Function(_DeleteComment value)? deleteComment,
    TResult Function(_SortByDateDescending value)? sortByDateDescending,
    TResult Function(_SortByNameDescending value)? sortByNameDescending,
    TResult Function(_SortByNameAscending value)? sortByNameAscending,
    TResult Function(_SortByDateAscending value)? sortByDateAscending,
    TResult Function(_SortByPriorityDescending value)? sortByPriorityDescending,
    TResult Function(_SortByPriorityAscending value)? sortByPriorityAscending,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res, HomeEvent>;
}

/// @nodoc
class _$HomeEventCopyWithImpl<$Res, $Val extends HomeEvent>
    implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$UpdateSelectedTaskTagImplCopyWith<$Res> {
  factory _$$UpdateSelectedTaskTagImplCopyWith(
          _$UpdateSelectedTaskTagImpl value,
          $Res Function(_$UpdateSelectedTaskTagImpl) then) =
      __$$UpdateSelectedTaskTagImplCopyWithImpl<$Res>;
  @useResult
  $Res call({TasksTags tasksTags});
}

/// @nodoc
class __$$UpdateSelectedTaskTagImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$UpdateSelectedTaskTagImpl>
    implements _$$UpdateSelectedTaskTagImplCopyWith<$Res> {
  __$$UpdateSelectedTaskTagImplCopyWithImpl(_$UpdateSelectedTaskTagImpl _value,
      $Res Function(_$UpdateSelectedTaskTagImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tasksTags = null,
  }) {
    return _then(_$UpdateSelectedTaskTagImpl(
      tasksTags: null == tasksTags
          ? _value.tasksTags
          : tasksTags // ignore: cast_nullable_to_non_nullable
              as TasksTags,
    ));
  }
}

/// @nodoc

class _$UpdateSelectedTaskTagImpl implements _UpdateSelectedTaskTag {
  const _$UpdateSelectedTaskTagImpl({required this.tasksTags});

  @override
  final TasksTags tasksTags;

  @override
  String toString() {
    return 'HomeEvent.updateSelectedTaskTag(tasksTags: $tasksTags)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateSelectedTaskTagImpl &&
            (identical(other.tasksTags, tasksTags) ||
                other.tasksTags == tasksTags));
  }

  @override
  int get hashCode => Object.hash(runtimeType, tasksTags);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateSelectedTaskTagImplCopyWith<_$UpdateSelectedTaskTagImpl>
      get copyWith => __$$UpdateSelectedTaskTagImplCopyWithImpl<
          _$UpdateSelectedTaskTagImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TasksTags tasksTags) updateSelectedTaskTag,
    required TResult Function(int index) removeSelectedTaskTag,
    required TResult Function(TasksPriority taskPriority)
        updateSelectedTaskPriority,
    required TResult Function(TasksStatus tasksStatus) updateSelectedTaskStatus,
    required TResult Function(
            AppLocalizations appLocalization,
            String dueDate,
            String content,
            String description,
            void Function()? Function() onComplete)
        addNewTask,
    required TResult Function(
            AppLocalizations appLocalization,
            String dueDate,
            String content,
            String taskId,
            String description,
            void Function()? Function() onComplete)
        updateFullTask,
    required TResult Function(AppLocalizations appLocalization, String taskId,
            String content, void Function()? Function() onComplete)
        addNewComment,
    required TResult Function(
            AppLocalizations appLocalization,
            String taskId,
            String commentId,
            String content,
            void Function()? Function() onComplete)
        updateComment,
    required TResult Function(
            String taskId, bool isSyncing, InternetState internetState)
        fetchAllComments,
    required TResult Function(bool requiredReload, InternetState internetState)
        fetchAllTasks,
    required TResult Function(File? file) setPickedFileForComment,
    required TResult Function(BuildContext context) syncData,
    required TResult Function() syncDataInServer,
    required TResult Function(int savedTime)
        addCurrentTimeStampToAllTasksLocally,
    required TResult Function(int index) updateCurrentHomeIndex,
    required TResult Function() resetSelectItems,
    required TResult Function(DateTime focusedDate, InternetState internetState)
        updateFocusedDate,
    required TResult Function() resetMessage,
    required TResult Function(String taskId, String fromSectionId,
            String sectionId, List<String> labels)
        updateSection,
    required TResult Function(String taskId, List<String> labels) updateTimer,
    required TResult Function(String taskId, List<String> labels)
        updateTimerState,
    required TResult Function(String taskId, List<String> labels)
        updateTimerLocally,
    required TResult Function(String taskId, List<String> labels)
        updateTimerStateLocally,
    required TResult Function(String taskId, List<String> labels) completeTask,
    required TResult Function(String taskId, List<String> labels) reopenTask,
    required TResult Function(String taskId, List<String> labels) startTask,
    required TResult Function(String taskId) deleteTask,
    required TResult Function(AppLocalizations appLocalization) deleteAllTask,
    required TResult Function(String commentId, String taskId) deleteComment,
    required TResult Function(String id) sortByDateDescending,
    required TResult Function(String id) sortByNameDescending,
    required TResult Function(String id) sortByNameAscending,
    required TResult Function(String id) sortByDateAscending,
    required TResult Function(String id) sortByPriorityDescending,
    required TResult Function(String id) sortByPriorityAscending,
  }) {
    return updateSelectedTaskTag(tasksTags);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TasksTags tasksTags)? updateSelectedTaskTag,
    TResult? Function(int index)? removeSelectedTaskTag,
    TResult? Function(TasksPriority taskPriority)? updateSelectedTaskPriority,
    TResult? Function(TasksStatus tasksStatus)? updateSelectedTaskStatus,
    TResult? Function(
            AppLocalizations appLocalization,
            String dueDate,
            String content,
            String description,
            void Function()? Function() onComplete)?
        addNewTask,
    TResult? Function(
            AppLocalizations appLocalization,
            String dueDate,
            String content,
            String taskId,
            String description,
            void Function()? Function() onComplete)?
        updateFullTask,
    TResult? Function(AppLocalizations appLocalization, String taskId,
            String content, void Function()? Function() onComplete)?
        addNewComment,
    TResult? Function(
            AppLocalizations appLocalization,
            String taskId,
            String commentId,
            String content,
            void Function()? Function() onComplete)?
        updateComment,
    TResult? Function(
            String taskId, bool isSyncing, InternetState internetState)?
        fetchAllComments,
    TResult? Function(bool requiredReload, InternetState internetState)?
        fetchAllTasks,
    TResult? Function(File? file)? setPickedFileForComment,
    TResult? Function(BuildContext context)? syncData,
    TResult? Function()? syncDataInServer,
    TResult? Function(int savedTime)? addCurrentTimeStampToAllTasksLocally,
    TResult? Function(int index)? updateCurrentHomeIndex,
    TResult? Function()? resetSelectItems,
    TResult? Function(DateTime focusedDate, InternetState internetState)?
        updateFocusedDate,
    TResult? Function()? resetMessage,
    TResult? Function(String taskId, String fromSectionId, String sectionId,
            List<String> labels)?
        updateSection,
    TResult? Function(String taskId, List<String> labels)? updateTimer,
    TResult? Function(String taskId, List<String> labels)? updateTimerState,
    TResult? Function(String taskId, List<String> labels)? updateTimerLocally,
    TResult? Function(String taskId, List<String> labels)?
        updateTimerStateLocally,
    TResult? Function(String taskId, List<String> labels)? completeTask,
    TResult? Function(String taskId, List<String> labels)? reopenTask,
    TResult? Function(String taskId, List<String> labels)? startTask,
    TResult? Function(String taskId)? deleteTask,
    TResult? Function(AppLocalizations appLocalization)? deleteAllTask,
    TResult? Function(String commentId, String taskId)? deleteComment,
    TResult? Function(String id)? sortByDateDescending,
    TResult? Function(String id)? sortByNameDescending,
    TResult? Function(String id)? sortByNameAscending,
    TResult? Function(String id)? sortByDateAscending,
    TResult? Function(String id)? sortByPriorityDescending,
    TResult? Function(String id)? sortByPriorityAscending,
  }) {
    return updateSelectedTaskTag?.call(tasksTags);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TasksTags tasksTags)? updateSelectedTaskTag,
    TResult Function(int index)? removeSelectedTaskTag,
    TResult Function(TasksPriority taskPriority)? updateSelectedTaskPriority,
    TResult Function(TasksStatus tasksStatus)? updateSelectedTaskStatus,
    TResult Function(
            AppLocalizations appLocalization,
            String dueDate,
            String content,
            String description,
            void Function()? Function() onComplete)?
        addNewTask,
    TResult Function(
            AppLocalizations appLocalization,
            String dueDate,
            String content,
            String taskId,
            String description,
            void Function()? Function() onComplete)?
        updateFullTask,
    TResult Function(AppLocalizations appLocalization, String taskId,
            String content, void Function()? Function() onComplete)?
        addNewComment,
    TResult Function(
            AppLocalizations appLocalization,
            String taskId,
            String commentId,
            String content,
            void Function()? Function() onComplete)?
        updateComment,
    TResult Function(
            String taskId, bool isSyncing, InternetState internetState)?
        fetchAllComments,
    TResult Function(bool requiredReload, InternetState internetState)?
        fetchAllTasks,
    TResult Function(File? file)? setPickedFileForComment,
    TResult Function(BuildContext context)? syncData,
    TResult Function()? syncDataInServer,
    TResult Function(int savedTime)? addCurrentTimeStampToAllTasksLocally,
    TResult Function(int index)? updateCurrentHomeIndex,
    TResult Function()? resetSelectItems,
    TResult Function(DateTime focusedDate, InternetState internetState)?
        updateFocusedDate,
    TResult Function()? resetMessage,
    TResult Function(String taskId, String fromSectionId, String sectionId,
            List<String> labels)?
        updateSection,
    TResult Function(String taskId, List<String> labels)? updateTimer,
    TResult Function(String taskId, List<String> labels)? updateTimerState,
    TResult Function(String taskId, List<String> labels)? updateTimerLocally,
    TResult Function(String taskId, List<String> labels)?
        updateTimerStateLocally,
    TResult Function(String taskId, List<String> labels)? completeTask,
    TResult Function(String taskId, List<String> labels)? reopenTask,
    TResult Function(String taskId, List<String> labels)? startTask,
    TResult Function(String taskId)? deleteTask,
    TResult Function(AppLocalizations appLocalization)? deleteAllTask,
    TResult Function(String commentId, String taskId)? deleteComment,
    TResult Function(String id)? sortByDateDescending,
    TResult Function(String id)? sortByNameDescending,
    TResult Function(String id)? sortByNameAscending,
    TResult Function(String id)? sortByDateAscending,
    TResult Function(String id)? sortByPriorityDescending,
    TResult Function(String id)? sortByPriorityAscending,
    required TResult orElse(),
  }) {
    if (updateSelectedTaskTag != null) {
      return updateSelectedTaskTag(tasksTags);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateSelectedTaskTag value)
        updateSelectedTaskTag,
    required TResult Function(_RemoveSelectedTaskTag value)
        removeSelectedTaskTag,
    required TResult Function(_UpdateSelectedTaskPriority value)
        updateSelectedTaskPriority,
    required TResult Function(_UpdateSelectedTaskStatus value)
        updateSelectedTaskStatus,
    required TResult Function(_AddNewTask value) addNewTask,
    required TResult Function(_AddFullTask value) updateFullTask,
    required TResult Function(_AddNewComment value) addNewComment,
    required TResult Function(_Updateomment value) updateComment,
    required TResult Function(_FetchAllComments value) fetchAllComments,
    required TResult Function(_FetchAllTasks value) fetchAllTasks,
    required TResult Function(_SetPickedFileForComment value)
        setPickedFileForComment,
    required TResult Function(_SyncData value) syncData,
    required TResult Function(_SyncDataInServer value) syncDataInServer,
    required TResult Function(_AddCurrentTimeStampToAllTasksLocally value)
        addCurrentTimeStampToAllTasksLocally,
    required TResult Function(_UpdateCurrentHomeIndex value)
        updateCurrentHomeIndex,
    required TResult Function(_ResetSelectItems value) resetSelectItems,
    required TResult Function(_UpdateFocusedDate value) updateFocusedDate,
    required TResult Function(_ResetMessage value) resetMessage,
    required TResult Function(_UpdateSection value) updateSection,
    required TResult Function(_UpdateTimer value) updateTimer,
    required TResult Function(_UpdateTimerState value) updateTimerState,
    required TResult Function(_UpdateTimerLocally value) updateTimerLocally,
    required TResult Function(_UpdateTimerStateLocally value)
        updateTimerStateLocally,
    required TResult Function(_CompleteTask value) completeTask,
    required TResult Function(_ReopenTaskTask value) reopenTask,
    required TResult Function(_StartTask value) startTask,
    required TResult Function(_DeleteTask value) deleteTask,
    required TResult Function(_DeleteAllTask value) deleteAllTask,
    required TResult Function(_DeleteComment value) deleteComment,
    required TResult Function(_SortByDateDescending value) sortByDateDescending,
    required TResult Function(_SortByNameDescending value) sortByNameDescending,
    required TResult Function(_SortByNameAscending value) sortByNameAscending,
    required TResult Function(_SortByDateAscending value) sortByDateAscending,
    required TResult Function(_SortByPriorityDescending value)
        sortByPriorityDescending,
    required TResult Function(_SortByPriorityAscending value)
        sortByPriorityAscending,
  }) {
    return updateSelectedTaskTag(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateSelectedTaskTag value)? updateSelectedTaskTag,
    TResult? Function(_RemoveSelectedTaskTag value)? removeSelectedTaskTag,
    TResult? Function(_UpdateSelectedTaskPriority value)?
        updateSelectedTaskPriority,
    TResult? Function(_UpdateSelectedTaskStatus value)?
        updateSelectedTaskStatus,
    TResult? Function(_AddNewTask value)? addNewTask,
    TResult? Function(_AddFullTask value)? updateFullTask,
    TResult? Function(_AddNewComment value)? addNewComment,
    TResult? Function(_Updateomment value)? updateComment,
    TResult? Function(_FetchAllComments value)? fetchAllComments,
    TResult? Function(_FetchAllTasks value)? fetchAllTasks,
    TResult? Function(_SetPickedFileForComment value)? setPickedFileForComment,
    TResult? Function(_SyncData value)? syncData,
    TResult? Function(_SyncDataInServer value)? syncDataInServer,
    TResult? Function(_AddCurrentTimeStampToAllTasksLocally value)?
        addCurrentTimeStampToAllTasksLocally,
    TResult? Function(_UpdateCurrentHomeIndex value)? updateCurrentHomeIndex,
    TResult? Function(_ResetSelectItems value)? resetSelectItems,
    TResult? Function(_UpdateFocusedDate value)? updateFocusedDate,
    TResult? Function(_ResetMessage value)? resetMessage,
    TResult? Function(_UpdateSection value)? updateSection,
    TResult? Function(_UpdateTimer value)? updateTimer,
    TResult? Function(_UpdateTimerState value)? updateTimerState,
    TResult? Function(_UpdateTimerLocally value)? updateTimerLocally,
    TResult? Function(_UpdateTimerStateLocally value)? updateTimerStateLocally,
    TResult? Function(_CompleteTask value)? completeTask,
    TResult? Function(_ReopenTaskTask value)? reopenTask,
    TResult? Function(_StartTask value)? startTask,
    TResult? Function(_DeleteTask value)? deleteTask,
    TResult? Function(_DeleteAllTask value)? deleteAllTask,
    TResult? Function(_DeleteComment value)? deleteComment,
    TResult? Function(_SortByDateDescending value)? sortByDateDescending,
    TResult? Function(_SortByNameDescending value)? sortByNameDescending,
    TResult? Function(_SortByNameAscending value)? sortByNameAscending,
    TResult? Function(_SortByDateAscending value)? sortByDateAscending,
    TResult? Function(_SortByPriorityDescending value)?
        sortByPriorityDescending,
    TResult? Function(_SortByPriorityAscending value)? sortByPriorityAscending,
  }) {
    return updateSelectedTaskTag?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateSelectedTaskTag value)? updateSelectedTaskTag,
    TResult Function(_RemoveSelectedTaskTag value)? removeSelectedTaskTag,
    TResult Function(_UpdateSelectedTaskPriority value)?
        updateSelectedTaskPriority,
    TResult Function(_UpdateSelectedTaskStatus value)? updateSelectedTaskStatus,
    TResult Function(_AddNewTask value)? addNewTask,
    TResult Function(_AddFullTask value)? updateFullTask,
    TResult Function(_AddNewComment value)? addNewComment,
    TResult Function(_Updateomment value)? updateComment,
    TResult Function(_FetchAllComments value)? fetchAllComments,
    TResult Function(_FetchAllTasks value)? fetchAllTasks,
    TResult Function(_SetPickedFileForComment value)? setPickedFileForComment,
    TResult Function(_SyncData value)? syncData,
    TResult Function(_SyncDataInServer value)? syncDataInServer,
    TResult Function(_AddCurrentTimeStampToAllTasksLocally value)?
        addCurrentTimeStampToAllTasksLocally,
    TResult Function(_UpdateCurrentHomeIndex value)? updateCurrentHomeIndex,
    TResult Function(_ResetSelectItems value)? resetSelectItems,
    TResult Function(_UpdateFocusedDate value)? updateFocusedDate,
    TResult Function(_ResetMessage value)? resetMessage,
    TResult Function(_UpdateSection value)? updateSection,
    TResult Function(_UpdateTimer value)? updateTimer,
    TResult Function(_UpdateTimerState value)? updateTimerState,
    TResult Function(_UpdateTimerLocally value)? updateTimerLocally,
    TResult Function(_UpdateTimerStateLocally value)? updateTimerStateLocally,
    TResult Function(_CompleteTask value)? completeTask,
    TResult Function(_ReopenTaskTask value)? reopenTask,
    TResult Function(_StartTask value)? startTask,
    TResult Function(_DeleteTask value)? deleteTask,
    TResult Function(_DeleteAllTask value)? deleteAllTask,
    TResult Function(_DeleteComment value)? deleteComment,
    TResult Function(_SortByDateDescending value)? sortByDateDescending,
    TResult Function(_SortByNameDescending value)? sortByNameDescending,
    TResult Function(_SortByNameAscending value)? sortByNameAscending,
    TResult Function(_SortByDateAscending value)? sortByDateAscending,
    TResult Function(_SortByPriorityDescending value)? sortByPriorityDescending,
    TResult Function(_SortByPriorityAscending value)? sortByPriorityAscending,
    required TResult orElse(),
  }) {
    if (updateSelectedTaskTag != null) {
      return updateSelectedTaskTag(this);
    }
    return orElse();
  }
}

abstract class _UpdateSelectedTaskTag implements HomeEvent {
  const factory _UpdateSelectedTaskTag({required final TasksTags tasksTags}) =
      _$UpdateSelectedTaskTagImpl;

  TasksTags get tasksTags;
  @JsonKey(ignore: true)
  _$$UpdateSelectedTaskTagImplCopyWith<_$UpdateSelectedTaskTagImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RemoveSelectedTaskTagImplCopyWith<$Res> {
  factory _$$RemoveSelectedTaskTagImplCopyWith(
          _$RemoveSelectedTaskTagImpl value,
          $Res Function(_$RemoveSelectedTaskTagImpl) then) =
      __$$RemoveSelectedTaskTagImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$$RemoveSelectedTaskTagImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$RemoveSelectedTaskTagImpl>
    implements _$$RemoveSelectedTaskTagImplCopyWith<$Res> {
  __$$RemoveSelectedTaskTagImplCopyWithImpl(_$RemoveSelectedTaskTagImpl _value,
      $Res Function(_$RemoveSelectedTaskTagImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_$RemoveSelectedTaskTagImpl(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$RemoveSelectedTaskTagImpl implements _RemoveSelectedTaskTag {
  const _$RemoveSelectedTaskTagImpl({required this.index});

  @override
  final int index;

  @override
  String toString() {
    return 'HomeEvent.removeSelectedTaskTag(index: $index)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoveSelectedTaskTagImpl &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RemoveSelectedTaskTagImplCopyWith<_$RemoveSelectedTaskTagImpl>
      get copyWith => __$$RemoveSelectedTaskTagImplCopyWithImpl<
          _$RemoveSelectedTaskTagImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TasksTags tasksTags) updateSelectedTaskTag,
    required TResult Function(int index) removeSelectedTaskTag,
    required TResult Function(TasksPriority taskPriority)
        updateSelectedTaskPriority,
    required TResult Function(TasksStatus tasksStatus) updateSelectedTaskStatus,
    required TResult Function(
            AppLocalizations appLocalization,
            String dueDate,
            String content,
            String description,
            void Function()? Function() onComplete)
        addNewTask,
    required TResult Function(
            AppLocalizations appLocalization,
            String dueDate,
            String content,
            String taskId,
            String description,
            void Function()? Function() onComplete)
        updateFullTask,
    required TResult Function(AppLocalizations appLocalization, String taskId,
            String content, void Function()? Function() onComplete)
        addNewComment,
    required TResult Function(
            AppLocalizations appLocalization,
            String taskId,
            String commentId,
            String content,
            void Function()? Function() onComplete)
        updateComment,
    required TResult Function(
            String taskId, bool isSyncing, InternetState internetState)
        fetchAllComments,
    required TResult Function(bool requiredReload, InternetState internetState)
        fetchAllTasks,
    required TResult Function(File? file) setPickedFileForComment,
    required TResult Function(BuildContext context) syncData,
    required TResult Function() syncDataInServer,
    required TResult Function(int savedTime)
        addCurrentTimeStampToAllTasksLocally,
    required TResult Function(int index) updateCurrentHomeIndex,
    required TResult Function() resetSelectItems,
    required TResult Function(DateTime focusedDate, InternetState internetState)
        updateFocusedDate,
    required TResult Function() resetMessage,
    required TResult Function(String taskId, String fromSectionId,
            String sectionId, List<String> labels)
        updateSection,
    required TResult Function(String taskId, List<String> labels) updateTimer,
    required TResult Function(String taskId, List<String> labels)
        updateTimerState,
    required TResult Function(String taskId, List<String> labels)
        updateTimerLocally,
    required TResult Function(String taskId, List<String> labels)
        updateTimerStateLocally,
    required TResult Function(String taskId, List<String> labels) completeTask,
    required TResult Function(String taskId, List<String> labels) reopenTask,
    required TResult Function(String taskId, List<String> labels) startTask,
    required TResult Function(String taskId) deleteTask,
    required TResult Function(AppLocalizations appLocalization) deleteAllTask,
    required TResult Function(String commentId, String taskId) deleteComment,
    required TResult Function(String id) sortByDateDescending,
    required TResult Function(String id) sortByNameDescending,
    required TResult Function(String id) sortByNameAscending,
    required TResult Function(String id) sortByDateAscending,
    required TResult Function(String id) sortByPriorityDescending,
    required TResult Function(String id) sortByPriorityAscending,
  }) {
    return removeSelectedTaskTag(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TasksTags tasksTags)? updateSelectedTaskTag,
    TResult? Function(int index)? removeSelectedTaskTag,
    TResult? Function(TasksPriority taskPriority)? updateSelectedTaskPriority,
    TResult? Function(TasksStatus tasksStatus)? updateSelectedTaskStatus,
    TResult? Function(
            AppLocalizations appLocalization,
            String dueDate,
            String content,
            String description,
            void Function()? Function() onComplete)?
        addNewTask,
    TResult? Function(
            AppLocalizations appLocalization,
            String dueDate,
            String content,
            String taskId,
            String description,
            void Function()? Function() onComplete)?
        updateFullTask,
    TResult? Function(AppLocalizations appLocalization, String taskId,
            String content, void Function()? Function() onComplete)?
        addNewComment,
    TResult? Function(
            AppLocalizations appLocalization,
            String taskId,
            String commentId,
            String content,
            void Function()? Function() onComplete)?
        updateComment,
    TResult? Function(
            String taskId, bool isSyncing, InternetState internetState)?
        fetchAllComments,
    TResult? Function(bool requiredReload, InternetState internetState)?
        fetchAllTasks,
    TResult? Function(File? file)? setPickedFileForComment,
    TResult? Function(BuildContext context)? syncData,
    TResult? Function()? syncDataInServer,
    TResult? Function(int savedTime)? addCurrentTimeStampToAllTasksLocally,
    TResult? Function(int index)? updateCurrentHomeIndex,
    TResult? Function()? resetSelectItems,
    TResult? Function(DateTime focusedDate, InternetState internetState)?
        updateFocusedDate,
    TResult? Function()? resetMessage,
    TResult? Function(String taskId, String fromSectionId, String sectionId,
            List<String> labels)?
        updateSection,
    TResult? Function(String taskId, List<String> labels)? updateTimer,
    TResult? Function(String taskId, List<String> labels)? updateTimerState,
    TResult? Function(String taskId, List<String> labels)? updateTimerLocally,
    TResult? Function(String taskId, List<String> labels)?
        updateTimerStateLocally,
    TResult? Function(String taskId, List<String> labels)? completeTask,
    TResult? Function(String taskId, List<String> labels)? reopenTask,
    TResult? Function(String taskId, List<String> labels)? startTask,
    TResult? Function(String taskId)? deleteTask,
    TResult? Function(AppLocalizations appLocalization)? deleteAllTask,
    TResult? Function(String commentId, String taskId)? deleteComment,
    TResult? Function(String id)? sortByDateDescending,
    TResult? Function(String id)? sortByNameDescending,
    TResult? Function(String id)? sortByNameAscending,
    TResult? Function(String id)? sortByDateAscending,
    TResult? Function(String id)? sortByPriorityDescending,
    TResult? Function(String id)? sortByPriorityAscending,
  }) {
    return removeSelectedTaskTag?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TasksTags tasksTags)? updateSelectedTaskTag,
    TResult Function(int index)? removeSelectedTaskTag,
    TResult Function(TasksPriority taskPriority)? updateSelectedTaskPriority,
    TResult Function(TasksStatus tasksStatus)? updateSelectedTaskStatus,
    TResult Function(
            AppLocalizations appLocalization,
            String dueDate,
            String content,
            String description,
            void Function()? Function() onComplete)?
        addNewTask,
    TResult Function(
            AppLocalizations appLocalization,
            String dueDate,
            String content,
            String taskId,
            String description,
            void Function()? Function() onComplete)?
        updateFullTask,
    TResult Function(AppLocalizations appLocalization, String taskId,
            String content, void Function()? Function() onComplete)?
        addNewComment,
    TResult Function(
            AppLocalizations appLocalization,
            String taskId,
            String commentId,
            String content,
            void Function()? Function() onComplete)?
        updateComment,
    TResult Function(
            String taskId, bool isSyncing, InternetState internetState)?
        fetchAllComments,
    TResult Function(bool requiredReload, InternetState internetState)?
        fetchAllTasks,
    TResult Function(File? file)? setPickedFileForComment,
    TResult Function(BuildContext context)? syncData,
    TResult Function()? syncDataInServer,
    TResult Function(int savedTime)? addCurrentTimeStampToAllTasksLocally,
    TResult Function(int index)? updateCurrentHomeIndex,
    TResult Function()? resetSelectItems,
    TResult Function(DateTime focusedDate, InternetState internetState)?
        updateFocusedDate,
    TResult Function()? resetMessage,
    TResult Function(String taskId, String fromSectionId, String sectionId,
            List<String> labels)?
        updateSection,
    TResult Function(String taskId, List<String> labels)? updateTimer,
    TResult Function(String taskId, List<String> labels)? updateTimerState,
    TResult Function(String taskId, List<String> labels)? updateTimerLocally,
    TResult Function(String taskId, List<String> labels)?
        updateTimerStateLocally,
    TResult Function(String taskId, List<String> labels)? completeTask,
    TResult Function(String taskId, List<String> labels)? reopenTask,
    TResult Function(String taskId, List<String> labels)? startTask,
    TResult Function(String taskId)? deleteTask,
    TResult Function(AppLocalizations appLocalization)? deleteAllTask,
    TResult Function(String commentId, String taskId)? deleteComment,
    TResult Function(String id)? sortByDateDescending,
    TResult Function(String id)? sortByNameDescending,
    TResult Function(String id)? sortByNameAscending,
    TResult Function(String id)? sortByDateAscending,
    TResult Function(String id)? sortByPriorityDescending,
    TResult Function(String id)? sortByPriorityAscending,
    required TResult orElse(),
  }) {
    if (removeSelectedTaskTag != null) {
      return removeSelectedTaskTag(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateSelectedTaskTag value)
        updateSelectedTaskTag,
    required TResult Function(_RemoveSelectedTaskTag value)
        removeSelectedTaskTag,
    required TResult Function(_UpdateSelectedTaskPriority value)
        updateSelectedTaskPriority,
    required TResult Function(_UpdateSelectedTaskStatus value)
        updateSelectedTaskStatus,
    required TResult Function(_AddNewTask value) addNewTask,
    required TResult Function(_AddFullTask value) updateFullTask,
    required TResult Function(_AddNewComment value) addNewComment,
    required TResult Function(_Updateomment value) updateComment,
    required TResult Function(_FetchAllComments value) fetchAllComments,
    required TResult Function(_FetchAllTasks value) fetchAllTasks,
    required TResult Function(_SetPickedFileForComment value)
        setPickedFileForComment,
    required TResult Function(_SyncData value) syncData,
    required TResult Function(_SyncDataInServer value) syncDataInServer,
    required TResult Function(_AddCurrentTimeStampToAllTasksLocally value)
        addCurrentTimeStampToAllTasksLocally,
    required TResult Function(_UpdateCurrentHomeIndex value)
        updateCurrentHomeIndex,
    required TResult Function(_ResetSelectItems value) resetSelectItems,
    required TResult Function(_UpdateFocusedDate value) updateFocusedDate,
    required TResult Function(_ResetMessage value) resetMessage,
    required TResult Function(_UpdateSection value) updateSection,
    required TResult Function(_UpdateTimer value) updateTimer,
    required TResult Function(_UpdateTimerState value) updateTimerState,
    required TResult Function(_UpdateTimerLocally value) updateTimerLocally,
    required TResult Function(_UpdateTimerStateLocally value)
        updateTimerStateLocally,
    required TResult Function(_CompleteTask value) completeTask,
    required TResult Function(_ReopenTaskTask value) reopenTask,
    required TResult Function(_StartTask value) startTask,
    required TResult Function(_DeleteTask value) deleteTask,
    required TResult Function(_DeleteAllTask value) deleteAllTask,
    required TResult Function(_DeleteComment value) deleteComment,
    required TResult Function(_SortByDateDescending value) sortByDateDescending,
    required TResult Function(_SortByNameDescending value) sortByNameDescending,
    required TResult Function(_SortByNameAscending value) sortByNameAscending,
    required TResult Function(_SortByDateAscending value) sortByDateAscending,
    required TResult Function(_SortByPriorityDescending value)
        sortByPriorityDescending,
    required TResult Function(_SortByPriorityAscending value)
        sortByPriorityAscending,
  }) {
    return removeSelectedTaskTag(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateSelectedTaskTag value)? updateSelectedTaskTag,
    TResult? Function(_RemoveSelectedTaskTag value)? removeSelectedTaskTag,
    TResult? Function(_UpdateSelectedTaskPriority value)?
        updateSelectedTaskPriority,
    TResult? Function(_UpdateSelectedTaskStatus value)?
        updateSelectedTaskStatus,
    TResult? Function(_AddNewTask value)? addNewTask,
    TResult? Function(_AddFullTask value)? updateFullTask,
    TResult? Function(_AddNewComment value)? addNewComment,
    TResult? Function(_Updateomment value)? updateComment,
    TResult? Function(_FetchAllComments value)? fetchAllComments,
    TResult? Function(_FetchAllTasks value)? fetchAllTasks,
    TResult? Function(_SetPickedFileForComment value)? setPickedFileForComment,
    TResult? Function(_SyncData value)? syncData,
    TResult? Function(_SyncDataInServer value)? syncDataInServer,
    TResult? Function(_AddCurrentTimeStampToAllTasksLocally value)?
        addCurrentTimeStampToAllTasksLocally,
    TResult? Function(_UpdateCurrentHomeIndex value)? updateCurrentHomeIndex,
    TResult? Function(_ResetSelectItems value)? resetSelectItems,
    TResult? Function(_UpdateFocusedDate value)? updateFocusedDate,
    TResult? Function(_ResetMessage value)? resetMessage,
    TResult? Function(_UpdateSection value)? updateSection,
    TResult? Function(_UpdateTimer value)? updateTimer,
    TResult? Function(_UpdateTimerState value)? updateTimerState,
    TResult? Function(_UpdateTimerLocally value)? updateTimerLocally,
    TResult? Function(_UpdateTimerStateLocally value)? updateTimerStateLocally,
    TResult? Function(_CompleteTask value)? completeTask,
    TResult? Function(_ReopenTaskTask value)? reopenTask,
    TResult? Function(_StartTask value)? startTask,
    TResult? Function(_DeleteTask value)? deleteTask,
    TResult? Function(_DeleteAllTask value)? deleteAllTask,
    TResult? Function(_DeleteComment value)? deleteComment,
    TResult? Function(_SortByDateDescending value)? sortByDateDescending,
    TResult? Function(_SortByNameDescending value)? sortByNameDescending,
    TResult? Function(_SortByNameAscending value)? sortByNameAscending,
    TResult? Function(_SortByDateAscending value)? sortByDateAscending,
    TResult? Function(_SortByPriorityDescending value)?
        sortByPriorityDescending,
    TResult? Function(_SortByPriorityAscending value)? sortByPriorityAscending,
  }) {
    return removeSelectedTaskTag?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateSelectedTaskTag value)? updateSelectedTaskTag,
    TResult Function(_RemoveSelectedTaskTag value)? removeSelectedTaskTag,
    TResult Function(_UpdateSelectedTaskPriority value)?
        updateSelectedTaskPriority,
    TResult Function(_UpdateSelectedTaskStatus value)? updateSelectedTaskStatus,
    TResult Function(_AddNewTask value)? addNewTask,
    TResult Function(_AddFullTask value)? updateFullTask,
    TResult Function(_AddNewComment value)? addNewComment,
    TResult Function(_Updateomment value)? updateComment,
    TResult Function(_FetchAllComments value)? fetchAllComments,
    TResult Function(_FetchAllTasks value)? fetchAllTasks,
    TResult Function(_SetPickedFileForComment value)? setPickedFileForComment,
    TResult Function(_SyncData value)? syncData,
    TResult Function(_SyncDataInServer value)? syncDataInServer,
    TResult Function(_AddCurrentTimeStampToAllTasksLocally value)?
        addCurrentTimeStampToAllTasksLocally,
    TResult Function(_UpdateCurrentHomeIndex value)? updateCurrentHomeIndex,
    TResult Function(_ResetSelectItems value)? resetSelectItems,
    TResult Function(_UpdateFocusedDate value)? updateFocusedDate,
    TResult Function(_ResetMessage value)? resetMessage,
    TResult Function(_UpdateSection value)? updateSection,
    TResult Function(_UpdateTimer value)? updateTimer,
    TResult Function(_UpdateTimerState value)? updateTimerState,
    TResult Function(_UpdateTimerLocally value)? updateTimerLocally,
    TResult Function(_UpdateTimerStateLocally value)? updateTimerStateLocally,
    TResult Function(_CompleteTask value)? completeTask,
    TResult Function(_ReopenTaskTask value)? reopenTask,
    TResult Function(_StartTask value)? startTask,
    TResult Function(_DeleteTask value)? deleteTask,
    TResult Function(_DeleteAllTask value)? deleteAllTask,
    TResult Function(_DeleteComment value)? deleteComment,
    TResult Function(_SortByDateDescending value)? sortByDateDescending,
    TResult Function(_SortByNameDescending value)? sortByNameDescending,
    TResult Function(_SortByNameAscending value)? sortByNameAscending,
    TResult Function(_SortByDateAscending value)? sortByDateAscending,
    TResult Function(_SortByPriorityDescending value)? sortByPriorityDescending,
    TResult Function(_SortByPriorityAscending value)? sortByPriorityAscending,
    required TResult orElse(),
  }) {
    if (removeSelectedTaskTag != null) {
      return removeSelectedTaskTag(this);
    }
    return orElse();
  }
}

abstract class _RemoveSelectedTaskTag implements HomeEvent {
  const factory _RemoveSelectedTaskTag({required final int index}) =
      _$RemoveSelectedTaskTagImpl;

  int get index;
  @JsonKey(ignore: true)
  _$$RemoveSelectedTaskTagImplCopyWith<_$RemoveSelectedTaskTagImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateSelectedTaskPriorityImplCopyWith<$Res> {
  factory _$$UpdateSelectedTaskPriorityImplCopyWith(
          _$UpdateSelectedTaskPriorityImpl value,
          $Res Function(_$UpdateSelectedTaskPriorityImpl) then) =
      __$$UpdateSelectedTaskPriorityImplCopyWithImpl<$Res>;
  @useResult
  $Res call({TasksPriority taskPriority});
}

/// @nodoc
class __$$UpdateSelectedTaskPriorityImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$UpdateSelectedTaskPriorityImpl>
    implements _$$UpdateSelectedTaskPriorityImplCopyWith<$Res> {
  __$$UpdateSelectedTaskPriorityImplCopyWithImpl(
      _$UpdateSelectedTaskPriorityImpl _value,
      $Res Function(_$UpdateSelectedTaskPriorityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? taskPriority = null,
  }) {
    return _then(_$UpdateSelectedTaskPriorityImpl(
      taskPriority: null == taskPriority
          ? _value.taskPriority
          : taskPriority // ignore: cast_nullable_to_non_nullable
              as TasksPriority,
    ));
  }
}

/// @nodoc

class _$UpdateSelectedTaskPriorityImpl implements _UpdateSelectedTaskPriority {
  const _$UpdateSelectedTaskPriorityImpl({required this.taskPriority});

  @override
  final TasksPriority taskPriority;

  @override
  String toString() {
    return 'HomeEvent.updateSelectedTaskPriority(taskPriority: $taskPriority)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateSelectedTaskPriorityImpl &&
            (identical(other.taskPriority, taskPriority) ||
                other.taskPriority == taskPriority));
  }

  @override
  int get hashCode => Object.hash(runtimeType, taskPriority);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateSelectedTaskPriorityImplCopyWith<_$UpdateSelectedTaskPriorityImpl>
      get copyWith => __$$UpdateSelectedTaskPriorityImplCopyWithImpl<
          _$UpdateSelectedTaskPriorityImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TasksTags tasksTags) updateSelectedTaskTag,
    required TResult Function(int index) removeSelectedTaskTag,
    required TResult Function(TasksPriority taskPriority)
        updateSelectedTaskPriority,
    required TResult Function(TasksStatus tasksStatus) updateSelectedTaskStatus,
    required TResult Function(
            AppLocalizations appLocalization,
            String dueDate,
            String content,
            String description,
            void Function()? Function() onComplete)
        addNewTask,
    required TResult Function(
            AppLocalizations appLocalization,
            String dueDate,
            String content,
            String taskId,
            String description,
            void Function()? Function() onComplete)
        updateFullTask,
    required TResult Function(AppLocalizations appLocalization, String taskId,
            String content, void Function()? Function() onComplete)
        addNewComment,
    required TResult Function(
            AppLocalizations appLocalization,
            String taskId,
            String commentId,
            String content,
            void Function()? Function() onComplete)
        updateComment,
    required TResult Function(
            String taskId, bool isSyncing, InternetState internetState)
        fetchAllComments,
    required TResult Function(bool requiredReload, InternetState internetState)
        fetchAllTasks,
    required TResult Function(File? file) setPickedFileForComment,
    required TResult Function(BuildContext context) syncData,
    required TResult Function() syncDataInServer,
    required TResult Function(int savedTime)
        addCurrentTimeStampToAllTasksLocally,
    required TResult Function(int index) updateCurrentHomeIndex,
    required TResult Function() resetSelectItems,
    required TResult Function(DateTime focusedDate, InternetState internetState)
        updateFocusedDate,
    required TResult Function() resetMessage,
    required TResult Function(String taskId, String fromSectionId,
            String sectionId, List<String> labels)
        updateSection,
    required TResult Function(String taskId, List<String> labels) updateTimer,
    required TResult Function(String taskId, List<String> labels)
        updateTimerState,
    required TResult Function(String taskId, List<String> labels)
        updateTimerLocally,
    required TResult Function(String taskId, List<String> labels)
        updateTimerStateLocally,
    required TResult Function(String taskId, List<String> labels) completeTask,
    required TResult Function(String taskId, List<String> labels) reopenTask,
    required TResult Function(String taskId, List<String> labels) startTask,
    required TResult Function(String taskId) deleteTask,
    required TResult Function(AppLocalizations appLocalization) deleteAllTask,
    required TResult Function(String commentId, String taskId) deleteComment,
    required TResult Function(String id) sortByDateDescending,
    required TResult Function(String id) sortByNameDescending,
    required TResult Function(String id) sortByNameAscending,
    required TResult Function(String id) sortByDateAscending,
    required TResult Function(String id) sortByPriorityDescending,
    required TResult Function(String id) sortByPriorityAscending,
  }) {
    return updateSelectedTaskPriority(taskPriority);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TasksTags tasksTags)? updateSelectedTaskTag,
    TResult? Function(int index)? removeSelectedTaskTag,
    TResult? Function(TasksPriority taskPriority)? updateSelectedTaskPriority,
    TResult? Function(TasksStatus tasksStatus)? updateSelectedTaskStatus,
    TResult? Function(
            AppLocalizations appLocalization,
            String dueDate,
            String content,
            String description,
            void Function()? Function() onComplete)?
        addNewTask,
    TResult? Function(
            AppLocalizations appLocalization,
            String dueDate,
            String content,
            String taskId,
            String description,
            void Function()? Function() onComplete)?
        updateFullTask,
    TResult? Function(AppLocalizations appLocalization, String taskId,
            String content, void Function()? Function() onComplete)?
        addNewComment,
    TResult? Function(
            AppLocalizations appLocalization,
            String taskId,
            String commentId,
            String content,
            void Function()? Function() onComplete)?
        updateComment,
    TResult? Function(
            String taskId, bool isSyncing, InternetState internetState)?
        fetchAllComments,
    TResult? Function(bool requiredReload, InternetState internetState)?
        fetchAllTasks,
    TResult? Function(File? file)? setPickedFileForComment,
    TResult? Function(BuildContext context)? syncData,
    TResult? Function()? syncDataInServer,
    TResult? Function(int savedTime)? addCurrentTimeStampToAllTasksLocally,
    TResult? Function(int index)? updateCurrentHomeIndex,
    TResult? Function()? resetSelectItems,
    TResult? Function(DateTime focusedDate, InternetState internetState)?
        updateFocusedDate,
    TResult? Function()? resetMessage,
    TResult? Function(String taskId, String fromSectionId, String sectionId,
            List<String> labels)?
        updateSection,
    TResult? Function(String taskId, List<String> labels)? updateTimer,
    TResult? Function(String taskId, List<String> labels)? updateTimerState,
    TResult? Function(String taskId, List<String> labels)? updateTimerLocally,
    TResult? Function(String taskId, List<String> labels)?
        updateTimerStateLocally,
    TResult? Function(String taskId, List<String> labels)? completeTask,
    TResult? Function(String taskId, List<String> labels)? reopenTask,
    TResult? Function(String taskId, List<String> labels)? startTask,
    TResult? Function(String taskId)? deleteTask,
    TResult? Function(AppLocalizations appLocalization)? deleteAllTask,
    TResult? Function(String commentId, String taskId)? deleteComment,
    TResult? Function(String id)? sortByDateDescending,
    TResult? Function(String id)? sortByNameDescending,
    TResult? Function(String id)? sortByNameAscending,
    TResult? Function(String id)? sortByDateAscending,
    TResult? Function(String id)? sortByPriorityDescending,
    TResult? Function(String id)? sortByPriorityAscending,
  }) {
    return updateSelectedTaskPriority?.call(taskPriority);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TasksTags tasksTags)? updateSelectedTaskTag,
    TResult Function(int index)? removeSelectedTaskTag,
    TResult Function(TasksPriority taskPriority)? updateSelectedTaskPriority,
    TResult Function(TasksStatus tasksStatus)? updateSelectedTaskStatus,
    TResult Function(
            AppLocalizations appLocalization,
            String dueDate,
            String content,
            String description,
            void Function()? Function() onComplete)?
        addNewTask,
    TResult Function(
            AppLocalizations appLocalization,
            String dueDate,
            String content,
            String taskId,
            String description,
            void Function()? Function() onComplete)?
        updateFullTask,
    TResult Function(AppLocalizations appLocalization, String taskId,
            String content, void Function()? Function() onComplete)?
        addNewComment,
    TResult Function(
            AppLocalizations appLocalization,
            String taskId,
            String commentId,
            String content,
            void Function()? Function() onComplete)?
        updateComment,
    TResult Function(
            String taskId, bool isSyncing, InternetState internetState)?
        fetchAllComments,
    TResult Function(bool requiredReload, InternetState internetState)?
        fetchAllTasks,
    TResult Function(File? file)? setPickedFileForComment,
    TResult Function(BuildContext context)? syncData,
    TResult Function()? syncDataInServer,
    TResult Function(int savedTime)? addCurrentTimeStampToAllTasksLocally,
    TResult Function(int index)? updateCurrentHomeIndex,
    TResult Function()? resetSelectItems,
    TResult Function(DateTime focusedDate, InternetState internetState)?
        updateFocusedDate,
    TResult Function()? resetMessage,
    TResult Function(String taskId, String fromSectionId, String sectionId,
            List<String> labels)?
        updateSection,
    TResult Function(String taskId, List<String> labels)? updateTimer,
    TResult Function(String taskId, List<String> labels)? updateTimerState,
    TResult Function(String taskId, List<String> labels)? updateTimerLocally,
    TResult Function(String taskId, List<String> labels)?
        updateTimerStateLocally,
    TResult Function(String taskId, List<String> labels)? completeTask,
    TResult Function(String taskId, List<String> labels)? reopenTask,
    TResult Function(String taskId, List<String> labels)? startTask,
    TResult Function(String taskId)? deleteTask,
    TResult Function(AppLocalizations appLocalization)? deleteAllTask,
    TResult Function(String commentId, String taskId)? deleteComment,
    TResult Function(String id)? sortByDateDescending,
    TResult Function(String id)? sortByNameDescending,
    TResult Function(String id)? sortByNameAscending,
    TResult Function(String id)? sortByDateAscending,
    TResult Function(String id)? sortByPriorityDescending,
    TResult Function(String id)? sortByPriorityAscending,
    required TResult orElse(),
  }) {
    if (updateSelectedTaskPriority != null) {
      return updateSelectedTaskPriority(taskPriority);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateSelectedTaskTag value)
        updateSelectedTaskTag,
    required TResult Function(_RemoveSelectedTaskTag value)
        removeSelectedTaskTag,
    required TResult Function(_UpdateSelectedTaskPriority value)
        updateSelectedTaskPriority,
    required TResult Function(_UpdateSelectedTaskStatus value)
        updateSelectedTaskStatus,
    required TResult Function(_AddNewTask value) addNewTask,
    required TResult Function(_AddFullTask value) updateFullTask,
    required TResult Function(_AddNewComment value) addNewComment,
    required TResult Function(_Updateomment value) updateComment,
    required TResult Function(_FetchAllComments value) fetchAllComments,
    required TResult Function(_FetchAllTasks value) fetchAllTasks,
    required TResult Function(_SetPickedFileForComment value)
        setPickedFileForComment,
    required TResult Function(_SyncData value) syncData,
    required TResult Function(_SyncDataInServer value) syncDataInServer,
    required TResult Function(_AddCurrentTimeStampToAllTasksLocally value)
        addCurrentTimeStampToAllTasksLocally,
    required TResult Function(_UpdateCurrentHomeIndex value)
        updateCurrentHomeIndex,
    required TResult Function(_ResetSelectItems value) resetSelectItems,
    required TResult Function(_UpdateFocusedDate value) updateFocusedDate,
    required TResult Function(_ResetMessage value) resetMessage,
    required TResult Function(_UpdateSection value) updateSection,
    required TResult Function(_UpdateTimer value) updateTimer,
    required TResult Function(_UpdateTimerState value) updateTimerState,
    required TResult Function(_UpdateTimerLocally value) updateTimerLocally,
    required TResult Function(_UpdateTimerStateLocally value)
        updateTimerStateLocally,
    required TResult Function(_CompleteTask value) completeTask,
    required TResult Function(_ReopenTaskTask value) reopenTask,
    required TResult Function(_StartTask value) startTask,
    required TResult Function(_DeleteTask value) deleteTask,
    required TResult Function(_DeleteAllTask value) deleteAllTask,
    required TResult Function(_DeleteComment value) deleteComment,
    required TResult Function(_SortByDateDescending value) sortByDateDescending,
    required TResult Function(_SortByNameDescending value) sortByNameDescending,
    required TResult Function(_SortByNameAscending value) sortByNameAscending,
    required TResult Function(_SortByDateAscending value) sortByDateAscending,
    required TResult Function(_SortByPriorityDescending value)
        sortByPriorityDescending,
    required TResult Function(_SortByPriorityAscending value)
        sortByPriorityAscending,
  }) {
    return updateSelectedTaskPriority(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateSelectedTaskTag value)? updateSelectedTaskTag,
    TResult? Function(_RemoveSelectedTaskTag value)? removeSelectedTaskTag,
    TResult? Function(_UpdateSelectedTaskPriority value)?
        updateSelectedTaskPriority,
    TResult? Function(_UpdateSelectedTaskStatus value)?
        updateSelectedTaskStatus,
    TResult? Function(_AddNewTask value)? addNewTask,
    TResult? Function(_AddFullTask value)? updateFullTask,
    TResult? Function(_AddNewComment value)? addNewComment,
    TResult? Function(_Updateomment value)? updateComment,
    TResult? Function(_FetchAllComments value)? fetchAllComments,
    TResult? Function(_FetchAllTasks value)? fetchAllTasks,
    TResult? Function(_SetPickedFileForComment value)? setPickedFileForComment,
    TResult? Function(_SyncData value)? syncData,
    TResult? Function(_SyncDataInServer value)? syncDataInServer,
    TResult? Function(_AddCurrentTimeStampToAllTasksLocally value)?
        addCurrentTimeStampToAllTasksLocally,
    TResult? Function(_UpdateCurrentHomeIndex value)? updateCurrentHomeIndex,
    TResult? Function(_ResetSelectItems value)? resetSelectItems,
    TResult? Function(_UpdateFocusedDate value)? updateFocusedDate,
    TResult? Function(_ResetMessage value)? resetMessage,
    TResult? Function(_UpdateSection value)? updateSection,
    TResult? Function(_UpdateTimer value)? updateTimer,
    TResult? Function(_UpdateTimerState value)? updateTimerState,
    TResult? Function(_UpdateTimerLocally value)? updateTimerLocally,
    TResult? Function(_UpdateTimerStateLocally value)? updateTimerStateLocally,
    TResult? Function(_CompleteTask value)? completeTask,
    TResult? Function(_ReopenTaskTask value)? reopenTask,
    TResult? Function(_StartTask value)? startTask,
    TResult? Function(_DeleteTask value)? deleteTask,
    TResult? Function(_DeleteAllTask value)? deleteAllTask,
    TResult? Function(_DeleteComment value)? deleteComment,
    TResult? Function(_SortByDateDescending value)? sortByDateDescending,
    TResult? Function(_SortByNameDescending value)? sortByNameDescending,
    TResult? Function(_SortByNameAscending value)? sortByNameAscending,
    TResult? Function(_SortByDateAscending value)? sortByDateAscending,
    TResult? Function(_SortByPriorityDescending value)?
        sortByPriorityDescending,
    TResult? Function(_SortByPriorityAscending value)? sortByPriorityAscending,
  }) {
    return updateSelectedTaskPriority?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateSelectedTaskTag value)? updateSelectedTaskTag,
    TResult Function(_RemoveSelectedTaskTag value)? removeSelectedTaskTag,
    TResult Function(_UpdateSelectedTaskPriority value)?
        updateSelectedTaskPriority,
    TResult Function(_UpdateSelectedTaskStatus value)? updateSelectedTaskStatus,
    TResult Function(_AddNewTask value)? addNewTask,
    TResult Function(_AddFullTask value)? updateFullTask,
    TResult Function(_AddNewComment value)? addNewComment,
    TResult Function(_Updateomment value)? updateComment,
    TResult Function(_FetchAllComments value)? fetchAllComments,
    TResult Function(_FetchAllTasks value)? fetchAllTasks,
    TResult Function(_SetPickedFileForComment value)? setPickedFileForComment,
    TResult Function(_SyncData value)? syncData,
    TResult Function(_SyncDataInServer value)? syncDataInServer,
    TResult Function(_AddCurrentTimeStampToAllTasksLocally value)?
        addCurrentTimeStampToAllTasksLocally,
    TResult Function(_UpdateCurrentHomeIndex value)? updateCurrentHomeIndex,
    TResult Function(_ResetSelectItems value)? resetSelectItems,
    TResult Function(_UpdateFocusedDate value)? updateFocusedDate,
    TResult Function(_ResetMessage value)? resetMessage,
    TResult Function(_UpdateSection value)? updateSection,
    TResult Function(_UpdateTimer value)? updateTimer,
    TResult Function(_UpdateTimerState value)? updateTimerState,
    TResult Function(_UpdateTimerLocally value)? updateTimerLocally,
    TResult Function(_UpdateTimerStateLocally value)? updateTimerStateLocally,
    TResult Function(_CompleteTask value)? completeTask,
    TResult Function(_ReopenTaskTask value)? reopenTask,
    TResult Function(_StartTask value)? startTask,
    TResult Function(_DeleteTask value)? deleteTask,
    TResult Function(_DeleteAllTask value)? deleteAllTask,
    TResult Function(_DeleteComment value)? deleteComment,
    TResult Function(_SortByDateDescending value)? sortByDateDescending,
    TResult Function(_SortByNameDescending value)? sortByNameDescending,
    TResult Function(_SortByNameAscending value)? sortByNameAscending,
    TResult Function(_SortByDateAscending value)? sortByDateAscending,
    TResult Function(_SortByPriorityDescending value)? sortByPriorityDescending,
    TResult Function(_SortByPriorityAscending value)? sortByPriorityAscending,
    required TResult orElse(),
  }) {
    if (updateSelectedTaskPriority != null) {
      return updateSelectedTaskPriority(this);
    }
    return orElse();
  }
}

abstract class _UpdateSelectedTaskPriority implements HomeEvent {
  const factory _UpdateSelectedTaskPriority(
          {required final TasksPriority taskPriority}) =
      _$UpdateSelectedTaskPriorityImpl;

  TasksPriority get taskPriority;
  @JsonKey(ignore: true)
  _$$UpdateSelectedTaskPriorityImplCopyWith<_$UpdateSelectedTaskPriorityImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateSelectedTaskStatusImplCopyWith<$Res> {
  factory _$$UpdateSelectedTaskStatusImplCopyWith(
          _$UpdateSelectedTaskStatusImpl value,
          $Res Function(_$UpdateSelectedTaskStatusImpl) then) =
      __$$UpdateSelectedTaskStatusImplCopyWithImpl<$Res>;
  @useResult
  $Res call({TasksStatus tasksStatus});
}

/// @nodoc
class __$$UpdateSelectedTaskStatusImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$UpdateSelectedTaskStatusImpl>
    implements _$$UpdateSelectedTaskStatusImplCopyWith<$Res> {
  __$$UpdateSelectedTaskStatusImplCopyWithImpl(
      _$UpdateSelectedTaskStatusImpl _value,
      $Res Function(_$UpdateSelectedTaskStatusImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tasksStatus = null,
  }) {
    return _then(_$UpdateSelectedTaskStatusImpl(
      tasksStatus: null == tasksStatus
          ? _value.tasksStatus
          : tasksStatus // ignore: cast_nullable_to_non_nullable
              as TasksStatus,
    ));
  }
}

/// @nodoc

class _$UpdateSelectedTaskStatusImpl implements _UpdateSelectedTaskStatus {
  const _$UpdateSelectedTaskStatusImpl({required this.tasksStatus});

  @override
  final TasksStatus tasksStatus;

  @override
  String toString() {
    return 'HomeEvent.updateSelectedTaskStatus(tasksStatus: $tasksStatus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateSelectedTaskStatusImpl &&
            (identical(other.tasksStatus, tasksStatus) ||
                other.tasksStatus == tasksStatus));
  }

  @override
  int get hashCode => Object.hash(runtimeType, tasksStatus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateSelectedTaskStatusImplCopyWith<_$UpdateSelectedTaskStatusImpl>
      get copyWith => __$$UpdateSelectedTaskStatusImplCopyWithImpl<
          _$UpdateSelectedTaskStatusImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TasksTags tasksTags) updateSelectedTaskTag,
    required TResult Function(int index) removeSelectedTaskTag,
    required TResult Function(TasksPriority taskPriority)
        updateSelectedTaskPriority,
    required TResult Function(TasksStatus tasksStatus) updateSelectedTaskStatus,
    required TResult Function(
            AppLocalizations appLocalization,
            String dueDate,
            String content,
            String description,
            void Function()? Function() onComplete)
        addNewTask,
    required TResult Function(
            AppLocalizations appLocalization,
            String dueDate,
            String content,
            String taskId,
            String description,
            void Function()? Function() onComplete)
        updateFullTask,
    required TResult Function(AppLocalizations appLocalization, String taskId,
            String content, void Function()? Function() onComplete)
        addNewComment,
    required TResult Function(
            AppLocalizations appLocalization,
            String taskId,
            String commentId,
            String content,
            void Function()? Function() onComplete)
        updateComment,
    required TResult Function(
            String taskId, bool isSyncing, InternetState internetState)
        fetchAllComments,
    required TResult Function(bool requiredReload, InternetState internetState)
        fetchAllTasks,
    required TResult Function(File? file) setPickedFileForComment,
    required TResult Function(BuildContext context) syncData,
    required TResult Function() syncDataInServer,
    required TResult Function(int savedTime)
        addCurrentTimeStampToAllTasksLocally,
    required TResult Function(int index) updateCurrentHomeIndex,
    required TResult Function() resetSelectItems,
    required TResult Function(DateTime focusedDate, InternetState internetState)
        updateFocusedDate,
    required TResult Function() resetMessage,
    required TResult Function(String taskId, String fromSectionId,
            String sectionId, List<String> labels)
        updateSection,
    required TResult Function(String taskId, List<String> labels) updateTimer,
    required TResult Function(String taskId, List<String> labels)
        updateTimerState,
    required TResult Function(String taskId, List<String> labels)
        updateTimerLocally,
    required TResult Function(String taskId, List<String> labels)
        updateTimerStateLocally,
    required TResult Function(String taskId, List<String> labels) completeTask,
    required TResult Function(String taskId, List<String> labels) reopenTask,
    required TResult Function(String taskId, List<String> labels) startTask,
    required TResult Function(String taskId) deleteTask,
    required TResult Function(AppLocalizations appLocalization) deleteAllTask,
    required TResult Function(String commentId, String taskId) deleteComment,
    required TResult Function(String id) sortByDateDescending,
    required TResult Function(String id) sortByNameDescending,
    required TResult Function(String id) sortByNameAscending,
    required TResult Function(String id) sortByDateAscending,
    required TResult Function(String id) sortByPriorityDescending,
    required TResult Function(String id) sortByPriorityAscending,
  }) {
    return updateSelectedTaskStatus(tasksStatus);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TasksTags tasksTags)? updateSelectedTaskTag,
    TResult? Function(int index)? removeSelectedTaskTag,
    TResult? Function(TasksPriority taskPriority)? updateSelectedTaskPriority,
    TResult? Function(TasksStatus tasksStatus)? updateSelectedTaskStatus,
    TResult? Function(
            AppLocalizations appLocalization,
            String dueDate,
            String content,
            String description,
            void Function()? Function() onComplete)?
        addNewTask,
    TResult? Function(
            AppLocalizations appLocalization,
            String dueDate,
            String content,
            String taskId,
            String description,
            void Function()? Function() onComplete)?
        updateFullTask,
    TResult? Function(AppLocalizations appLocalization, String taskId,
            String content, void Function()? Function() onComplete)?
        addNewComment,
    TResult? Function(
            AppLocalizations appLocalization,
            String taskId,
            String commentId,
            String content,
            void Function()? Function() onComplete)?
        updateComment,
    TResult? Function(
            String taskId, bool isSyncing, InternetState internetState)?
        fetchAllComments,
    TResult? Function(bool requiredReload, InternetState internetState)?
        fetchAllTasks,
    TResult? Function(File? file)? setPickedFileForComment,
    TResult? Function(BuildContext context)? syncData,
    TResult? Function()? syncDataInServer,
    TResult? Function(int savedTime)? addCurrentTimeStampToAllTasksLocally,
    TResult? Function(int index)? updateCurrentHomeIndex,
    TResult? Function()? resetSelectItems,
    TResult? Function(DateTime focusedDate, InternetState internetState)?
        updateFocusedDate,
    TResult? Function()? resetMessage,
    TResult? Function(String taskId, String fromSectionId, String sectionId,
            List<String> labels)?
        updateSection,
    TResult? Function(String taskId, List<String> labels)? updateTimer,
    TResult? Function(String taskId, List<String> labels)? updateTimerState,
    TResult? Function(String taskId, List<String> labels)? updateTimerLocally,
    TResult? Function(String taskId, List<String> labels)?
        updateTimerStateLocally,
    TResult? Function(String taskId, List<String> labels)? completeTask,
    TResult? Function(String taskId, List<String> labels)? reopenTask,
    TResult? Function(String taskId, List<String> labels)? startTask,
    TResult? Function(String taskId)? deleteTask,
    TResult? Function(AppLocalizations appLocalization)? deleteAllTask,
    TResult? Function(String commentId, String taskId)? deleteComment,
    TResult? Function(String id)? sortByDateDescending,
    TResult? Function(String id)? sortByNameDescending,
    TResult? Function(String id)? sortByNameAscending,
    TResult? Function(String id)? sortByDateAscending,
    TResult? Function(String id)? sortByPriorityDescending,
    TResult? Function(String id)? sortByPriorityAscending,
  }) {
    return updateSelectedTaskStatus?.call(tasksStatus);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TasksTags tasksTags)? updateSelectedTaskTag,
    TResult Function(int index)? removeSelectedTaskTag,
    TResult Function(TasksPriority taskPriority)? updateSelectedTaskPriority,
    TResult Function(TasksStatus tasksStatus)? updateSelectedTaskStatus,
    TResult Function(
            AppLocalizations appLocalization,
            String dueDate,
            String content,
            String description,
            void Function()? Function() onComplete)?
        addNewTask,
    TResult Function(
            AppLocalizations appLocalization,
            String dueDate,
            String content,
            String taskId,
            String description,
            void Function()? Function() onComplete)?
        updateFullTask,
    TResult Function(AppLocalizations appLocalization, String taskId,
            String content, void Function()? Function() onComplete)?
        addNewComment,
    TResult Function(
            AppLocalizations appLocalization,
            String taskId,
            String commentId,
            String content,
            void Function()? Function() onComplete)?
        updateComment,
    TResult Function(
            String taskId, bool isSyncing, InternetState internetState)?
        fetchAllComments,
    TResult Function(bool requiredReload, InternetState internetState)?
        fetchAllTasks,
    TResult Function(File? file)? setPickedFileForComment,
    TResult Function(BuildContext context)? syncData,
    TResult Function()? syncDataInServer,
    TResult Function(int savedTime)? addCurrentTimeStampToAllTasksLocally,
    TResult Function(int index)? updateCurrentHomeIndex,
    TResult Function()? resetSelectItems,
    TResult Function(DateTime focusedDate, InternetState internetState)?
        updateFocusedDate,
    TResult Function()? resetMessage,
    TResult Function(String taskId, String fromSectionId, String sectionId,
            List<String> labels)?
        updateSection,
    TResult Function(String taskId, List<String> labels)? updateTimer,
    TResult Function(String taskId, List<String> labels)? updateTimerState,
    TResult Function(String taskId, List<String> labels)? updateTimerLocally,
    TResult Function(String taskId, List<String> labels)?
        updateTimerStateLocally,
    TResult Function(String taskId, List<String> labels)? completeTask,
    TResult Function(String taskId, List<String> labels)? reopenTask,
    TResult Function(String taskId, List<String> labels)? startTask,
    TResult Function(String taskId)? deleteTask,
    TResult Function(AppLocalizations appLocalization)? deleteAllTask,
    TResult Function(String commentId, String taskId)? deleteComment,
    TResult Function(String id)? sortByDateDescending,
    TResult Function(String id)? sortByNameDescending,
    TResult Function(String id)? sortByNameAscending,
    TResult Function(String id)? sortByDateAscending,
    TResult Function(String id)? sortByPriorityDescending,
    TResult Function(String id)? sortByPriorityAscending,
    required TResult orElse(),
  }) {
    if (updateSelectedTaskStatus != null) {
      return updateSelectedTaskStatus(tasksStatus);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateSelectedTaskTag value)
        updateSelectedTaskTag,
    required TResult Function(_RemoveSelectedTaskTag value)
        removeSelectedTaskTag,
    required TResult Function(_UpdateSelectedTaskPriority value)
        updateSelectedTaskPriority,
    required TResult Function(_UpdateSelectedTaskStatus value)
        updateSelectedTaskStatus,
    required TResult Function(_AddNewTask value) addNewTask,
    required TResult Function(_AddFullTask value) updateFullTask,
    required TResult Function(_AddNewComment value) addNewComment,
    required TResult Function(_Updateomment value) updateComment,
    required TResult Function(_FetchAllComments value) fetchAllComments,
    required TResult Function(_FetchAllTasks value) fetchAllTasks,
    required TResult Function(_SetPickedFileForComment value)
        setPickedFileForComment,
    required TResult Function(_SyncData value) syncData,
    required TResult Function(_SyncDataInServer value) syncDataInServer,
    required TResult Function(_AddCurrentTimeStampToAllTasksLocally value)
        addCurrentTimeStampToAllTasksLocally,
    required TResult Function(_UpdateCurrentHomeIndex value)
        updateCurrentHomeIndex,
    required TResult Function(_ResetSelectItems value) resetSelectItems,
    required TResult Function(_UpdateFocusedDate value) updateFocusedDate,
    required TResult Function(_ResetMessage value) resetMessage,
    required TResult Function(_UpdateSection value) updateSection,
    required TResult Function(_UpdateTimer value) updateTimer,
    required TResult Function(_UpdateTimerState value) updateTimerState,
    required TResult Function(_UpdateTimerLocally value) updateTimerLocally,
    required TResult Function(_UpdateTimerStateLocally value)
        updateTimerStateLocally,
    required TResult Function(_CompleteTask value) completeTask,
    required TResult Function(_ReopenTaskTask value) reopenTask,
    required TResult Function(_StartTask value) startTask,
    required TResult Function(_DeleteTask value) deleteTask,
    required TResult Function(_DeleteAllTask value) deleteAllTask,
    required TResult Function(_DeleteComment value) deleteComment,
    required TResult Function(_SortByDateDescending value) sortByDateDescending,
    required TResult Function(_SortByNameDescending value) sortByNameDescending,
    required TResult Function(_SortByNameAscending value) sortByNameAscending,
    required TResult Function(_SortByDateAscending value) sortByDateAscending,
    required TResult Function(_SortByPriorityDescending value)
        sortByPriorityDescending,
    required TResult Function(_SortByPriorityAscending value)
        sortByPriorityAscending,
  }) {
    return updateSelectedTaskStatus(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateSelectedTaskTag value)? updateSelectedTaskTag,
    TResult? Function(_RemoveSelectedTaskTag value)? removeSelectedTaskTag,
    TResult? Function(_UpdateSelectedTaskPriority value)?
        updateSelectedTaskPriority,
    TResult? Function(_UpdateSelectedTaskStatus value)?
        updateSelectedTaskStatus,
    TResult? Function(_AddNewTask value)? addNewTask,
    TResult? Function(_AddFullTask value)? updateFullTask,
    TResult? Function(_AddNewComment value)? addNewComment,
    TResult? Function(_Updateomment value)? updateComment,
    TResult? Function(_FetchAllComments value)? fetchAllComments,
    TResult? Function(_FetchAllTasks value)? fetchAllTasks,
    TResult? Function(_SetPickedFileForComment value)? setPickedFileForComment,
    TResult? Function(_SyncData value)? syncData,
    TResult? Function(_SyncDataInServer value)? syncDataInServer,
    TResult? Function(_AddCurrentTimeStampToAllTasksLocally value)?
        addCurrentTimeStampToAllTasksLocally,
    TResult? Function(_UpdateCurrentHomeIndex value)? updateCurrentHomeIndex,
    TResult? Function(_ResetSelectItems value)? resetSelectItems,
    TResult? Function(_UpdateFocusedDate value)? updateFocusedDate,
    TResult? Function(_ResetMessage value)? resetMessage,
    TResult? Function(_UpdateSection value)? updateSection,
    TResult? Function(_UpdateTimer value)? updateTimer,
    TResult? Function(_UpdateTimerState value)? updateTimerState,
    TResult? Function(_UpdateTimerLocally value)? updateTimerLocally,
    TResult? Function(_UpdateTimerStateLocally value)? updateTimerStateLocally,
    TResult? Function(_CompleteTask value)? completeTask,
    TResult? Function(_ReopenTaskTask value)? reopenTask,
    TResult? Function(_StartTask value)? startTask,
    TResult? Function(_DeleteTask value)? deleteTask,
    TResult? Function(_DeleteAllTask value)? deleteAllTask,
    TResult? Function(_DeleteComment value)? deleteComment,
    TResult? Function(_SortByDateDescending value)? sortByDateDescending,
    TResult? Function(_SortByNameDescending value)? sortByNameDescending,
    TResult? Function(_SortByNameAscending value)? sortByNameAscending,
    TResult? Function(_SortByDateAscending value)? sortByDateAscending,
    TResult? Function(_SortByPriorityDescending value)?
        sortByPriorityDescending,
    TResult? Function(_SortByPriorityAscending value)? sortByPriorityAscending,
  }) {
    return updateSelectedTaskStatus?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateSelectedTaskTag value)? updateSelectedTaskTag,
    TResult Function(_RemoveSelectedTaskTag value)? removeSelectedTaskTag,
    TResult Function(_UpdateSelectedTaskPriority value)?
        updateSelectedTaskPriority,
    TResult Function(_UpdateSelectedTaskStatus value)? updateSelectedTaskStatus,
    TResult Function(_AddNewTask value)? addNewTask,
    TResult Function(_AddFullTask value)? updateFullTask,
    TResult Function(_AddNewComment value)? addNewComment,
    TResult Function(_Updateomment value)? updateComment,
    TResult Function(_FetchAllComments value)? fetchAllComments,
    TResult Function(_FetchAllTasks value)? fetchAllTasks,
    TResult Function(_SetPickedFileForComment value)? setPickedFileForComment,
    TResult Function(_SyncData value)? syncData,
    TResult Function(_SyncDataInServer value)? syncDataInServer,
    TResult Function(_AddCurrentTimeStampToAllTasksLocally value)?
        addCurrentTimeStampToAllTasksLocally,
    TResult Function(_UpdateCurrentHomeIndex value)? updateCurrentHomeIndex,
    TResult Function(_ResetSelectItems value)? resetSelectItems,
    TResult Function(_UpdateFocusedDate value)? updateFocusedDate,
    TResult Function(_ResetMessage value)? resetMessage,
    TResult Function(_UpdateSection value)? updateSection,
    TResult Function(_UpdateTimer value)? updateTimer,
    TResult Function(_UpdateTimerState value)? updateTimerState,
    TResult Function(_UpdateTimerLocally value)? updateTimerLocally,
    TResult Function(_UpdateTimerStateLocally value)? updateTimerStateLocally,
    TResult Function(_CompleteTask value)? completeTask,
    TResult Function(_ReopenTaskTask value)? reopenTask,
    TResult Function(_StartTask value)? startTask,
    TResult Function(_DeleteTask value)? deleteTask,
    TResult Function(_DeleteAllTask value)? deleteAllTask,
    TResult Function(_DeleteComment value)? deleteComment,
    TResult Function(_SortByDateDescending value)? sortByDateDescending,
    TResult Function(_SortByNameDescending value)? sortByNameDescending,
    TResult Function(_SortByNameAscending value)? sortByNameAscending,
    TResult Function(_SortByDateAscending value)? sortByDateAscending,
    TResult Function(_SortByPriorityDescending value)? sortByPriorityDescending,
    TResult Function(_SortByPriorityAscending value)? sortByPriorityAscending,
    required TResult orElse(),
  }) {
    if (updateSelectedTaskStatus != null) {
      return updateSelectedTaskStatus(this);
    }
    return orElse();
  }
}

abstract class _UpdateSelectedTaskStatus implements HomeEvent {
  const factory _UpdateSelectedTaskStatus(
          {required final TasksStatus tasksStatus}) =
      _$UpdateSelectedTaskStatusImpl;

  TasksStatus get tasksStatus;
  @JsonKey(ignore: true)
  _$$UpdateSelectedTaskStatusImplCopyWith<_$UpdateSelectedTaskStatusImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddNewTaskImplCopyWith<$Res> {
  factory _$$AddNewTaskImplCopyWith(
          _$AddNewTaskImpl value, $Res Function(_$AddNewTaskImpl) then) =
      __$$AddNewTaskImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {AppLocalizations appLocalization,
      String dueDate,
      String content,
      String description,
      void Function()? Function() onComplete});
}

/// @nodoc
class __$$AddNewTaskImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$AddNewTaskImpl>
    implements _$$AddNewTaskImplCopyWith<$Res> {
  __$$AddNewTaskImplCopyWithImpl(
      _$AddNewTaskImpl _value, $Res Function(_$AddNewTaskImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appLocalization = freezed,
    Object? dueDate = null,
    Object? content = null,
    Object? description = null,
    Object? onComplete = null,
  }) {
    return _then(_$AddNewTaskImpl(
      appLocalization: freezed == appLocalization
          ? _value.appLocalization
          : appLocalization // ignore: cast_nullable_to_non_nullable
              as AppLocalizations,
      dueDate: null == dueDate
          ? _value.dueDate
          : dueDate // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      onComplete: null == onComplete
          ? _value.onComplete
          : onComplete // ignore: cast_nullable_to_non_nullable
              as void Function()? Function(),
    ));
  }
}

/// @nodoc

class _$AddNewTaskImpl implements _AddNewTask {
  const _$AddNewTaskImpl(
      {required this.appLocalization,
      required this.dueDate,
      required this.content,
      required this.description,
      required this.onComplete});

  @override
  final AppLocalizations appLocalization;
  @override
  final String dueDate;
  @override
  final String content;
  @override
  final String description;
  @override
  final void Function()? Function() onComplete;

  @override
  String toString() {
    return 'HomeEvent.addNewTask(appLocalization: $appLocalization, dueDate: $dueDate, content: $content, description: $description, onComplete: $onComplete)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddNewTaskImpl &&
            const DeepCollectionEquality()
                .equals(other.appLocalization, appLocalization) &&
            (identical(other.dueDate, dueDate) || other.dueDate == dueDate) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.onComplete, onComplete) ||
                other.onComplete == onComplete));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(appLocalization),
      dueDate,
      content,
      description,
      onComplete);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddNewTaskImplCopyWith<_$AddNewTaskImpl> get copyWith =>
      __$$AddNewTaskImplCopyWithImpl<_$AddNewTaskImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TasksTags tasksTags) updateSelectedTaskTag,
    required TResult Function(int index) removeSelectedTaskTag,
    required TResult Function(TasksPriority taskPriority)
        updateSelectedTaskPriority,
    required TResult Function(TasksStatus tasksStatus) updateSelectedTaskStatus,
    required TResult Function(
            AppLocalizations appLocalization,
            String dueDate,
            String content,
            String description,
            void Function()? Function() onComplete)
        addNewTask,
    required TResult Function(
            AppLocalizations appLocalization,
            String dueDate,
            String content,
            String taskId,
            String description,
            void Function()? Function() onComplete)
        updateFullTask,
    required TResult Function(AppLocalizations appLocalization, String taskId,
            String content, void Function()? Function() onComplete)
        addNewComment,
    required TResult Function(
            AppLocalizations appLocalization,
            String taskId,
            String commentId,
            String content,
            void Function()? Function() onComplete)
        updateComment,
    required TResult Function(
            String taskId, bool isSyncing, InternetState internetState)
        fetchAllComments,
    required TResult Function(bool requiredReload, InternetState internetState)
        fetchAllTasks,
    required TResult Function(File? file) setPickedFileForComment,
    required TResult Function(BuildContext context) syncData,
    required TResult Function() syncDataInServer,
    required TResult Function(int savedTime)
        addCurrentTimeStampToAllTasksLocally,
    required TResult Function(int index) updateCurrentHomeIndex,
    required TResult Function() resetSelectItems,
    required TResult Function(DateTime focusedDate, InternetState internetState)
        updateFocusedDate,
    required TResult Function() resetMessage,
    required TResult Function(String taskId, String fromSectionId,
            String sectionId, List<String> labels)
        updateSection,
    required TResult Function(String taskId, List<String> labels) updateTimer,
    required TResult Function(String taskId, List<String> labels)
        updateTimerState,
    required TResult Function(String taskId, List<String> labels)
        updateTimerLocally,
    required TResult Function(String taskId, List<String> labels)
        updateTimerStateLocally,
    required TResult Function(String taskId, List<String> labels) completeTask,
    required TResult Function(String taskId, List<String> labels) reopenTask,
    required TResult Function(String taskId, List<String> labels) startTask,
    required TResult Function(String taskId) deleteTask,
    required TResult Function(AppLocalizations appLocalization) deleteAllTask,
    required TResult Function(String commentId, String taskId) deleteComment,
    required TResult Function(String id) sortByDateDescending,
    required TResult Function(String id) sortByNameDescending,
    required TResult Function(String id) sortByNameAscending,
    required TResult Function(String id) sortByDateAscending,
    required TResult Function(String id) sortByPriorityDescending,
    required TResult Function(String id) sortByPriorityAscending,
  }) {
    return addNewTask(
        appLocalization, dueDate, content, description, onComplete);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TasksTags tasksTags)? updateSelectedTaskTag,
    TResult? Function(int index)? removeSelectedTaskTag,
    TResult? Function(TasksPriority taskPriority)? updateSelectedTaskPriority,
    TResult? Function(TasksStatus tasksStatus)? updateSelectedTaskStatus,
    TResult? Function(
            AppLocalizations appLocalization,
            String dueDate,
            String content,
            String description,
            void Function()? Function() onComplete)?
        addNewTask,
    TResult? Function(
            AppLocalizations appLocalization,
            String dueDate,
            String content,
            String taskId,
            String description,
            void Function()? Function() onComplete)?
        updateFullTask,
    TResult? Function(AppLocalizations appLocalization, String taskId,
            String content, void Function()? Function() onComplete)?
        addNewComment,
    TResult? Function(
            AppLocalizations appLocalization,
            String taskId,
            String commentId,
            String content,
            void Function()? Function() onComplete)?
        updateComment,
    TResult? Function(
            String taskId, bool isSyncing, InternetState internetState)?
        fetchAllComments,
    TResult? Function(bool requiredReload, InternetState internetState)?
        fetchAllTasks,
    TResult? Function(File? file)? setPickedFileForComment,
    TResult? Function(BuildContext context)? syncData,
    TResult? Function()? syncDataInServer,
    TResult? Function(int savedTime)? addCurrentTimeStampToAllTasksLocally,
    TResult? Function(int index)? updateCurrentHomeIndex,
    TResult? Function()? resetSelectItems,
    TResult? Function(DateTime focusedDate, InternetState internetState)?
        updateFocusedDate,
    TResult? Function()? resetMessage,
    TResult? Function(String taskId, String fromSectionId, String sectionId,
            List<String> labels)?
        updateSection,
    TResult? Function(String taskId, List<String> labels)? updateTimer,
    TResult? Function(String taskId, List<String> labels)? updateTimerState,
    TResult? Function(String taskId, List<String> labels)? updateTimerLocally,
    TResult? Function(String taskId, List<String> labels)?
        updateTimerStateLocally,
    TResult? Function(String taskId, List<String> labels)? completeTask,
    TResult? Function(String taskId, List<String> labels)? reopenTask,
    TResult? Function(String taskId, List<String> labels)? startTask,
    TResult? Function(String taskId)? deleteTask,
    TResult? Function(AppLocalizations appLocalization)? deleteAllTask,
    TResult? Function(String commentId, String taskId)? deleteComment,
    TResult? Function(String id)? sortByDateDescending,
    TResult? Function(String id)? sortByNameDescending,
    TResult? Function(String id)? sortByNameAscending,
    TResult? Function(String id)? sortByDateAscending,
    TResult? Function(String id)? sortByPriorityDescending,
    TResult? Function(String id)? sortByPriorityAscending,
  }) {
    return addNewTask?.call(
        appLocalization, dueDate, content, description, onComplete);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TasksTags tasksTags)? updateSelectedTaskTag,
    TResult Function(int index)? removeSelectedTaskTag,
    TResult Function(TasksPriority taskPriority)? updateSelectedTaskPriority,
    TResult Function(TasksStatus tasksStatus)? updateSelectedTaskStatus,
    TResult Function(
            AppLocalizations appLocalization,
            String dueDate,
            String content,
            String description,
            void Function()? Function() onComplete)?
        addNewTask,
    TResult Function(
            AppLocalizations appLocalization,
            String dueDate,
            String content,
            String taskId,
            String description,
            void Function()? Function() onComplete)?
        updateFullTask,
    TResult Function(AppLocalizations appLocalization, String taskId,
            String content, void Function()? Function() onComplete)?
        addNewComment,
    TResult Function(
            AppLocalizations appLocalization,
            String taskId,
            String commentId,
            String content,
            void Function()? Function() onComplete)?
        updateComment,
    TResult Function(
            String taskId, bool isSyncing, InternetState internetState)?
        fetchAllComments,
    TResult Function(bool requiredReload, InternetState internetState)?
        fetchAllTasks,
    TResult Function(File? file)? setPickedFileForComment,
    TResult Function(BuildContext context)? syncData,
    TResult Function()? syncDataInServer,
    TResult Function(int savedTime)? addCurrentTimeStampToAllTasksLocally,
    TResult Function(int index)? updateCurrentHomeIndex,
    TResult Function()? resetSelectItems,
    TResult Function(DateTime focusedDate, InternetState internetState)?
        updateFocusedDate,
    TResult Function()? resetMessage,
    TResult Function(String taskId, String fromSectionId, String sectionId,
            List<String> labels)?
        updateSection,
    TResult Function(String taskId, List<String> labels)? updateTimer,
    TResult Function(String taskId, List<String> labels)? updateTimerState,
    TResult Function(String taskId, List<String> labels)? updateTimerLocally,
    TResult Function(String taskId, List<String> labels)?
        updateTimerStateLocally,
    TResult Function(String taskId, List<String> labels)? completeTask,
    TResult Function(String taskId, List<String> labels)? reopenTask,
    TResult Function(String taskId, List<String> labels)? startTask,
    TResult Function(String taskId)? deleteTask,
    TResult Function(AppLocalizations appLocalization)? deleteAllTask,
    TResult Function(String commentId, String taskId)? deleteComment,
    TResult Function(String id)? sortByDateDescending,
    TResult Function(String id)? sortByNameDescending,
    TResult Function(String id)? sortByNameAscending,
    TResult Function(String id)? sortByDateAscending,
    TResult Function(String id)? sortByPriorityDescending,
    TResult Function(String id)? sortByPriorityAscending,
    required TResult orElse(),
  }) {
    if (addNewTask != null) {
      return addNewTask(
          appLocalization, dueDate, content, description, onComplete);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateSelectedTaskTag value)
        updateSelectedTaskTag,
    required TResult Function(_RemoveSelectedTaskTag value)
        removeSelectedTaskTag,
    required TResult Function(_UpdateSelectedTaskPriority value)
        updateSelectedTaskPriority,
    required TResult Function(_UpdateSelectedTaskStatus value)
        updateSelectedTaskStatus,
    required TResult Function(_AddNewTask value) addNewTask,
    required TResult Function(_AddFullTask value) updateFullTask,
    required TResult Function(_AddNewComment value) addNewComment,
    required TResult Function(_Updateomment value) updateComment,
    required TResult Function(_FetchAllComments value) fetchAllComments,
    required TResult Function(_FetchAllTasks value) fetchAllTasks,
    required TResult Function(_SetPickedFileForComment value)
        setPickedFileForComment,
    required TResult Function(_SyncData value) syncData,
    required TResult Function(_SyncDataInServer value) syncDataInServer,
    required TResult Function(_AddCurrentTimeStampToAllTasksLocally value)
        addCurrentTimeStampToAllTasksLocally,
    required TResult Function(_UpdateCurrentHomeIndex value)
        updateCurrentHomeIndex,
    required TResult Function(_ResetSelectItems value) resetSelectItems,
    required TResult Function(_UpdateFocusedDate value) updateFocusedDate,
    required TResult Function(_ResetMessage value) resetMessage,
    required TResult Function(_UpdateSection value) updateSection,
    required TResult Function(_UpdateTimer value) updateTimer,
    required TResult Function(_UpdateTimerState value) updateTimerState,
    required TResult Function(_UpdateTimerLocally value) updateTimerLocally,
    required TResult Function(_UpdateTimerStateLocally value)
        updateTimerStateLocally,
    required TResult Function(_CompleteTask value) completeTask,
    required TResult Function(_ReopenTaskTask value) reopenTask,
    required TResult Function(_StartTask value) startTask,
    required TResult Function(_DeleteTask value) deleteTask,
    required TResult Function(_DeleteAllTask value) deleteAllTask,
    required TResult Function(_DeleteComment value) deleteComment,
    required TResult Function(_SortByDateDescending value) sortByDateDescending,
    required TResult Function(_SortByNameDescending value) sortByNameDescending,
    required TResult Function(_SortByNameAscending value) sortByNameAscending,
    required TResult Function(_SortByDateAscending value) sortByDateAscending,
    required TResult Function(_SortByPriorityDescending value)
        sortByPriorityDescending,
    required TResult Function(_SortByPriorityAscending value)
        sortByPriorityAscending,
  }) {
    return addNewTask(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateSelectedTaskTag value)? updateSelectedTaskTag,
    TResult? Function(_RemoveSelectedTaskTag value)? removeSelectedTaskTag,
    TResult? Function(_UpdateSelectedTaskPriority value)?
        updateSelectedTaskPriority,
    TResult? Function(_UpdateSelectedTaskStatus value)?
        updateSelectedTaskStatus,
    TResult? Function(_AddNewTask value)? addNewTask,
    TResult? Function(_AddFullTask value)? updateFullTask,
    TResult? Function(_AddNewComment value)? addNewComment,
    TResult? Function(_Updateomment value)? updateComment,
    TResult? Function(_FetchAllComments value)? fetchAllComments,
    TResult? Function(_FetchAllTasks value)? fetchAllTasks,
    TResult? Function(_SetPickedFileForComment value)? setPickedFileForComment,
    TResult? Function(_SyncData value)? syncData,
    TResult? Function(_SyncDataInServer value)? syncDataInServer,
    TResult? Function(_AddCurrentTimeStampToAllTasksLocally value)?
        addCurrentTimeStampToAllTasksLocally,
    TResult? Function(_UpdateCurrentHomeIndex value)? updateCurrentHomeIndex,
    TResult? Function(_ResetSelectItems value)? resetSelectItems,
    TResult? Function(_UpdateFocusedDate value)? updateFocusedDate,
    TResult? Function(_ResetMessage value)? resetMessage,
    TResult? Function(_UpdateSection value)? updateSection,
    TResult? Function(_UpdateTimer value)? updateTimer,
    TResult? Function(_UpdateTimerState value)? updateTimerState,
    TResult? Function(_UpdateTimerLocally value)? updateTimerLocally,
    TResult? Function(_UpdateTimerStateLocally value)? updateTimerStateLocally,
    TResult? Function(_CompleteTask value)? completeTask,
    TResult? Function(_ReopenTaskTask value)? reopenTask,
    TResult? Function(_StartTask value)? startTask,
    TResult? Function(_DeleteTask value)? deleteTask,
    TResult? Function(_DeleteAllTask value)? deleteAllTask,
    TResult? Function(_DeleteComment value)? deleteComment,
    TResult? Function(_SortByDateDescending value)? sortByDateDescending,
    TResult? Function(_SortByNameDescending value)? sortByNameDescending,
    TResult? Function(_SortByNameAscending value)? sortByNameAscending,
    TResult? Function(_SortByDateAscending value)? sortByDateAscending,
    TResult? Function(_SortByPriorityDescending value)?
        sortByPriorityDescending,
    TResult? Function(_SortByPriorityAscending value)? sortByPriorityAscending,
  }) {
    return addNewTask?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateSelectedTaskTag value)? updateSelectedTaskTag,
    TResult Function(_RemoveSelectedTaskTag value)? removeSelectedTaskTag,
    TResult Function(_UpdateSelectedTaskPriority value)?
        updateSelectedTaskPriority,
    TResult Function(_UpdateSelectedTaskStatus value)? updateSelectedTaskStatus,
    TResult Function(_AddNewTask value)? addNewTask,
    TResult Function(_AddFullTask value)? updateFullTask,
    TResult Function(_AddNewComment value)? addNewComment,
    TResult Function(_Updateomment value)? updateComment,
    TResult Function(_FetchAllComments value)? fetchAllComments,
    TResult Function(_FetchAllTasks value)? fetchAllTasks,
    TResult Function(_SetPickedFileForComment value)? setPickedFileForComment,
    TResult Function(_SyncData value)? syncData,
    TResult Function(_SyncDataInServer value)? syncDataInServer,
    TResult Function(_AddCurrentTimeStampToAllTasksLocally value)?
        addCurrentTimeStampToAllTasksLocally,
    TResult Function(_UpdateCurrentHomeIndex value)? updateCurrentHomeIndex,
    TResult Function(_ResetSelectItems value)? resetSelectItems,
    TResult Function(_UpdateFocusedDate value)? updateFocusedDate,
    TResult Function(_ResetMessage value)? resetMessage,
    TResult Function(_UpdateSection value)? updateSection,
    TResult Function(_UpdateTimer value)? updateTimer,
    TResult Function(_UpdateTimerState value)? updateTimerState,
    TResult Function(_UpdateTimerLocally value)? updateTimerLocally,
    TResult Function(_UpdateTimerStateLocally value)? updateTimerStateLocally,
    TResult Function(_CompleteTask value)? completeTask,
    TResult Function(_ReopenTaskTask value)? reopenTask,
    TResult Function(_StartTask value)? startTask,
    TResult Function(_DeleteTask value)? deleteTask,
    TResult Function(_DeleteAllTask value)? deleteAllTask,
    TResult Function(_DeleteComment value)? deleteComment,
    TResult Function(_SortByDateDescending value)? sortByDateDescending,
    TResult Function(_SortByNameDescending value)? sortByNameDescending,
    TResult Function(_SortByNameAscending value)? sortByNameAscending,
    TResult Function(_SortByDateAscending value)? sortByDateAscending,
    TResult Function(_SortByPriorityDescending value)? sortByPriorityDescending,
    TResult Function(_SortByPriorityAscending value)? sortByPriorityAscending,
    required TResult orElse(),
  }) {
    if (addNewTask != null) {
      return addNewTask(this);
    }
    return orElse();
  }
}

abstract class _AddNewTask implements HomeEvent {
  const factory _AddNewTask(
          {required final AppLocalizations appLocalization,
          required final String dueDate,
          required final String content,
          required final String description,
          required final void Function()? Function() onComplete}) =
      _$AddNewTaskImpl;

  AppLocalizations get appLocalization;
  String get dueDate;
  String get content;
  String get description;
  void Function()? Function() get onComplete;
  @JsonKey(ignore: true)
  _$$AddNewTaskImplCopyWith<_$AddNewTaskImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddFullTaskImplCopyWith<$Res> {
  factory _$$AddFullTaskImplCopyWith(
          _$AddFullTaskImpl value, $Res Function(_$AddFullTaskImpl) then) =
      __$$AddFullTaskImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {AppLocalizations appLocalization,
      String dueDate,
      String content,
      String taskId,
      String description,
      void Function()? Function() onComplete});
}

/// @nodoc
class __$$AddFullTaskImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$AddFullTaskImpl>
    implements _$$AddFullTaskImplCopyWith<$Res> {
  __$$AddFullTaskImplCopyWithImpl(
      _$AddFullTaskImpl _value, $Res Function(_$AddFullTaskImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appLocalization = freezed,
    Object? dueDate = null,
    Object? content = null,
    Object? taskId = null,
    Object? description = null,
    Object? onComplete = null,
  }) {
    return _then(_$AddFullTaskImpl(
      appLocalization: freezed == appLocalization
          ? _value.appLocalization
          : appLocalization // ignore: cast_nullable_to_non_nullable
              as AppLocalizations,
      dueDate: null == dueDate
          ? _value.dueDate
          : dueDate // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      taskId: null == taskId
          ? _value.taskId
          : taskId // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      onComplete: null == onComplete
          ? _value.onComplete
          : onComplete // ignore: cast_nullable_to_non_nullable
              as void Function()? Function(),
    ));
  }
}

/// @nodoc

class _$AddFullTaskImpl implements _AddFullTask {
  const _$AddFullTaskImpl(
      {required this.appLocalization,
      required this.dueDate,
      required this.content,
      required this.taskId,
      required this.description,
      required this.onComplete});

  @override
  final AppLocalizations appLocalization;
  @override
  final String dueDate;
  @override
  final String content;
  @override
  final String taskId;
  @override
  final String description;
  @override
  final void Function()? Function() onComplete;

  @override
  String toString() {
    return 'HomeEvent.updateFullTask(appLocalization: $appLocalization, dueDate: $dueDate, content: $content, taskId: $taskId, description: $description, onComplete: $onComplete)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddFullTaskImpl &&
            const DeepCollectionEquality()
                .equals(other.appLocalization, appLocalization) &&
            (identical(other.dueDate, dueDate) || other.dueDate == dueDate) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.taskId, taskId) || other.taskId == taskId) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.onComplete, onComplete) ||
                other.onComplete == onComplete));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(appLocalization),
      dueDate,
      content,
      taskId,
      description,
      onComplete);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddFullTaskImplCopyWith<_$AddFullTaskImpl> get copyWith =>
      __$$AddFullTaskImplCopyWithImpl<_$AddFullTaskImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TasksTags tasksTags) updateSelectedTaskTag,
    required TResult Function(int index) removeSelectedTaskTag,
    required TResult Function(TasksPriority taskPriority)
        updateSelectedTaskPriority,
    required TResult Function(TasksStatus tasksStatus) updateSelectedTaskStatus,
    required TResult Function(
            AppLocalizations appLocalization,
            String dueDate,
            String content,
            String description,
            void Function()? Function() onComplete)
        addNewTask,
    required TResult Function(
            AppLocalizations appLocalization,
            String dueDate,
            String content,
            String taskId,
            String description,
            void Function()? Function() onComplete)
        updateFullTask,
    required TResult Function(AppLocalizations appLocalization, String taskId,
            String content, void Function()? Function() onComplete)
        addNewComment,
    required TResult Function(
            AppLocalizations appLocalization,
            String taskId,
            String commentId,
            String content,
            void Function()? Function() onComplete)
        updateComment,
    required TResult Function(
            String taskId, bool isSyncing, InternetState internetState)
        fetchAllComments,
    required TResult Function(bool requiredReload, InternetState internetState)
        fetchAllTasks,
    required TResult Function(File? file) setPickedFileForComment,
    required TResult Function(BuildContext context) syncData,
    required TResult Function() syncDataInServer,
    required TResult Function(int savedTime)
        addCurrentTimeStampToAllTasksLocally,
    required TResult Function(int index) updateCurrentHomeIndex,
    required TResult Function() resetSelectItems,
    required TResult Function(DateTime focusedDate, InternetState internetState)
        updateFocusedDate,
    required TResult Function() resetMessage,
    required TResult Function(String taskId, String fromSectionId,
            String sectionId, List<String> labels)
        updateSection,
    required TResult Function(String taskId, List<String> labels) updateTimer,
    required TResult Function(String taskId, List<String> labels)
        updateTimerState,
    required TResult Function(String taskId, List<String> labels)
        updateTimerLocally,
    required TResult Function(String taskId, List<String> labels)
        updateTimerStateLocally,
    required TResult Function(String taskId, List<String> labels) completeTask,
    required TResult Function(String taskId, List<String> labels) reopenTask,
    required TResult Function(String taskId, List<String> labels) startTask,
    required TResult Function(String taskId) deleteTask,
    required TResult Function(AppLocalizations appLocalization) deleteAllTask,
    required TResult Function(String commentId, String taskId) deleteComment,
    required TResult Function(String id) sortByDateDescending,
    required TResult Function(String id) sortByNameDescending,
    required TResult Function(String id) sortByNameAscending,
    required TResult Function(String id) sortByDateAscending,
    required TResult Function(String id) sortByPriorityDescending,
    required TResult Function(String id) sortByPriorityAscending,
  }) {
    return updateFullTask(
        appLocalization, dueDate, content, taskId, description, onComplete);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TasksTags tasksTags)? updateSelectedTaskTag,
    TResult? Function(int index)? removeSelectedTaskTag,
    TResult? Function(TasksPriority taskPriority)? updateSelectedTaskPriority,
    TResult? Function(TasksStatus tasksStatus)? updateSelectedTaskStatus,
    TResult? Function(
            AppLocalizations appLocalization,
            String dueDate,
            String content,
            String description,
            void Function()? Function() onComplete)?
        addNewTask,
    TResult? Function(
            AppLocalizations appLocalization,
            String dueDate,
            String content,
            String taskId,
            String description,
            void Function()? Function() onComplete)?
        updateFullTask,
    TResult? Function(AppLocalizations appLocalization, String taskId,
            String content, void Function()? Function() onComplete)?
        addNewComment,
    TResult? Function(
            AppLocalizations appLocalization,
            String taskId,
            String commentId,
            String content,
            void Function()? Function() onComplete)?
        updateComment,
    TResult? Function(
            String taskId, bool isSyncing, InternetState internetState)?
        fetchAllComments,
    TResult? Function(bool requiredReload, InternetState internetState)?
        fetchAllTasks,
    TResult? Function(File? file)? setPickedFileForComment,
    TResult? Function(BuildContext context)? syncData,
    TResult? Function()? syncDataInServer,
    TResult? Function(int savedTime)? addCurrentTimeStampToAllTasksLocally,
    TResult? Function(int index)? updateCurrentHomeIndex,
    TResult? Function()? resetSelectItems,
    TResult? Function(DateTime focusedDate, InternetState internetState)?
        updateFocusedDate,
    TResult? Function()? resetMessage,
    TResult? Function(String taskId, String fromSectionId, String sectionId,
            List<String> labels)?
        updateSection,
    TResult? Function(String taskId, List<String> labels)? updateTimer,
    TResult? Function(String taskId, List<String> labels)? updateTimerState,
    TResult? Function(String taskId, List<String> labels)? updateTimerLocally,
    TResult? Function(String taskId, List<String> labels)?
        updateTimerStateLocally,
    TResult? Function(String taskId, List<String> labels)? completeTask,
    TResult? Function(String taskId, List<String> labels)? reopenTask,
    TResult? Function(String taskId, List<String> labels)? startTask,
    TResult? Function(String taskId)? deleteTask,
    TResult? Function(AppLocalizations appLocalization)? deleteAllTask,
    TResult? Function(String commentId, String taskId)? deleteComment,
    TResult? Function(String id)? sortByDateDescending,
    TResult? Function(String id)? sortByNameDescending,
    TResult? Function(String id)? sortByNameAscending,
    TResult? Function(String id)? sortByDateAscending,
    TResult? Function(String id)? sortByPriorityDescending,
    TResult? Function(String id)? sortByPriorityAscending,
  }) {
    return updateFullTask?.call(
        appLocalization, dueDate, content, taskId, description, onComplete);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TasksTags tasksTags)? updateSelectedTaskTag,
    TResult Function(int index)? removeSelectedTaskTag,
    TResult Function(TasksPriority taskPriority)? updateSelectedTaskPriority,
    TResult Function(TasksStatus tasksStatus)? updateSelectedTaskStatus,
    TResult Function(
            AppLocalizations appLocalization,
            String dueDate,
            String content,
            String description,
            void Function()? Function() onComplete)?
        addNewTask,
    TResult Function(
            AppLocalizations appLocalization,
            String dueDate,
            String content,
            String taskId,
            String description,
            void Function()? Function() onComplete)?
        updateFullTask,
    TResult Function(AppLocalizations appLocalization, String taskId,
            String content, void Function()? Function() onComplete)?
        addNewComment,
    TResult Function(
            AppLocalizations appLocalization,
            String taskId,
            String commentId,
            String content,
            void Function()? Function() onComplete)?
        updateComment,
    TResult Function(
            String taskId, bool isSyncing, InternetState internetState)?
        fetchAllComments,
    TResult Function(bool requiredReload, InternetState internetState)?
        fetchAllTasks,
    TResult Function(File? file)? setPickedFileForComment,
    TResult Function(BuildContext context)? syncData,
    TResult Function()? syncDataInServer,
    TResult Function(int savedTime)? addCurrentTimeStampToAllTasksLocally,
    TResult Function(int index)? updateCurrentHomeIndex,
    TResult Function()? resetSelectItems,
    TResult Function(DateTime focusedDate, InternetState internetState)?
        updateFocusedDate,
    TResult Function()? resetMessage,
    TResult Function(String taskId, String fromSectionId, String sectionId,
            List<String> labels)?
        updateSection,
    TResult Function(String taskId, List<String> labels)? updateTimer,
    TResult Function(String taskId, List<String> labels)? updateTimerState,
    TResult Function(String taskId, List<String> labels)? updateTimerLocally,
    TResult Function(String taskId, List<String> labels)?
        updateTimerStateLocally,
    TResult Function(String taskId, List<String> labels)? completeTask,
    TResult Function(String taskId, List<String> labels)? reopenTask,
    TResult Function(String taskId, List<String> labels)? startTask,
    TResult Function(String taskId)? deleteTask,
    TResult Function(AppLocalizations appLocalization)? deleteAllTask,
    TResult Function(String commentId, String taskId)? deleteComment,
    TResult Function(String id)? sortByDateDescending,
    TResult Function(String id)? sortByNameDescending,
    TResult Function(String id)? sortByNameAscending,
    TResult Function(String id)? sortByDateAscending,
    TResult Function(String id)? sortByPriorityDescending,
    TResult Function(String id)? sortByPriorityAscending,
    required TResult orElse(),
  }) {
    if (updateFullTask != null) {
      return updateFullTask(
          appLocalization, dueDate, content, taskId, description, onComplete);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateSelectedTaskTag value)
        updateSelectedTaskTag,
    required TResult Function(_RemoveSelectedTaskTag value)
        removeSelectedTaskTag,
    required TResult Function(_UpdateSelectedTaskPriority value)
        updateSelectedTaskPriority,
    required TResult Function(_UpdateSelectedTaskStatus value)
        updateSelectedTaskStatus,
    required TResult Function(_AddNewTask value) addNewTask,
    required TResult Function(_AddFullTask value) updateFullTask,
    required TResult Function(_AddNewComment value) addNewComment,
    required TResult Function(_Updateomment value) updateComment,
    required TResult Function(_FetchAllComments value) fetchAllComments,
    required TResult Function(_FetchAllTasks value) fetchAllTasks,
    required TResult Function(_SetPickedFileForComment value)
        setPickedFileForComment,
    required TResult Function(_SyncData value) syncData,
    required TResult Function(_SyncDataInServer value) syncDataInServer,
    required TResult Function(_AddCurrentTimeStampToAllTasksLocally value)
        addCurrentTimeStampToAllTasksLocally,
    required TResult Function(_UpdateCurrentHomeIndex value)
        updateCurrentHomeIndex,
    required TResult Function(_ResetSelectItems value) resetSelectItems,
    required TResult Function(_UpdateFocusedDate value) updateFocusedDate,
    required TResult Function(_ResetMessage value) resetMessage,
    required TResult Function(_UpdateSection value) updateSection,
    required TResult Function(_UpdateTimer value) updateTimer,
    required TResult Function(_UpdateTimerState value) updateTimerState,
    required TResult Function(_UpdateTimerLocally value) updateTimerLocally,
    required TResult Function(_UpdateTimerStateLocally value)
        updateTimerStateLocally,
    required TResult Function(_CompleteTask value) completeTask,
    required TResult Function(_ReopenTaskTask value) reopenTask,
    required TResult Function(_StartTask value) startTask,
    required TResult Function(_DeleteTask value) deleteTask,
    required TResult Function(_DeleteAllTask value) deleteAllTask,
    required TResult Function(_DeleteComment value) deleteComment,
    required TResult Function(_SortByDateDescending value) sortByDateDescending,
    required TResult Function(_SortByNameDescending value) sortByNameDescending,
    required TResult Function(_SortByNameAscending value) sortByNameAscending,
    required TResult Function(_SortByDateAscending value) sortByDateAscending,
    required TResult Function(_SortByPriorityDescending value)
        sortByPriorityDescending,
    required TResult Function(_SortByPriorityAscending value)
        sortByPriorityAscending,
  }) {
    return updateFullTask(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateSelectedTaskTag value)? updateSelectedTaskTag,
    TResult? Function(_RemoveSelectedTaskTag value)? removeSelectedTaskTag,
    TResult? Function(_UpdateSelectedTaskPriority value)?
        updateSelectedTaskPriority,
    TResult? Function(_UpdateSelectedTaskStatus value)?
        updateSelectedTaskStatus,
    TResult? Function(_AddNewTask value)? addNewTask,
    TResult? Function(_AddFullTask value)? updateFullTask,
    TResult? Function(_AddNewComment value)? addNewComment,
    TResult? Function(_Updateomment value)? updateComment,
    TResult? Function(_FetchAllComments value)? fetchAllComments,
    TResult? Function(_FetchAllTasks value)? fetchAllTasks,
    TResult? Function(_SetPickedFileForComment value)? setPickedFileForComment,
    TResult? Function(_SyncData value)? syncData,
    TResult? Function(_SyncDataInServer value)? syncDataInServer,
    TResult? Function(_AddCurrentTimeStampToAllTasksLocally value)?
        addCurrentTimeStampToAllTasksLocally,
    TResult? Function(_UpdateCurrentHomeIndex value)? updateCurrentHomeIndex,
    TResult? Function(_ResetSelectItems value)? resetSelectItems,
    TResult? Function(_UpdateFocusedDate value)? updateFocusedDate,
    TResult? Function(_ResetMessage value)? resetMessage,
    TResult? Function(_UpdateSection value)? updateSection,
    TResult? Function(_UpdateTimer value)? updateTimer,
    TResult? Function(_UpdateTimerState value)? updateTimerState,
    TResult? Function(_UpdateTimerLocally value)? updateTimerLocally,
    TResult? Function(_UpdateTimerStateLocally value)? updateTimerStateLocally,
    TResult? Function(_CompleteTask value)? completeTask,
    TResult? Function(_ReopenTaskTask value)? reopenTask,
    TResult? Function(_StartTask value)? startTask,
    TResult? Function(_DeleteTask value)? deleteTask,
    TResult? Function(_DeleteAllTask value)? deleteAllTask,
    TResult? Function(_DeleteComment value)? deleteComment,
    TResult? Function(_SortByDateDescending value)? sortByDateDescending,
    TResult? Function(_SortByNameDescending value)? sortByNameDescending,
    TResult? Function(_SortByNameAscending value)? sortByNameAscending,
    TResult? Function(_SortByDateAscending value)? sortByDateAscending,
    TResult? Function(_SortByPriorityDescending value)?
        sortByPriorityDescending,
    TResult? Function(_SortByPriorityAscending value)? sortByPriorityAscending,
  }) {
    return updateFullTask?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateSelectedTaskTag value)? updateSelectedTaskTag,
    TResult Function(_RemoveSelectedTaskTag value)? removeSelectedTaskTag,
    TResult Function(_UpdateSelectedTaskPriority value)?
        updateSelectedTaskPriority,
    TResult Function(_UpdateSelectedTaskStatus value)? updateSelectedTaskStatus,
    TResult Function(_AddNewTask value)? addNewTask,
    TResult Function(_AddFullTask value)? updateFullTask,
    TResult Function(_AddNewComment value)? addNewComment,
    TResult Function(_Updateomment value)? updateComment,
    TResult Function(_FetchAllComments value)? fetchAllComments,
    TResult Function(_FetchAllTasks value)? fetchAllTasks,
    TResult Function(_SetPickedFileForComment value)? setPickedFileForComment,
    TResult Function(_SyncData value)? syncData,
    TResult Function(_SyncDataInServer value)? syncDataInServer,
    TResult Function(_AddCurrentTimeStampToAllTasksLocally value)?
        addCurrentTimeStampToAllTasksLocally,
    TResult Function(_UpdateCurrentHomeIndex value)? updateCurrentHomeIndex,
    TResult Function(_ResetSelectItems value)? resetSelectItems,
    TResult Function(_UpdateFocusedDate value)? updateFocusedDate,
    TResult Function(_ResetMessage value)? resetMessage,
    TResult Function(_UpdateSection value)? updateSection,
    TResult Function(_UpdateTimer value)? updateTimer,
    TResult Function(_UpdateTimerState value)? updateTimerState,
    TResult Function(_UpdateTimerLocally value)? updateTimerLocally,
    TResult Function(_UpdateTimerStateLocally value)? updateTimerStateLocally,
    TResult Function(_CompleteTask value)? completeTask,
    TResult Function(_ReopenTaskTask value)? reopenTask,
    TResult Function(_StartTask value)? startTask,
    TResult Function(_DeleteTask value)? deleteTask,
    TResult Function(_DeleteAllTask value)? deleteAllTask,
    TResult Function(_DeleteComment value)? deleteComment,
    TResult Function(_SortByDateDescending value)? sortByDateDescending,
    TResult Function(_SortByNameDescending value)? sortByNameDescending,
    TResult Function(_SortByNameAscending value)? sortByNameAscending,
    TResult Function(_SortByDateAscending value)? sortByDateAscending,
    TResult Function(_SortByPriorityDescending value)? sortByPriorityDescending,
    TResult Function(_SortByPriorityAscending value)? sortByPriorityAscending,
    required TResult orElse(),
  }) {
    if (updateFullTask != null) {
      return updateFullTask(this);
    }
    return orElse();
  }
}

abstract class _AddFullTask implements HomeEvent {
  const factory _AddFullTask(
          {required final AppLocalizations appLocalization,
          required final String dueDate,
          required final String content,
          required final String taskId,
          required final String description,
          required final void Function()? Function() onComplete}) =
      _$AddFullTaskImpl;

  AppLocalizations get appLocalization;
  String get dueDate;
  String get content;
  String get taskId;
  String get description;
  void Function()? Function() get onComplete;
  @JsonKey(ignore: true)
  _$$AddFullTaskImplCopyWith<_$AddFullTaskImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddNewCommentImplCopyWith<$Res> {
  factory _$$AddNewCommentImplCopyWith(
          _$AddNewCommentImpl value, $Res Function(_$AddNewCommentImpl) then) =
      __$$AddNewCommentImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {AppLocalizations appLocalization,
      String taskId,
      String content,
      void Function()? Function() onComplete});
}

/// @nodoc
class __$$AddNewCommentImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$AddNewCommentImpl>
    implements _$$AddNewCommentImplCopyWith<$Res> {
  __$$AddNewCommentImplCopyWithImpl(
      _$AddNewCommentImpl _value, $Res Function(_$AddNewCommentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appLocalization = freezed,
    Object? taskId = null,
    Object? content = null,
    Object? onComplete = null,
  }) {
    return _then(_$AddNewCommentImpl(
      appLocalization: freezed == appLocalization
          ? _value.appLocalization
          : appLocalization // ignore: cast_nullable_to_non_nullable
              as AppLocalizations,
      taskId: null == taskId
          ? _value.taskId
          : taskId // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      onComplete: null == onComplete
          ? _value.onComplete
          : onComplete // ignore: cast_nullable_to_non_nullable
              as void Function()? Function(),
    ));
  }
}

/// @nodoc

class _$AddNewCommentImpl implements _AddNewComment {
  const _$AddNewCommentImpl(
      {required this.appLocalization,
      required this.taskId,
      required this.content,
      required this.onComplete});

  @override
  final AppLocalizations appLocalization;
  @override
  final String taskId;
  @override
  final String content;
  @override
  final void Function()? Function() onComplete;

  @override
  String toString() {
    return 'HomeEvent.addNewComment(appLocalization: $appLocalization, taskId: $taskId, content: $content, onComplete: $onComplete)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddNewCommentImpl &&
            const DeepCollectionEquality()
                .equals(other.appLocalization, appLocalization) &&
            (identical(other.taskId, taskId) || other.taskId == taskId) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.onComplete, onComplete) ||
                other.onComplete == onComplete));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(appLocalization),
      taskId,
      content,
      onComplete);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddNewCommentImplCopyWith<_$AddNewCommentImpl> get copyWith =>
      __$$AddNewCommentImplCopyWithImpl<_$AddNewCommentImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TasksTags tasksTags) updateSelectedTaskTag,
    required TResult Function(int index) removeSelectedTaskTag,
    required TResult Function(TasksPriority taskPriority)
        updateSelectedTaskPriority,
    required TResult Function(TasksStatus tasksStatus) updateSelectedTaskStatus,
    required TResult Function(
            AppLocalizations appLocalization,
            String dueDate,
            String content,
            String description,
            void Function()? Function() onComplete)
        addNewTask,
    required TResult Function(
            AppLocalizations appLocalization,
            String dueDate,
            String content,
            String taskId,
            String description,
            void Function()? Function() onComplete)
        updateFullTask,
    required TResult Function(AppLocalizations appLocalization, String taskId,
            String content, void Function()? Function() onComplete)
        addNewComment,
    required TResult Function(
            AppLocalizations appLocalization,
            String taskId,
            String commentId,
            String content,
            void Function()? Function() onComplete)
        updateComment,
    required TResult Function(
            String taskId, bool isSyncing, InternetState internetState)
        fetchAllComments,
    required TResult Function(bool requiredReload, InternetState internetState)
        fetchAllTasks,
    required TResult Function(File? file) setPickedFileForComment,
    required TResult Function(BuildContext context) syncData,
    required TResult Function() syncDataInServer,
    required TResult Function(int savedTime)
        addCurrentTimeStampToAllTasksLocally,
    required TResult Function(int index) updateCurrentHomeIndex,
    required TResult Function() resetSelectItems,
    required TResult Function(DateTime focusedDate, InternetState internetState)
        updateFocusedDate,
    required TResult Function() resetMessage,
    required TResult Function(String taskId, String fromSectionId,
            String sectionId, List<String> labels)
        updateSection,
    required TResult Function(String taskId, List<String> labels) updateTimer,
    required TResult Function(String taskId, List<String> labels)
        updateTimerState,
    required TResult Function(String taskId, List<String> labels)
        updateTimerLocally,
    required TResult Function(String taskId, List<String> labels)
        updateTimerStateLocally,
    required TResult Function(String taskId, List<String> labels) completeTask,
    required TResult Function(String taskId, List<String> labels) reopenTask,
    required TResult Function(String taskId, List<String> labels) startTask,
    required TResult Function(String taskId) deleteTask,
    required TResult Function(AppLocalizations appLocalization) deleteAllTask,
    required TResult Function(String commentId, String taskId) deleteComment,
    required TResult Function(String id) sortByDateDescending,
    required TResult Function(String id) sortByNameDescending,
    required TResult Function(String id) sortByNameAscending,
    required TResult Function(String id) sortByDateAscending,
    required TResult Function(String id) sortByPriorityDescending,
    required TResult Function(String id) sortByPriorityAscending,
  }) {
    return addNewComment(appLocalization, taskId, content, onComplete);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TasksTags tasksTags)? updateSelectedTaskTag,
    TResult? Function(int index)? removeSelectedTaskTag,
    TResult? Function(TasksPriority taskPriority)? updateSelectedTaskPriority,
    TResult? Function(TasksStatus tasksStatus)? updateSelectedTaskStatus,
    TResult? Function(
            AppLocalizations appLocalization,
            String dueDate,
            String content,
            String description,
            void Function()? Function() onComplete)?
        addNewTask,
    TResult? Function(
            AppLocalizations appLocalization,
            String dueDate,
            String content,
            String taskId,
            String description,
            void Function()? Function() onComplete)?
        updateFullTask,
    TResult? Function(AppLocalizations appLocalization, String taskId,
            String content, void Function()? Function() onComplete)?
        addNewComment,
    TResult? Function(
            AppLocalizations appLocalization,
            String taskId,
            String commentId,
            String content,
            void Function()? Function() onComplete)?
        updateComment,
    TResult? Function(
            String taskId, bool isSyncing, InternetState internetState)?
        fetchAllComments,
    TResult? Function(bool requiredReload, InternetState internetState)?
        fetchAllTasks,
    TResult? Function(File? file)? setPickedFileForComment,
    TResult? Function(BuildContext context)? syncData,
    TResult? Function()? syncDataInServer,
    TResult? Function(int savedTime)? addCurrentTimeStampToAllTasksLocally,
    TResult? Function(int index)? updateCurrentHomeIndex,
    TResult? Function()? resetSelectItems,
    TResult? Function(DateTime focusedDate, InternetState internetState)?
        updateFocusedDate,
    TResult? Function()? resetMessage,
    TResult? Function(String taskId, String fromSectionId, String sectionId,
            List<String> labels)?
        updateSection,
    TResult? Function(String taskId, List<String> labels)? updateTimer,
    TResult? Function(String taskId, List<String> labels)? updateTimerState,
    TResult? Function(String taskId, List<String> labels)? updateTimerLocally,
    TResult? Function(String taskId, List<String> labels)?
        updateTimerStateLocally,
    TResult? Function(String taskId, List<String> labels)? completeTask,
    TResult? Function(String taskId, List<String> labels)? reopenTask,
    TResult? Function(String taskId, List<String> labels)? startTask,
    TResult? Function(String taskId)? deleteTask,
    TResult? Function(AppLocalizations appLocalization)? deleteAllTask,
    TResult? Function(String commentId, String taskId)? deleteComment,
    TResult? Function(String id)? sortByDateDescending,
    TResult? Function(String id)? sortByNameDescending,
    TResult? Function(String id)? sortByNameAscending,
    TResult? Function(String id)? sortByDateAscending,
    TResult? Function(String id)? sortByPriorityDescending,
    TResult? Function(String id)? sortByPriorityAscending,
  }) {
    return addNewComment?.call(appLocalization, taskId, content, onComplete);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TasksTags tasksTags)? updateSelectedTaskTag,
    TResult Function(int index)? removeSelectedTaskTag,
    TResult Function(TasksPriority taskPriority)? updateSelectedTaskPriority,
    TResult Function(TasksStatus tasksStatus)? updateSelectedTaskStatus,
    TResult Function(
            AppLocalizations appLocalization,
            String dueDate,
            String content,
            String description,
            void Function()? Function() onComplete)?
        addNewTask,
    TResult Function(
            AppLocalizations appLocalization,
            String dueDate,
            String content,
            String taskId,
            String description,
            void Function()? Function() onComplete)?
        updateFullTask,
    TResult Function(AppLocalizations appLocalization, String taskId,
            String content, void Function()? Function() onComplete)?
        addNewComment,
    TResult Function(
            AppLocalizations appLocalization,
            String taskId,
            String commentId,
            String content,
            void Function()? Function() onComplete)?
        updateComment,
    TResult Function(
            String taskId, bool isSyncing, InternetState internetState)?
        fetchAllComments,
    TResult Function(bool requiredReload, InternetState internetState)?
        fetchAllTasks,
    TResult Function(File? file)? setPickedFileForComment,
    TResult Function(BuildContext context)? syncData,
    TResult Function()? syncDataInServer,
    TResult Function(int savedTime)? addCurrentTimeStampToAllTasksLocally,
    TResult Function(int index)? updateCurrentHomeIndex,
    TResult Function()? resetSelectItems,
    TResult Function(DateTime focusedDate, InternetState internetState)?
        updateFocusedDate,
    TResult Function()? resetMessage,
    TResult Function(String taskId, String fromSectionId, String sectionId,
            List<String> labels)?
        updateSection,
    TResult Function(String taskId, List<String> labels)? updateTimer,
    TResult Function(String taskId, List<String> labels)? updateTimerState,
    TResult Function(String taskId, List<String> labels)? updateTimerLocally,
    TResult Function(String taskId, List<String> labels)?
        updateTimerStateLocally,
    TResult Function(String taskId, List<String> labels)? completeTask,
    TResult Function(String taskId, List<String> labels)? reopenTask,
    TResult Function(String taskId, List<String> labels)? startTask,
    TResult Function(String taskId)? deleteTask,
    TResult Function(AppLocalizations appLocalization)? deleteAllTask,
    TResult Function(String commentId, String taskId)? deleteComment,
    TResult Function(String id)? sortByDateDescending,
    TResult Function(String id)? sortByNameDescending,
    TResult Function(String id)? sortByNameAscending,
    TResult Function(String id)? sortByDateAscending,
    TResult Function(String id)? sortByPriorityDescending,
    TResult Function(String id)? sortByPriorityAscending,
    required TResult orElse(),
  }) {
    if (addNewComment != null) {
      return addNewComment(appLocalization, taskId, content, onComplete);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateSelectedTaskTag value)
        updateSelectedTaskTag,
    required TResult Function(_RemoveSelectedTaskTag value)
        removeSelectedTaskTag,
    required TResult Function(_UpdateSelectedTaskPriority value)
        updateSelectedTaskPriority,
    required TResult Function(_UpdateSelectedTaskStatus value)
        updateSelectedTaskStatus,
    required TResult Function(_AddNewTask value) addNewTask,
    required TResult Function(_AddFullTask value) updateFullTask,
    required TResult Function(_AddNewComment value) addNewComment,
    required TResult Function(_Updateomment value) updateComment,
    required TResult Function(_FetchAllComments value) fetchAllComments,
    required TResult Function(_FetchAllTasks value) fetchAllTasks,
    required TResult Function(_SetPickedFileForComment value)
        setPickedFileForComment,
    required TResult Function(_SyncData value) syncData,
    required TResult Function(_SyncDataInServer value) syncDataInServer,
    required TResult Function(_AddCurrentTimeStampToAllTasksLocally value)
        addCurrentTimeStampToAllTasksLocally,
    required TResult Function(_UpdateCurrentHomeIndex value)
        updateCurrentHomeIndex,
    required TResult Function(_ResetSelectItems value) resetSelectItems,
    required TResult Function(_UpdateFocusedDate value) updateFocusedDate,
    required TResult Function(_ResetMessage value) resetMessage,
    required TResult Function(_UpdateSection value) updateSection,
    required TResult Function(_UpdateTimer value) updateTimer,
    required TResult Function(_UpdateTimerState value) updateTimerState,
    required TResult Function(_UpdateTimerLocally value) updateTimerLocally,
    required TResult Function(_UpdateTimerStateLocally value)
        updateTimerStateLocally,
    required TResult Function(_CompleteTask value) completeTask,
    required TResult Function(_ReopenTaskTask value) reopenTask,
    required TResult Function(_StartTask value) startTask,
    required TResult Function(_DeleteTask value) deleteTask,
    required TResult Function(_DeleteAllTask value) deleteAllTask,
    required TResult Function(_DeleteComment value) deleteComment,
    required TResult Function(_SortByDateDescending value) sortByDateDescending,
    required TResult Function(_SortByNameDescending value) sortByNameDescending,
    required TResult Function(_SortByNameAscending value) sortByNameAscending,
    required TResult Function(_SortByDateAscending value) sortByDateAscending,
    required TResult Function(_SortByPriorityDescending value)
        sortByPriorityDescending,
    required TResult Function(_SortByPriorityAscending value)
        sortByPriorityAscending,
  }) {
    return addNewComment(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateSelectedTaskTag value)? updateSelectedTaskTag,
    TResult? Function(_RemoveSelectedTaskTag value)? removeSelectedTaskTag,
    TResult? Function(_UpdateSelectedTaskPriority value)?
        updateSelectedTaskPriority,
    TResult? Function(_UpdateSelectedTaskStatus value)?
        updateSelectedTaskStatus,
    TResult? Function(_AddNewTask value)? addNewTask,
    TResult? Function(_AddFullTask value)? updateFullTask,
    TResult? Function(_AddNewComment value)? addNewComment,
    TResult? Function(_Updateomment value)? updateComment,
    TResult? Function(_FetchAllComments value)? fetchAllComments,
    TResult? Function(_FetchAllTasks value)? fetchAllTasks,
    TResult? Function(_SetPickedFileForComment value)? setPickedFileForComment,
    TResult? Function(_SyncData value)? syncData,
    TResult? Function(_SyncDataInServer value)? syncDataInServer,
    TResult? Function(_AddCurrentTimeStampToAllTasksLocally value)?
        addCurrentTimeStampToAllTasksLocally,
    TResult? Function(_UpdateCurrentHomeIndex value)? updateCurrentHomeIndex,
    TResult? Function(_ResetSelectItems value)? resetSelectItems,
    TResult? Function(_UpdateFocusedDate value)? updateFocusedDate,
    TResult? Function(_ResetMessage value)? resetMessage,
    TResult? Function(_UpdateSection value)? updateSection,
    TResult? Function(_UpdateTimer value)? updateTimer,
    TResult? Function(_UpdateTimerState value)? updateTimerState,
    TResult? Function(_UpdateTimerLocally value)? updateTimerLocally,
    TResult? Function(_UpdateTimerStateLocally value)? updateTimerStateLocally,
    TResult? Function(_CompleteTask value)? completeTask,
    TResult? Function(_ReopenTaskTask value)? reopenTask,
    TResult? Function(_StartTask value)? startTask,
    TResult? Function(_DeleteTask value)? deleteTask,
    TResult? Function(_DeleteAllTask value)? deleteAllTask,
    TResult? Function(_DeleteComment value)? deleteComment,
    TResult? Function(_SortByDateDescending value)? sortByDateDescending,
    TResult? Function(_SortByNameDescending value)? sortByNameDescending,
    TResult? Function(_SortByNameAscending value)? sortByNameAscending,
    TResult? Function(_SortByDateAscending value)? sortByDateAscending,
    TResult? Function(_SortByPriorityDescending value)?
        sortByPriorityDescending,
    TResult? Function(_SortByPriorityAscending value)? sortByPriorityAscending,
  }) {
    return addNewComment?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateSelectedTaskTag value)? updateSelectedTaskTag,
    TResult Function(_RemoveSelectedTaskTag value)? removeSelectedTaskTag,
    TResult Function(_UpdateSelectedTaskPriority value)?
        updateSelectedTaskPriority,
    TResult Function(_UpdateSelectedTaskStatus value)? updateSelectedTaskStatus,
    TResult Function(_AddNewTask value)? addNewTask,
    TResult Function(_AddFullTask value)? updateFullTask,
    TResult Function(_AddNewComment value)? addNewComment,
    TResult Function(_Updateomment value)? updateComment,
    TResult Function(_FetchAllComments value)? fetchAllComments,
    TResult Function(_FetchAllTasks value)? fetchAllTasks,
    TResult Function(_SetPickedFileForComment value)? setPickedFileForComment,
    TResult Function(_SyncData value)? syncData,
    TResult Function(_SyncDataInServer value)? syncDataInServer,
    TResult Function(_AddCurrentTimeStampToAllTasksLocally value)?
        addCurrentTimeStampToAllTasksLocally,
    TResult Function(_UpdateCurrentHomeIndex value)? updateCurrentHomeIndex,
    TResult Function(_ResetSelectItems value)? resetSelectItems,
    TResult Function(_UpdateFocusedDate value)? updateFocusedDate,
    TResult Function(_ResetMessage value)? resetMessage,
    TResult Function(_UpdateSection value)? updateSection,
    TResult Function(_UpdateTimer value)? updateTimer,
    TResult Function(_UpdateTimerState value)? updateTimerState,
    TResult Function(_UpdateTimerLocally value)? updateTimerLocally,
    TResult Function(_UpdateTimerStateLocally value)? updateTimerStateLocally,
    TResult Function(_CompleteTask value)? completeTask,
    TResult Function(_ReopenTaskTask value)? reopenTask,
    TResult Function(_StartTask value)? startTask,
    TResult Function(_DeleteTask value)? deleteTask,
    TResult Function(_DeleteAllTask value)? deleteAllTask,
    TResult Function(_DeleteComment value)? deleteComment,
    TResult Function(_SortByDateDescending value)? sortByDateDescending,
    TResult Function(_SortByNameDescending value)? sortByNameDescending,
    TResult Function(_SortByNameAscending value)? sortByNameAscending,
    TResult Function(_SortByDateAscending value)? sortByDateAscending,
    TResult Function(_SortByPriorityDescending value)? sortByPriorityDescending,
    TResult Function(_SortByPriorityAscending value)? sortByPriorityAscending,
    required TResult orElse(),
  }) {
    if (addNewComment != null) {
      return addNewComment(this);
    }
    return orElse();
  }
}

abstract class _AddNewComment implements HomeEvent {
  const factory _AddNewComment(
          {required final AppLocalizations appLocalization,
          required final String taskId,
          required final String content,
          required final void Function()? Function() onComplete}) =
      _$AddNewCommentImpl;

  AppLocalizations get appLocalization;
  String get taskId;
  String get content;
  void Function()? Function() get onComplete;
  @JsonKey(ignore: true)
  _$$AddNewCommentImplCopyWith<_$AddNewCommentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateommentImplCopyWith<$Res> {
  factory _$$UpdateommentImplCopyWith(
          _$UpdateommentImpl value, $Res Function(_$UpdateommentImpl) then) =
      __$$UpdateommentImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {AppLocalizations appLocalization,
      String taskId,
      String commentId,
      String content,
      void Function()? Function() onComplete});
}

/// @nodoc
class __$$UpdateommentImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$UpdateommentImpl>
    implements _$$UpdateommentImplCopyWith<$Res> {
  __$$UpdateommentImplCopyWithImpl(
      _$UpdateommentImpl _value, $Res Function(_$UpdateommentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appLocalization = freezed,
    Object? taskId = null,
    Object? commentId = null,
    Object? content = null,
    Object? onComplete = null,
  }) {
    return _then(_$UpdateommentImpl(
      appLocalization: freezed == appLocalization
          ? _value.appLocalization
          : appLocalization // ignore: cast_nullable_to_non_nullable
              as AppLocalizations,
      taskId: null == taskId
          ? _value.taskId
          : taskId // ignore: cast_nullable_to_non_nullable
              as String,
      commentId: null == commentId
          ? _value.commentId
          : commentId // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      onComplete: null == onComplete
          ? _value.onComplete
          : onComplete // ignore: cast_nullable_to_non_nullable
              as void Function()? Function(),
    ));
  }
}

/// @nodoc

class _$UpdateommentImpl implements _Updateomment {
  const _$UpdateommentImpl(
      {required this.appLocalization,
      required this.taskId,
      required this.commentId,
      required this.content,
      required this.onComplete});

  @override
  final AppLocalizations appLocalization;
  @override
  final String taskId;
  @override
  final String commentId;
  @override
  final String content;
  @override
  final void Function()? Function() onComplete;

  @override
  String toString() {
    return 'HomeEvent.updateComment(appLocalization: $appLocalization, taskId: $taskId, commentId: $commentId, content: $content, onComplete: $onComplete)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateommentImpl &&
            const DeepCollectionEquality()
                .equals(other.appLocalization, appLocalization) &&
            (identical(other.taskId, taskId) || other.taskId == taskId) &&
            (identical(other.commentId, commentId) ||
                other.commentId == commentId) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.onComplete, onComplete) ||
                other.onComplete == onComplete));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(appLocalization),
      taskId,
      commentId,
      content,
      onComplete);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateommentImplCopyWith<_$UpdateommentImpl> get copyWith =>
      __$$UpdateommentImplCopyWithImpl<_$UpdateommentImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TasksTags tasksTags) updateSelectedTaskTag,
    required TResult Function(int index) removeSelectedTaskTag,
    required TResult Function(TasksPriority taskPriority)
        updateSelectedTaskPriority,
    required TResult Function(TasksStatus tasksStatus) updateSelectedTaskStatus,
    required TResult Function(
            AppLocalizations appLocalization,
            String dueDate,
            String content,
            String description,
            void Function()? Function() onComplete)
        addNewTask,
    required TResult Function(
            AppLocalizations appLocalization,
            String dueDate,
            String content,
            String taskId,
            String description,
            void Function()? Function() onComplete)
        updateFullTask,
    required TResult Function(AppLocalizations appLocalization, String taskId,
            String content, void Function()? Function() onComplete)
        addNewComment,
    required TResult Function(
            AppLocalizations appLocalization,
            String taskId,
            String commentId,
            String content,
            void Function()? Function() onComplete)
        updateComment,
    required TResult Function(
            String taskId, bool isSyncing, InternetState internetState)
        fetchAllComments,
    required TResult Function(bool requiredReload, InternetState internetState)
        fetchAllTasks,
    required TResult Function(File? file) setPickedFileForComment,
    required TResult Function(BuildContext context) syncData,
    required TResult Function() syncDataInServer,
    required TResult Function(int savedTime)
        addCurrentTimeStampToAllTasksLocally,
    required TResult Function(int index) updateCurrentHomeIndex,
    required TResult Function() resetSelectItems,
    required TResult Function(DateTime focusedDate, InternetState internetState)
        updateFocusedDate,
    required TResult Function() resetMessage,
    required TResult Function(String taskId, String fromSectionId,
            String sectionId, List<String> labels)
        updateSection,
    required TResult Function(String taskId, List<String> labels) updateTimer,
    required TResult Function(String taskId, List<String> labels)
        updateTimerState,
    required TResult Function(String taskId, List<String> labels)
        updateTimerLocally,
    required TResult Function(String taskId, List<String> labels)
        updateTimerStateLocally,
    required TResult Function(String taskId, List<String> labels) completeTask,
    required TResult Function(String taskId, List<String> labels) reopenTask,
    required TResult Function(String taskId, List<String> labels) startTask,
    required TResult Function(String taskId) deleteTask,
    required TResult Function(AppLocalizations appLocalization) deleteAllTask,
    required TResult Function(String commentId, String taskId) deleteComment,
    required TResult Function(String id) sortByDateDescending,
    required TResult Function(String id) sortByNameDescending,
    required TResult Function(String id) sortByNameAscending,
    required TResult Function(String id) sortByDateAscending,
    required TResult Function(String id) sortByPriorityDescending,
    required TResult Function(String id) sortByPriorityAscending,
  }) {
    return updateComment(
        appLocalization, taskId, commentId, content, onComplete);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TasksTags tasksTags)? updateSelectedTaskTag,
    TResult? Function(int index)? removeSelectedTaskTag,
    TResult? Function(TasksPriority taskPriority)? updateSelectedTaskPriority,
    TResult? Function(TasksStatus tasksStatus)? updateSelectedTaskStatus,
    TResult? Function(
            AppLocalizations appLocalization,
            String dueDate,
            String content,
            String description,
            void Function()? Function() onComplete)?
        addNewTask,
    TResult? Function(
            AppLocalizations appLocalization,
            String dueDate,
            String content,
            String taskId,
            String description,
            void Function()? Function() onComplete)?
        updateFullTask,
    TResult? Function(AppLocalizations appLocalization, String taskId,
            String content, void Function()? Function() onComplete)?
        addNewComment,
    TResult? Function(
            AppLocalizations appLocalization,
            String taskId,
            String commentId,
            String content,
            void Function()? Function() onComplete)?
        updateComment,
    TResult? Function(
            String taskId, bool isSyncing, InternetState internetState)?
        fetchAllComments,
    TResult? Function(bool requiredReload, InternetState internetState)?
        fetchAllTasks,
    TResult? Function(File? file)? setPickedFileForComment,
    TResult? Function(BuildContext context)? syncData,
    TResult? Function()? syncDataInServer,
    TResult? Function(int savedTime)? addCurrentTimeStampToAllTasksLocally,
    TResult? Function(int index)? updateCurrentHomeIndex,
    TResult? Function()? resetSelectItems,
    TResult? Function(DateTime focusedDate, InternetState internetState)?
        updateFocusedDate,
    TResult? Function()? resetMessage,
    TResult? Function(String taskId, String fromSectionId, String sectionId,
            List<String> labels)?
        updateSection,
    TResult? Function(String taskId, List<String> labels)? updateTimer,
    TResult? Function(String taskId, List<String> labels)? updateTimerState,
    TResult? Function(String taskId, List<String> labels)? updateTimerLocally,
    TResult? Function(String taskId, List<String> labels)?
        updateTimerStateLocally,
    TResult? Function(String taskId, List<String> labels)? completeTask,
    TResult? Function(String taskId, List<String> labels)? reopenTask,
    TResult? Function(String taskId, List<String> labels)? startTask,
    TResult? Function(String taskId)? deleteTask,
    TResult? Function(AppLocalizations appLocalization)? deleteAllTask,
    TResult? Function(String commentId, String taskId)? deleteComment,
    TResult? Function(String id)? sortByDateDescending,
    TResult? Function(String id)? sortByNameDescending,
    TResult? Function(String id)? sortByNameAscending,
    TResult? Function(String id)? sortByDateAscending,
    TResult? Function(String id)? sortByPriorityDescending,
    TResult? Function(String id)? sortByPriorityAscending,
  }) {
    return updateComment?.call(
        appLocalization, taskId, commentId, content, onComplete);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TasksTags tasksTags)? updateSelectedTaskTag,
    TResult Function(int index)? removeSelectedTaskTag,
    TResult Function(TasksPriority taskPriority)? updateSelectedTaskPriority,
    TResult Function(TasksStatus tasksStatus)? updateSelectedTaskStatus,
    TResult Function(
            AppLocalizations appLocalization,
            String dueDate,
            String content,
            String description,
            void Function()? Function() onComplete)?
        addNewTask,
    TResult Function(
            AppLocalizations appLocalization,
            String dueDate,
            String content,
            String taskId,
            String description,
            void Function()? Function() onComplete)?
        updateFullTask,
    TResult Function(AppLocalizations appLocalization, String taskId,
            String content, void Function()? Function() onComplete)?
        addNewComment,
    TResult Function(
            AppLocalizations appLocalization,
            String taskId,
            String commentId,
            String content,
            void Function()? Function() onComplete)?
        updateComment,
    TResult Function(
            String taskId, bool isSyncing, InternetState internetState)?
        fetchAllComments,
    TResult Function(bool requiredReload, InternetState internetState)?
        fetchAllTasks,
    TResult Function(File? file)? setPickedFileForComment,
    TResult Function(BuildContext context)? syncData,
    TResult Function()? syncDataInServer,
    TResult Function(int savedTime)? addCurrentTimeStampToAllTasksLocally,
    TResult Function(int index)? updateCurrentHomeIndex,
    TResult Function()? resetSelectItems,
    TResult Function(DateTime focusedDate, InternetState internetState)?
        updateFocusedDate,
    TResult Function()? resetMessage,
    TResult Function(String taskId, String fromSectionId, String sectionId,
            List<String> labels)?
        updateSection,
    TResult Function(String taskId, List<String> labels)? updateTimer,
    TResult Function(String taskId, List<String> labels)? updateTimerState,
    TResult Function(String taskId, List<String> labels)? updateTimerLocally,
    TResult Function(String taskId, List<String> labels)?
        updateTimerStateLocally,
    TResult Function(String taskId, List<String> labels)? completeTask,
    TResult Function(String taskId, List<String> labels)? reopenTask,
    TResult Function(String taskId, List<String> labels)? startTask,
    TResult Function(String taskId)? deleteTask,
    TResult Function(AppLocalizations appLocalization)? deleteAllTask,
    TResult Function(String commentId, String taskId)? deleteComment,
    TResult Function(String id)? sortByDateDescending,
    TResult Function(String id)? sortByNameDescending,
    TResult Function(String id)? sortByNameAscending,
    TResult Function(String id)? sortByDateAscending,
    TResult Function(String id)? sortByPriorityDescending,
    TResult Function(String id)? sortByPriorityAscending,
    required TResult orElse(),
  }) {
    if (updateComment != null) {
      return updateComment(
          appLocalization, taskId, commentId, content, onComplete);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateSelectedTaskTag value)
        updateSelectedTaskTag,
    required TResult Function(_RemoveSelectedTaskTag value)
        removeSelectedTaskTag,
    required TResult Function(_UpdateSelectedTaskPriority value)
        updateSelectedTaskPriority,
    required TResult Function(_UpdateSelectedTaskStatus value)
        updateSelectedTaskStatus,
    required TResult Function(_AddNewTask value) addNewTask,
    required TResult Function(_AddFullTask value) updateFullTask,
    required TResult Function(_AddNewComment value) addNewComment,
    required TResult Function(_Updateomment value) updateComment,
    required TResult Function(_FetchAllComments value) fetchAllComments,
    required TResult Function(_FetchAllTasks value) fetchAllTasks,
    required TResult Function(_SetPickedFileForComment value)
        setPickedFileForComment,
    required TResult Function(_SyncData value) syncData,
    required TResult Function(_SyncDataInServer value) syncDataInServer,
    required TResult Function(_AddCurrentTimeStampToAllTasksLocally value)
        addCurrentTimeStampToAllTasksLocally,
    required TResult Function(_UpdateCurrentHomeIndex value)
        updateCurrentHomeIndex,
    required TResult Function(_ResetSelectItems value) resetSelectItems,
    required TResult Function(_UpdateFocusedDate value) updateFocusedDate,
    required TResult Function(_ResetMessage value) resetMessage,
    required TResult Function(_UpdateSection value) updateSection,
    required TResult Function(_UpdateTimer value) updateTimer,
    required TResult Function(_UpdateTimerState value) updateTimerState,
    required TResult Function(_UpdateTimerLocally value) updateTimerLocally,
    required TResult Function(_UpdateTimerStateLocally value)
        updateTimerStateLocally,
    required TResult Function(_CompleteTask value) completeTask,
    required TResult Function(_ReopenTaskTask value) reopenTask,
    required TResult Function(_StartTask value) startTask,
    required TResult Function(_DeleteTask value) deleteTask,
    required TResult Function(_DeleteAllTask value) deleteAllTask,
    required TResult Function(_DeleteComment value) deleteComment,
    required TResult Function(_SortByDateDescending value) sortByDateDescending,
    required TResult Function(_SortByNameDescending value) sortByNameDescending,
    required TResult Function(_SortByNameAscending value) sortByNameAscending,
    required TResult Function(_SortByDateAscending value) sortByDateAscending,
    required TResult Function(_SortByPriorityDescending value)
        sortByPriorityDescending,
    required TResult Function(_SortByPriorityAscending value)
        sortByPriorityAscending,
  }) {
    return updateComment(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateSelectedTaskTag value)? updateSelectedTaskTag,
    TResult? Function(_RemoveSelectedTaskTag value)? removeSelectedTaskTag,
    TResult? Function(_UpdateSelectedTaskPriority value)?
        updateSelectedTaskPriority,
    TResult? Function(_UpdateSelectedTaskStatus value)?
        updateSelectedTaskStatus,
    TResult? Function(_AddNewTask value)? addNewTask,
    TResult? Function(_AddFullTask value)? updateFullTask,
    TResult? Function(_AddNewComment value)? addNewComment,
    TResult? Function(_Updateomment value)? updateComment,
    TResult? Function(_FetchAllComments value)? fetchAllComments,
    TResult? Function(_FetchAllTasks value)? fetchAllTasks,
    TResult? Function(_SetPickedFileForComment value)? setPickedFileForComment,
    TResult? Function(_SyncData value)? syncData,
    TResult? Function(_SyncDataInServer value)? syncDataInServer,
    TResult? Function(_AddCurrentTimeStampToAllTasksLocally value)?
        addCurrentTimeStampToAllTasksLocally,
    TResult? Function(_UpdateCurrentHomeIndex value)? updateCurrentHomeIndex,
    TResult? Function(_ResetSelectItems value)? resetSelectItems,
    TResult? Function(_UpdateFocusedDate value)? updateFocusedDate,
    TResult? Function(_ResetMessage value)? resetMessage,
    TResult? Function(_UpdateSection value)? updateSection,
    TResult? Function(_UpdateTimer value)? updateTimer,
    TResult? Function(_UpdateTimerState value)? updateTimerState,
    TResult? Function(_UpdateTimerLocally value)? updateTimerLocally,
    TResult? Function(_UpdateTimerStateLocally value)? updateTimerStateLocally,
    TResult? Function(_CompleteTask value)? completeTask,
    TResult? Function(_ReopenTaskTask value)? reopenTask,
    TResult? Function(_StartTask value)? startTask,
    TResult? Function(_DeleteTask value)? deleteTask,
    TResult? Function(_DeleteAllTask value)? deleteAllTask,
    TResult? Function(_DeleteComment value)? deleteComment,
    TResult? Function(_SortByDateDescending value)? sortByDateDescending,
    TResult? Function(_SortByNameDescending value)? sortByNameDescending,
    TResult? Function(_SortByNameAscending value)? sortByNameAscending,
    TResult? Function(_SortByDateAscending value)? sortByDateAscending,
    TResult? Function(_SortByPriorityDescending value)?
        sortByPriorityDescending,
    TResult? Function(_SortByPriorityAscending value)? sortByPriorityAscending,
  }) {
    return updateComment?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateSelectedTaskTag value)? updateSelectedTaskTag,
    TResult Function(_RemoveSelectedTaskTag value)? removeSelectedTaskTag,
    TResult Function(_UpdateSelectedTaskPriority value)?
        updateSelectedTaskPriority,
    TResult Function(_UpdateSelectedTaskStatus value)? updateSelectedTaskStatus,
    TResult Function(_AddNewTask value)? addNewTask,
    TResult Function(_AddFullTask value)? updateFullTask,
    TResult Function(_AddNewComment value)? addNewComment,
    TResult Function(_Updateomment value)? updateComment,
    TResult Function(_FetchAllComments value)? fetchAllComments,
    TResult Function(_FetchAllTasks value)? fetchAllTasks,
    TResult Function(_SetPickedFileForComment value)? setPickedFileForComment,
    TResult Function(_SyncData value)? syncData,
    TResult Function(_SyncDataInServer value)? syncDataInServer,
    TResult Function(_AddCurrentTimeStampToAllTasksLocally value)?
        addCurrentTimeStampToAllTasksLocally,
    TResult Function(_UpdateCurrentHomeIndex value)? updateCurrentHomeIndex,
    TResult Function(_ResetSelectItems value)? resetSelectItems,
    TResult Function(_UpdateFocusedDate value)? updateFocusedDate,
    TResult Function(_ResetMessage value)? resetMessage,
    TResult Function(_UpdateSection value)? updateSection,
    TResult Function(_UpdateTimer value)? updateTimer,
    TResult Function(_UpdateTimerState value)? updateTimerState,
    TResult Function(_UpdateTimerLocally value)? updateTimerLocally,
    TResult Function(_UpdateTimerStateLocally value)? updateTimerStateLocally,
    TResult Function(_CompleteTask value)? completeTask,
    TResult Function(_ReopenTaskTask value)? reopenTask,
    TResult Function(_StartTask value)? startTask,
    TResult Function(_DeleteTask value)? deleteTask,
    TResult Function(_DeleteAllTask value)? deleteAllTask,
    TResult Function(_DeleteComment value)? deleteComment,
    TResult Function(_SortByDateDescending value)? sortByDateDescending,
    TResult Function(_SortByNameDescending value)? sortByNameDescending,
    TResult Function(_SortByNameAscending value)? sortByNameAscending,
    TResult Function(_SortByDateAscending value)? sortByDateAscending,
    TResult Function(_SortByPriorityDescending value)? sortByPriorityDescending,
    TResult Function(_SortByPriorityAscending value)? sortByPriorityAscending,
    required TResult orElse(),
  }) {
    if (updateComment != null) {
      return updateComment(this);
    }
    return orElse();
  }
}

abstract class _Updateomment implements HomeEvent {
  const factory _Updateomment(
          {required final AppLocalizations appLocalization,
          required final String taskId,
          required final String commentId,
          required final String content,
          required final void Function()? Function() onComplete}) =
      _$UpdateommentImpl;

  AppLocalizations get appLocalization;
  String get taskId;
  String get commentId;
  String get content;
  void Function()? Function() get onComplete;
  @JsonKey(ignore: true)
  _$$UpdateommentImplCopyWith<_$UpdateommentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchAllCommentsImplCopyWith<$Res> {
  factory _$$FetchAllCommentsImplCopyWith(_$FetchAllCommentsImpl value,
          $Res Function(_$FetchAllCommentsImpl) then) =
      __$$FetchAllCommentsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String taskId, bool isSyncing, InternetState internetState});
}

/// @nodoc
class __$$FetchAllCommentsImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$FetchAllCommentsImpl>
    implements _$$FetchAllCommentsImplCopyWith<$Res> {
  __$$FetchAllCommentsImplCopyWithImpl(_$FetchAllCommentsImpl _value,
      $Res Function(_$FetchAllCommentsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? taskId = null,
    Object? isSyncing = null,
    Object? internetState = null,
  }) {
    return _then(_$FetchAllCommentsImpl(
      taskId: null == taskId
          ? _value.taskId
          : taskId // ignore: cast_nullable_to_non_nullable
              as String,
      isSyncing: null == isSyncing
          ? _value.isSyncing
          : isSyncing // ignore: cast_nullable_to_non_nullable
              as bool,
      internetState: null == internetState
          ? _value.internetState
          : internetState // ignore: cast_nullable_to_non_nullable
              as InternetState,
    ));
  }
}

/// @nodoc

class _$FetchAllCommentsImpl implements _FetchAllComments {
  const _$FetchAllCommentsImpl(
      {required this.taskId,
      required this.isSyncing,
      required this.internetState});

  @override
  final String taskId;
  @override
  final bool isSyncing;
  @override
  final InternetState internetState;

  @override
  String toString() {
    return 'HomeEvent.fetchAllComments(taskId: $taskId, isSyncing: $isSyncing, internetState: $internetState)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchAllCommentsImpl &&
            (identical(other.taskId, taskId) || other.taskId == taskId) &&
            (identical(other.isSyncing, isSyncing) ||
                other.isSyncing == isSyncing) &&
            (identical(other.internetState, internetState) ||
                other.internetState == internetState));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, taskId, isSyncing, internetState);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchAllCommentsImplCopyWith<_$FetchAllCommentsImpl> get copyWith =>
      __$$FetchAllCommentsImplCopyWithImpl<_$FetchAllCommentsImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TasksTags tasksTags) updateSelectedTaskTag,
    required TResult Function(int index) removeSelectedTaskTag,
    required TResult Function(TasksPriority taskPriority)
        updateSelectedTaskPriority,
    required TResult Function(TasksStatus tasksStatus) updateSelectedTaskStatus,
    required TResult Function(
            AppLocalizations appLocalization,
            String dueDate,
            String content,
            String description,
            void Function()? Function() onComplete)
        addNewTask,
    required TResult Function(
            AppLocalizations appLocalization,
            String dueDate,
            String content,
            String taskId,
            String description,
            void Function()? Function() onComplete)
        updateFullTask,
    required TResult Function(AppLocalizations appLocalization, String taskId,
            String content, void Function()? Function() onComplete)
        addNewComment,
    required TResult Function(
            AppLocalizations appLocalization,
            String taskId,
            String commentId,
            String content,
            void Function()? Function() onComplete)
        updateComment,
    required TResult Function(
            String taskId, bool isSyncing, InternetState internetState)
        fetchAllComments,
    required TResult Function(bool requiredReload, InternetState internetState)
        fetchAllTasks,
    required TResult Function(File? file) setPickedFileForComment,
    required TResult Function(BuildContext context) syncData,
    required TResult Function() syncDataInServer,
    required TResult Function(int savedTime)
        addCurrentTimeStampToAllTasksLocally,
    required TResult Function(int index) updateCurrentHomeIndex,
    required TResult Function() resetSelectItems,
    required TResult Function(DateTime focusedDate, InternetState internetState)
        updateFocusedDate,
    required TResult Function() resetMessage,
    required TResult Function(String taskId, String fromSectionId,
            String sectionId, List<String> labels)
        updateSection,
    required TResult Function(String taskId, List<String> labels) updateTimer,
    required TResult Function(String taskId, List<String> labels)
        updateTimerState,
    required TResult Function(String taskId, List<String> labels)
        updateTimerLocally,
    required TResult Function(String taskId, List<String> labels)
        updateTimerStateLocally,
    required TResult Function(String taskId, List<String> labels) completeTask,
    required TResult Function(String taskId, List<String> labels) reopenTask,
    required TResult Function(String taskId, List<String> labels) startTask,
    required TResult Function(String taskId) deleteTask,
    required TResult Function(AppLocalizations appLocalization) deleteAllTask,
    required TResult Function(String commentId, String taskId) deleteComment,
    required TResult Function(String id) sortByDateDescending,
    required TResult Function(String id) sortByNameDescending,
    required TResult Function(String id) sortByNameAscending,
    required TResult Function(String id) sortByDateAscending,
    required TResult Function(String id) sortByPriorityDescending,
    required TResult Function(String id) sortByPriorityAscending,
  }) {
    return fetchAllComments(taskId, isSyncing, internetState);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TasksTags tasksTags)? updateSelectedTaskTag,
    TResult? Function(int index)? removeSelectedTaskTag,
    TResult? Function(TasksPriority taskPriority)? updateSelectedTaskPriority,
    TResult? Function(TasksStatus tasksStatus)? updateSelectedTaskStatus,
    TResult? Function(
            AppLocalizations appLocalization,
            String dueDate,
            String content,
            String description,
            void Function()? Function() onComplete)?
        addNewTask,
    TResult? Function(
            AppLocalizations appLocalization,
            String dueDate,
            String content,
            String taskId,
            String description,
            void Function()? Function() onComplete)?
        updateFullTask,
    TResult? Function(AppLocalizations appLocalization, String taskId,
            String content, void Function()? Function() onComplete)?
        addNewComment,
    TResult? Function(
            AppLocalizations appLocalization,
            String taskId,
            String commentId,
            String content,
            void Function()? Function() onComplete)?
        updateComment,
    TResult? Function(
            String taskId, bool isSyncing, InternetState internetState)?
        fetchAllComments,
    TResult? Function(bool requiredReload, InternetState internetState)?
        fetchAllTasks,
    TResult? Function(File? file)? setPickedFileForComment,
    TResult? Function(BuildContext context)? syncData,
    TResult? Function()? syncDataInServer,
    TResult? Function(int savedTime)? addCurrentTimeStampToAllTasksLocally,
    TResult? Function(int index)? updateCurrentHomeIndex,
    TResult? Function()? resetSelectItems,
    TResult? Function(DateTime focusedDate, InternetState internetState)?
        updateFocusedDate,
    TResult? Function()? resetMessage,
    TResult? Function(String taskId, String fromSectionId, String sectionId,
            List<String> labels)?
        updateSection,
    TResult? Function(String taskId, List<String> labels)? updateTimer,
    TResult? Function(String taskId, List<String> labels)? updateTimerState,
    TResult? Function(String taskId, List<String> labels)? updateTimerLocally,
    TResult? Function(String taskId, List<String> labels)?
        updateTimerStateLocally,
    TResult? Function(String taskId, List<String> labels)? completeTask,
    TResult? Function(String taskId, List<String> labels)? reopenTask,
    TResult? Function(String taskId, List<String> labels)? startTask,
    TResult? Function(String taskId)? deleteTask,
    TResult? Function(AppLocalizations appLocalization)? deleteAllTask,
    TResult? Function(String commentId, String taskId)? deleteComment,
    TResult? Function(String id)? sortByDateDescending,
    TResult? Function(String id)? sortByNameDescending,
    TResult? Function(String id)? sortByNameAscending,
    TResult? Function(String id)? sortByDateAscending,
    TResult? Function(String id)? sortByPriorityDescending,
    TResult? Function(String id)? sortByPriorityAscending,
  }) {
    return fetchAllComments?.call(taskId, isSyncing, internetState);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TasksTags tasksTags)? updateSelectedTaskTag,
    TResult Function(int index)? removeSelectedTaskTag,
    TResult Function(TasksPriority taskPriority)? updateSelectedTaskPriority,
    TResult Function(TasksStatus tasksStatus)? updateSelectedTaskStatus,
    TResult Function(
            AppLocalizations appLocalization,
            String dueDate,
            String content,
            String description,
            void Function()? Function() onComplete)?
        addNewTask,
    TResult Function(
            AppLocalizations appLocalization,
            String dueDate,
            String content,
            String taskId,
            String description,
            void Function()? Function() onComplete)?
        updateFullTask,
    TResult Function(AppLocalizations appLocalization, String taskId,
            String content, void Function()? Function() onComplete)?
        addNewComment,
    TResult Function(
            AppLocalizations appLocalization,
            String taskId,
            String commentId,
            String content,
            void Function()? Function() onComplete)?
        updateComment,
    TResult Function(
            String taskId, bool isSyncing, InternetState internetState)?
        fetchAllComments,
    TResult Function(bool requiredReload, InternetState internetState)?
        fetchAllTasks,
    TResult Function(File? file)? setPickedFileForComment,
    TResult Function(BuildContext context)? syncData,
    TResult Function()? syncDataInServer,
    TResult Function(int savedTime)? addCurrentTimeStampToAllTasksLocally,
    TResult Function(int index)? updateCurrentHomeIndex,
    TResult Function()? resetSelectItems,
    TResult Function(DateTime focusedDate, InternetState internetState)?
        updateFocusedDate,
    TResult Function()? resetMessage,
    TResult Function(String taskId, String fromSectionId, String sectionId,
            List<String> labels)?
        updateSection,
    TResult Function(String taskId, List<String> labels)? updateTimer,
    TResult Function(String taskId, List<String> labels)? updateTimerState,
    TResult Function(String taskId, List<String> labels)? updateTimerLocally,
    TResult Function(String taskId, List<String> labels)?
        updateTimerStateLocally,
    TResult Function(String taskId, List<String> labels)? completeTask,
    TResult Function(String taskId, List<String> labels)? reopenTask,
    TResult Function(String taskId, List<String> labels)? startTask,
    TResult Function(String taskId)? deleteTask,
    TResult Function(AppLocalizations appLocalization)? deleteAllTask,
    TResult Function(String commentId, String taskId)? deleteComment,
    TResult Function(String id)? sortByDateDescending,
    TResult Function(String id)? sortByNameDescending,
    TResult Function(String id)? sortByNameAscending,
    TResult Function(String id)? sortByDateAscending,
    TResult Function(String id)? sortByPriorityDescending,
    TResult Function(String id)? sortByPriorityAscending,
    required TResult orElse(),
  }) {
    if (fetchAllComments != null) {
      return fetchAllComments(taskId, isSyncing, internetState);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateSelectedTaskTag value)
        updateSelectedTaskTag,
    required TResult Function(_RemoveSelectedTaskTag value)
        removeSelectedTaskTag,
    required TResult Function(_UpdateSelectedTaskPriority value)
        updateSelectedTaskPriority,
    required TResult Function(_UpdateSelectedTaskStatus value)
        updateSelectedTaskStatus,
    required TResult Function(_AddNewTask value) addNewTask,
    required TResult Function(_AddFullTask value) updateFullTask,
    required TResult Function(_AddNewComment value) addNewComment,
    required TResult Function(_Updateomment value) updateComment,
    required TResult Function(_FetchAllComments value) fetchAllComments,
    required TResult Function(_FetchAllTasks value) fetchAllTasks,
    required TResult Function(_SetPickedFileForComment value)
        setPickedFileForComment,
    required TResult Function(_SyncData value) syncData,
    required TResult Function(_SyncDataInServer value) syncDataInServer,
    required TResult Function(_AddCurrentTimeStampToAllTasksLocally value)
        addCurrentTimeStampToAllTasksLocally,
    required TResult Function(_UpdateCurrentHomeIndex value)
        updateCurrentHomeIndex,
    required TResult Function(_ResetSelectItems value) resetSelectItems,
    required TResult Function(_UpdateFocusedDate value) updateFocusedDate,
    required TResult Function(_ResetMessage value) resetMessage,
    required TResult Function(_UpdateSection value) updateSection,
    required TResult Function(_UpdateTimer value) updateTimer,
    required TResult Function(_UpdateTimerState value) updateTimerState,
    required TResult Function(_UpdateTimerLocally value) updateTimerLocally,
    required TResult Function(_UpdateTimerStateLocally value)
        updateTimerStateLocally,
    required TResult Function(_CompleteTask value) completeTask,
    required TResult Function(_ReopenTaskTask value) reopenTask,
    required TResult Function(_StartTask value) startTask,
    required TResult Function(_DeleteTask value) deleteTask,
    required TResult Function(_DeleteAllTask value) deleteAllTask,
    required TResult Function(_DeleteComment value) deleteComment,
    required TResult Function(_SortByDateDescending value) sortByDateDescending,
    required TResult Function(_SortByNameDescending value) sortByNameDescending,
    required TResult Function(_SortByNameAscending value) sortByNameAscending,
    required TResult Function(_SortByDateAscending value) sortByDateAscending,
    required TResult Function(_SortByPriorityDescending value)
        sortByPriorityDescending,
    required TResult Function(_SortByPriorityAscending value)
        sortByPriorityAscending,
  }) {
    return fetchAllComments(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateSelectedTaskTag value)? updateSelectedTaskTag,
    TResult? Function(_RemoveSelectedTaskTag value)? removeSelectedTaskTag,
    TResult? Function(_UpdateSelectedTaskPriority value)?
        updateSelectedTaskPriority,
    TResult? Function(_UpdateSelectedTaskStatus value)?
        updateSelectedTaskStatus,
    TResult? Function(_AddNewTask value)? addNewTask,
    TResult? Function(_AddFullTask value)? updateFullTask,
    TResult? Function(_AddNewComment value)? addNewComment,
    TResult? Function(_Updateomment value)? updateComment,
    TResult? Function(_FetchAllComments value)? fetchAllComments,
    TResult? Function(_FetchAllTasks value)? fetchAllTasks,
    TResult? Function(_SetPickedFileForComment value)? setPickedFileForComment,
    TResult? Function(_SyncData value)? syncData,
    TResult? Function(_SyncDataInServer value)? syncDataInServer,
    TResult? Function(_AddCurrentTimeStampToAllTasksLocally value)?
        addCurrentTimeStampToAllTasksLocally,
    TResult? Function(_UpdateCurrentHomeIndex value)? updateCurrentHomeIndex,
    TResult? Function(_ResetSelectItems value)? resetSelectItems,
    TResult? Function(_UpdateFocusedDate value)? updateFocusedDate,
    TResult? Function(_ResetMessage value)? resetMessage,
    TResult? Function(_UpdateSection value)? updateSection,
    TResult? Function(_UpdateTimer value)? updateTimer,
    TResult? Function(_UpdateTimerState value)? updateTimerState,
    TResult? Function(_UpdateTimerLocally value)? updateTimerLocally,
    TResult? Function(_UpdateTimerStateLocally value)? updateTimerStateLocally,
    TResult? Function(_CompleteTask value)? completeTask,
    TResult? Function(_ReopenTaskTask value)? reopenTask,
    TResult? Function(_StartTask value)? startTask,
    TResult? Function(_DeleteTask value)? deleteTask,
    TResult? Function(_DeleteAllTask value)? deleteAllTask,
    TResult? Function(_DeleteComment value)? deleteComment,
    TResult? Function(_SortByDateDescending value)? sortByDateDescending,
    TResult? Function(_SortByNameDescending value)? sortByNameDescending,
    TResult? Function(_SortByNameAscending value)? sortByNameAscending,
    TResult? Function(_SortByDateAscending value)? sortByDateAscending,
    TResult? Function(_SortByPriorityDescending value)?
        sortByPriorityDescending,
    TResult? Function(_SortByPriorityAscending value)? sortByPriorityAscending,
  }) {
    return fetchAllComments?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateSelectedTaskTag value)? updateSelectedTaskTag,
    TResult Function(_RemoveSelectedTaskTag value)? removeSelectedTaskTag,
    TResult Function(_UpdateSelectedTaskPriority value)?
        updateSelectedTaskPriority,
    TResult Function(_UpdateSelectedTaskStatus value)? updateSelectedTaskStatus,
    TResult Function(_AddNewTask value)? addNewTask,
    TResult Function(_AddFullTask value)? updateFullTask,
    TResult Function(_AddNewComment value)? addNewComment,
    TResult Function(_Updateomment value)? updateComment,
    TResult Function(_FetchAllComments value)? fetchAllComments,
    TResult Function(_FetchAllTasks value)? fetchAllTasks,
    TResult Function(_SetPickedFileForComment value)? setPickedFileForComment,
    TResult Function(_SyncData value)? syncData,
    TResult Function(_SyncDataInServer value)? syncDataInServer,
    TResult Function(_AddCurrentTimeStampToAllTasksLocally value)?
        addCurrentTimeStampToAllTasksLocally,
    TResult Function(_UpdateCurrentHomeIndex value)? updateCurrentHomeIndex,
    TResult Function(_ResetSelectItems value)? resetSelectItems,
    TResult Function(_UpdateFocusedDate value)? updateFocusedDate,
    TResult Function(_ResetMessage value)? resetMessage,
    TResult Function(_UpdateSection value)? updateSection,
    TResult Function(_UpdateTimer value)? updateTimer,
    TResult Function(_UpdateTimerState value)? updateTimerState,
    TResult Function(_UpdateTimerLocally value)? updateTimerLocally,
    TResult Function(_UpdateTimerStateLocally value)? updateTimerStateLocally,
    TResult Function(_CompleteTask value)? completeTask,
    TResult Function(_ReopenTaskTask value)? reopenTask,
    TResult Function(_StartTask value)? startTask,
    TResult Function(_DeleteTask value)? deleteTask,
    TResult Function(_DeleteAllTask value)? deleteAllTask,
    TResult Function(_DeleteComment value)? deleteComment,
    TResult Function(_SortByDateDescending value)? sortByDateDescending,
    TResult Function(_SortByNameDescending value)? sortByNameDescending,
    TResult Function(_SortByNameAscending value)? sortByNameAscending,
    TResult Function(_SortByDateAscending value)? sortByDateAscending,
    TResult Function(_SortByPriorityDescending value)? sortByPriorityDescending,
    TResult Function(_SortByPriorityAscending value)? sortByPriorityAscending,
    required TResult orElse(),
  }) {
    if (fetchAllComments != null) {
      return fetchAllComments(this);
    }
    return orElse();
  }
}

abstract class _FetchAllComments implements HomeEvent {
  const factory _FetchAllComments(
      {required final String taskId,
      required final bool isSyncing,
      required final InternetState internetState}) = _$FetchAllCommentsImpl;

  String get taskId;
  bool get isSyncing;
  InternetState get internetState;
  @JsonKey(ignore: true)
  _$$FetchAllCommentsImplCopyWith<_$FetchAllCommentsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchAllTasksImplCopyWith<$Res> {
  factory _$$FetchAllTasksImplCopyWith(
          _$FetchAllTasksImpl value, $Res Function(_$FetchAllTasksImpl) then) =
      __$$FetchAllTasksImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool requiredReload, InternetState internetState});
}

/// @nodoc
class __$$FetchAllTasksImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$FetchAllTasksImpl>
    implements _$$FetchAllTasksImplCopyWith<$Res> {
  __$$FetchAllTasksImplCopyWithImpl(
      _$FetchAllTasksImpl _value, $Res Function(_$FetchAllTasksImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? requiredReload = null,
    Object? internetState = null,
  }) {
    return _then(_$FetchAllTasksImpl(
      requiredReload: null == requiredReload
          ? _value.requiredReload
          : requiredReload // ignore: cast_nullable_to_non_nullable
              as bool,
      internetState: null == internetState
          ? _value.internetState
          : internetState // ignore: cast_nullable_to_non_nullable
              as InternetState,
    ));
  }
}

/// @nodoc

class _$FetchAllTasksImpl implements _FetchAllTasks {
  const _$FetchAllTasksImpl(
      {required this.requiredReload, required this.internetState});

  @override
  final bool requiredReload;
  @override
  final InternetState internetState;

  @override
  String toString() {
    return 'HomeEvent.fetchAllTasks(requiredReload: $requiredReload, internetState: $internetState)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchAllTasksImpl &&
            (identical(other.requiredReload, requiredReload) ||
                other.requiredReload == requiredReload) &&
            (identical(other.internetState, internetState) ||
                other.internetState == internetState));
  }

  @override
  int get hashCode => Object.hash(runtimeType, requiredReload, internetState);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchAllTasksImplCopyWith<_$FetchAllTasksImpl> get copyWith =>
      __$$FetchAllTasksImplCopyWithImpl<_$FetchAllTasksImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TasksTags tasksTags) updateSelectedTaskTag,
    required TResult Function(int index) removeSelectedTaskTag,
    required TResult Function(TasksPriority taskPriority)
        updateSelectedTaskPriority,
    required TResult Function(TasksStatus tasksStatus) updateSelectedTaskStatus,
    required TResult Function(
            AppLocalizations appLocalization,
            String dueDate,
            String content,
            String description,
            void Function()? Function() onComplete)
        addNewTask,
    required TResult Function(
            AppLocalizations appLocalization,
            String dueDate,
            String content,
            String taskId,
            String description,
            void Function()? Function() onComplete)
        updateFullTask,
    required TResult Function(AppLocalizations appLocalization, String taskId,
            String content, void Function()? Function() onComplete)
        addNewComment,
    required TResult Function(
            AppLocalizations appLocalization,
            String taskId,
            String commentId,
            String content,
            void Function()? Function() onComplete)
        updateComment,
    required TResult Function(
            String taskId, bool isSyncing, InternetState internetState)
        fetchAllComments,
    required TResult Function(bool requiredReload, InternetState internetState)
        fetchAllTasks,
    required TResult Function(File? file) setPickedFileForComment,
    required TResult Function(BuildContext context) syncData,
    required TResult Function() syncDataInServer,
    required TResult Function(int savedTime)
        addCurrentTimeStampToAllTasksLocally,
    required TResult Function(int index) updateCurrentHomeIndex,
    required TResult Function() resetSelectItems,
    required TResult Function(DateTime focusedDate, InternetState internetState)
        updateFocusedDate,
    required TResult Function() resetMessage,
    required TResult Function(String taskId, String fromSectionId,
            String sectionId, List<String> labels)
        updateSection,
    required TResult Function(String taskId, List<String> labels) updateTimer,
    required TResult Function(String taskId, List<String> labels)
        updateTimerState,
    required TResult Function(String taskId, List<String> labels)
        updateTimerLocally,
    required TResult Function(String taskId, List<String> labels)
        updateTimerStateLocally,
    required TResult Function(String taskId, List<String> labels) completeTask,
    required TResult Function(String taskId, List<String> labels) reopenTask,
    required TResult Function(String taskId, List<String> labels) startTask,
    required TResult Function(String taskId) deleteTask,
    required TResult Function(AppLocalizations appLocalization) deleteAllTask,
    required TResult Function(String commentId, String taskId) deleteComment,
    required TResult Function(String id) sortByDateDescending,
    required TResult Function(String id) sortByNameDescending,
    required TResult Function(String id) sortByNameAscending,
    required TResult Function(String id) sortByDateAscending,
    required TResult Function(String id) sortByPriorityDescending,
    required TResult Function(String id) sortByPriorityAscending,
  }) {
    return fetchAllTasks(requiredReload, internetState);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TasksTags tasksTags)? updateSelectedTaskTag,
    TResult? Function(int index)? removeSelectedTaskTag,
    TResult? Function(TasksPriority taskPriority)? updateSelectedTaskPriority,
    TResult? Function(TasksStatus tasksStatus)? updateSelectedTaskStatus,
    TResult? Function(
            AppLocalizations appLocalization,
            String dueDate,
            String content,
            String description,
            void Function()? Function() onComplete)?
        addNewTask,
    TResult? Function(
            AppLocalizations appLocalization,
            String dueDate,
            String content,
            String taskId,
            String description,
            void Function()? Function() onComplete)?
        updateFullTask,
    TResult? Function(AppLocalizations appLocalization, String taskId,
            String content, void Function()? Function() onComplete)?
        addNewComment,
    TResult? Function(
            AppLocalizations appLocalization,
            String taskId,
            String commentId,
            String content,
            void Function()? Function() onComplete)?
        updateComment,
    TResult? Function(
            String taskId, bool isSyncing, InternetState internetState)?
        fetchAllComments,
    TResult? Function(bool requiredReload, InternetState internetState)?
        fetchAllTasks,
    TResult? Function(File? file)? setPickedFileForComment,
    TResult? Function(BuildContext context)? syncData,
    TResult? Function()? syncDataInServer,
    TResult? Function(int savedTime)? addCurrentTimeStampToAllTasksLocally,
    TResult? Function(int index)? updateCurrentHomeIndex,
    TResult? Function()? resetSelectItems,
    TResult? Function(DateTime focusedDate, InternetState internetState)?
        updateFocusedDate,
    TResult? Function()? resetMessage,
    TResult? Function(String taskId, String fromSectionId, String sectionId,
            List<String> labels)?
        updateSection,
    TResult? Function(String taskId, List<String> labels)? updateTimer,
    TResult? Function(String taskId, List<String> labels)? updateTimerState,
    TResult? Function(String taskId, List<String> labels)? updateTimerLocally,
    TResult? Function(String taskId, List<String> labels)?
        updateTimerStateLocally,
    TResult? Function(String taskId, List<String> labels)? completeTask,
    TResult? Function(String taskId, List<String> labels)? reopenTask,
    TResult? Function(String taskId, List<String> labels)? startTask,
    TResult? Function(String taskId)? deleteTask,
    TResult? Function(AppLocalizations appLocalization)? deleteAllTask,
    TResult? Function(String commentId, String taskId)? deleteComment,
    TResult? Function(String id)? sortByDateDescending,
    TResult? Function(String id)? sortByNameDescending,
    TResult? Function(String id)? sortByNameAscending,
    TResult? Function(String id)? sortByDateAscending,
    TResult? Function(String id)? sortByPriorityDescending,
    TResult? Function(String id)? sortByPriorityAscending,
  }) {
    return fetchAllTasks?.call(requiredReload, internetState);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TasksTags tasksTags)? updateSelectedTaskTag,
    TResult Function(int index)? removeSelectedTaskTag,
    TResult Function(TasksPriority taskPriority)? updateSelectedTaskPriority,
    TResult Function(TasksStatus tasksStatus)? updateSelectedTaskStatus,
    TResult Function(
            AppLocalizations appLocalization,
            String dueDate,
            String content,
            String description,
            void Function()? Function() onComplete)?
        addNewTask,
    TResult Function(
            AppLocalizations appLocalization,
            String dueDate,
            String content,
            String taskId,
            String description,
            void Function()? Function() onComplete)?
        updateFullTask,
    TResult Function(AppLocalizations appLocalization, String taskId,
            String content, void Function()? Function() onComplete)?
        addNewComment,
    TResult Function(
            AppLocalizations appLocalization,
            String taskId,
            String commentId,
            String content,
            void Function()? Function() onComplete)?
        updateComment,
    TResult Function(
            String taskId, bool isSyncing, InternetState internetState)?
        fetchAllComments,
    TResult Function(bool requiredReload, InternetState internetState)?
        fetchAllTasks,
    TResult Function(File? file)? setPickedFileForComment,
    TResult Function(BuildContext context)? syncData,
    TResult Function()? syncDataInServer,
    TResult Function(int savedTime)? addCurrentTimeStampToAllTasksLocally,
    TResult Function(int index)? updateCurrentHomeIndex,
    TResult Function()? resetSelectItems,
    TResult Function(DateTime focusedDate, InternetState internetState)?
        updateFocusedDate,
    TResult Function()? resetMessage,
    TResult Function(String taskId, String fromSectionId, String sectionId,
            List<String> labels)?
        updateSection,
    TResult Function(String taskId, List<String> labels)? updateTimer,
    TResult Function(String taskId, List<String> labels)? updateTimerState,
    TResult Function(String taskId, List<String> labels)? updateTimerLocally,
    TResult Function(String taskId, List<String> labels)?
        updateTimerStateLocally,
    TResult Function(String taskId, List<String> labels)? completeTask,
    TResult Function(String taskId, List<String> labels)? reopenTask,
    TResult Function(String taskId, List<String> labels)? startTask,
    TResult Function(String taskId)? deleteTask,
    TResult Function(AppLocalizations appLocalization)? deleteAllTask,
    TResult Function(String commentId, String taskId)? deleteComment,
    TResult Function(String id)? sortByDateDescending,
    TResult Function(String id)? sortByNameDescending,
    TResult Function(String id)? sortByNameAscending,
    TResult Function(String id)? sortByDateAscending,
    TResult Function(String id)? sortByPriorityDescending,
    TResult Function(String id)? sortByPriorityAscending,
    required TResult orElse(),
  }) {
    if (fetchAllTasks != null) {
      return fetchAllTasks(requiredReload, internetState);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateSelectedTaskTag value)
        updateSelectedTaskTag,
    required TResult Function(_RemoveSelectedTaskTag value)
        removeSelectedTaskTag,
    required TResult Function(_UpdateSelectedTaskPriority value)
        updateSelectedTaskPriority,
    required TResult Function(_UpdateSelectedTaskStatus value)
        updateSelectedTaskStatus,
    required TResult Function(_AddNewTask value) addNewTask,
    required TResult Function(_AddFullTask value) updateFullTask,
    required TResult Function(_AddNewComment value) addNewComment,
    required TResult Function(_Updateomment value) updateComment,
    required TResult Function(_FetchAllComments value) fetchAllComments,
    required TResult Function(_FetchAllTasks value) fetchAllTasks,
    required TResult Function(_SetPickedFileForComment value)
        setPickedFileForComment,
    required TResult Function(_SyncData value) syncData,
    required TResult Function(_SyncDataInServer value) syncDataInServer,
    required TResult Function(_AddCurrentTimeStampToAllTasksLocally value)
        addCurrentTimeStampToAllTasksLocally,
    required TResult Function(_UpdateCurrentHomeIndex value)
        updateCurrentHomeIndex,
    required TResult Function(_ResetSelectItems value) resetSelectItems,
    required TResult Function(_UpdateFocusedDate value) updateFocusedDate,
    required TResult Function(_ResetMessage value) resetMessage,
    required TResult Function(_UpdateSection value) updateSection,
    required TResult Function(_UpdateTimer value) updateTimer,
    required TResult Function(_UpdateTimerState value) updateTimerState,
    required TResult Function(_UpdateTimerLocally value) updateTimerLocally,
    required TResult Function(_UpdateTimerStateLocally value)
        updateTimerStateLocally,
    required TResult Function(_CompleteTask value) completeTask,
    required TResult Function(_ReopenTaskTask value) reopenTask,
    required TResult Function(_StartTask value) startTask,
    required TResult Function(_DeleteTask value) deleteTask,
    required TResult Function(_DeleteAllTask value) deleteAllTask,
    required TResult Function(_DeleteComment value) deleteComment,
    required TResult Function(_SortByDateDescending value) sortByDateDescending,
    required TResult Function(_SortByNameDescending value) sortByNameDescending,
    required TResult Function(_SortByNameAscending value) sortByNameAscending,
    required TResult Function(_SortByDateAscending value) sortByDateAscending,
    required TResult Function(_SortByPriorityDescending value)
        sortByPriorityDescending,
    required TResult Function(_SortByPriorityAscending value)
        sortByPriorityAscending,
  }) {
    return fetchAllTasks(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateSelectedTaskTag value)? updateSelectedTaskTag,
    TResult? Function(_RemoveSelectedTaskTag value)? removeSelectedTaskTag,
    TResult? Function(_UpdateSelectedTaskPriority value)?
        updateSelectedTaskPriority,
    TResult? Function(_UpdateSelectedTaskStatus value)?
        updateSelectedTaskStatus,
    TResult? Function(_AddNewTask value)? addNewTask,
    TResult? Function(_AddFullTask value)? updateFullTask,
    TResult? Function(_AddNewComment value)? addNewComment,
    TResult? Function(_Updateomment value)? updateComment,
    TResult? Function(_FetchAllComments value)? fetchAllComments,
    TResult? Function(_FetchAllTasks value)? fetchAllTasks,
    TResult? Function(_SetPickedFileForComment value)? setPickedFileForComment,
    TResult? Function(_SyncData value)? syncData,
    TResult? Function(_SyncDataInServer value)? syncDataInServer,
    TResult? Function(_AddCurrentTimeStampToAllTasksLocally value)?
        addCurrentTimeStampToAllTasksLocally,
    TResult? Function(_UpdateCurrentHomeIndex value)? updateCurrentHomeIndex,
    TResult? Function(_ResetSelectItems value)? resetSelectItems,
    TResult? Function(_UpdateFocusedDate value)? updateFocusedDate,
    TResult? Function(_ResetMessage value)? resetMessage,
    TResult? Function(_UpdateSection value)? updateSection,
    TResult? Function(_UpdateTimer value)? updateTimer,
    TResult? Function(_UpdateTimerState value)? updateTimerState,
    TResult? Function(_UpdateTimerLocally value)? updateTimerLocally,
    TResult? Function(_UpdateTimerStateLocally value)? updateTimerStateLocally,
    TResult? Function(_CompleteTask value)? completeTask,
    TResult? Function(_ReopenTaskTask value)? reopenTask,
    TResult? Function(_StartTask value)? startTask,
    TResult? Function(_DeleteTask value)? deleteTask,
    TResult? Function(_DeleteAllTask value)? deleteAllTask,
    TResult? Function(_DeleteComment value)? deleteComment,
    TResult? Function(_SortByDateDescending value)? sortByDateDescending,
    TResult? Function(_SortByNameDescending value)? sortByNameDescending,
    TResult? Function(_SortByNameAscending value)? sortByNameAscending,
    TResult? Function(_SortByDateAscending value)? sortByDateAscending,
    TResult? Function(_SortByPriorityDescending value)?
        sortByPriorityDescending,
    TResult? Function(_SortByPriorityAscending value)? sortByPriorityAscending,
  }) {
    return fetchAllTasks?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateSelectedTaskTag value)? updateSelectedTaskTag,
    TResult Function(_RemoveSelectedTaskTag value)? removeSelectedTaskTag,
    TResult Function(_UpdateSelectedTaskPriority value)?
        updateSelectedTaskPriority,
    TResult Function(_UpdateSelectedTaskStatus value)? updateSelectedTaskStatus,
    TResult Function(_AddNewTask value)? addNewTask,
    TResult Function(_AddFullTask value)? updateFullTask,
    TResult Function(_AddNewComment value)? addNewComment,
    TResult Function(_Updateomment value)? updateComment,
    TResult Function(_FetchAllComments value)? fetchAllComments,
    TResult Function(_FetchAllTasks value)? fetchAllTasks,
    TResult Function(_SetPickedFileForComment value)? setPickedFileForComment,
    TResult Function(_SyncData value)? syncData,
    TResult Function(_SyncDataInServer value)? syncDataInServer,
    TResult Function(_AddCurrentTimeStampToAllTasksLocally value)?
        addCurrentTimeStampToAllTasksLocally,
    TResult Function(_UpdateCurrentHomeIndex value)? updateCurrentHomeIndex,
    TResult Function(_ResetSelectItems value)? resetSelectItems,
    TResult Function(_UpdateFocusedDate value)? updateFocusedDate,
    TResult Function(_ResetMessage value)? resetMessage,
    TResult Function(_UpdateSection value)? updateSection,
    TResult Function(_UpdateTimer value)? updateTimer,
    TResult Function(_UpdateTimerState value)? updateTimerState,
    TResult Function(_UpdateTimerLocally value)? updateTimerLocally,
    TResult Function(_UpdateTimerStateLocally value)? updateTimerStateLocally,
    TResult Function(_CompleteTask value)? completeTask,
    TResult Function(_ReopenTaskTask value)? reopenTask,
    TResult Function(_StartTask value)? startTask,
    TResult Function(_DeleteTask value)? deleteTask,
    TResult Function(_DeleteAllTask value)? deleteAllTask,
    TResult Function(_DeleteComment value)? deleteComment,
    TResult Function(_SortByDateDescending value)? sortByDateDescending,
    TResult Function(_SortByNameDescending value)? sortByNameDescending,
    TResult Function(_SortByNameAscending value)? sortByNameAscending,
    TResult Function(_SortByDateAscending value)? sortByDateAscending,
    TResult Function(_SortByPriorityDescending value)? sortByPriorityDescending,
    TResult Function(_SortByPriorityAscending value)? sortByPriorityAscending,
    required TResult orElse(),
  }) {
    if (fetchAllTasks != null) {
      return fetchAllTasks(this);
    }
    return orElse();
  }
}

abstract class _FetchAllTasks implements HomeEvent {
  const factory _FetchAllTasks(
      {required final bool requiredReload,
      required final InternetState internetState}) = _$FetchAllTasksImpl;

  bool get requiredReload;
  InternetState get internetState;
  @JsonKey(ignore: true)
  _$$FetchAllTasksImplCopyWith<_$FetchAllTasksImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SetPickedFileForCommentImplCopyWith<$Res> {
  factory _$$SetPickedFileForCommentImplCopyWith(
          _$SetPickedFileForCommentImpl value,
          $Res Function(_$SetPickedFileForCommentImpl) then) =
      __$$SetPickedFileForCommentImplCopyWithImpl<$Res>;
  @useResult
  $Res call({File? file});
}

/// @nodoc
class __$$SetPickedFileForCommentImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$SetPickedFileForCommentImpl>
    implements _$$SetPickedFileForCommentImplCopyWith<$Res> {
  __$$SetPickedFileForCommentImplCopyWithImpl(
      _$SetPickedFileForCommentImpl _value,
      $Res Function(_$SetPickedFileForCommentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? file = freezed,
  }) {
    return _then(_$SetPickedFileForCommentImpl(
      freezed == file
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as File?,
    ));
  }
}

/// @nodoc

class _$SetPickedFileForCommentImpl implements _SetPickedFileForComment {
  const _$SetPickedFileForCommentImpl(this.file);

  @override
  final File? file;

  @override
  String toString() {
    return 'HomeEvent.setPickedFileForComment(file: $file)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetPickedFileForCommentImpl &&
            (identical(other.file, file) || other.file == file));
  }

  @override
  int get hashCode => Object.hash(runtimeType, file);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SetPickedFileForCommentImplCopyWith<_$SetPickedFileForCommentImpl>
      get copyWith => __$$SetPickedFileForCommentImplCopyWithImpl<
          _$SetPickedFileForCommentImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TasksTags tasksTags) updateSelectedTaskTag,
    required TResult Function(int index) removeSelectedTaskTag,
    required TResult Function(TasksPriority taskPriority)
        updateSelectedTaskPriority,
    required TResult Function(TasksStatus tasksStatus) updateSelectedTaskStatus,
    required TResult Function(
            AppLocalizations appLocalization,
            String dueDate,
            String content,
            String description,
            void Function()? Function() onComplete)
        addNewTask,
    required TResult Function(
            AppLocalizations appLocalization,
            String dueDate,
            String content,
            String taskId,
            String description,
            void Function()? Function() onComplete)
        updateFullTask,
    required TResult Function(AppLocalizations appLocalization, String taskId,
            String content, void Function()? Function() onComplete)
        addNewComment,
    required TResult Function(
            AppLocalizations appLocalization,
            String taskId,
            String commentId,
            String content,
            void Function()? Function() onComplete)
        updateComment,
    required TResult Function(
            String taskId, bool isSyncing, InternetState internetState)
        fetchAllComments,
    required TResult Function(bool requiredReload, InternetState internetState)
        fetchAllTasks,
    required TResult Function(File? file) setPickedFileForComment,
    required TResult Function(BuildContext context) syncData,
    required TResult Function() syncDataInServer,
    required TResult Function(int savedTime)
        addCurrentTimeStampToAllTasksLocally,
    required TResult Function(int index) updateCurrentHomeIndex,
    required TResult Function() resetSelectItems,
    required TResult Function(DateTime focusedDate, InternetState internetState)
        updateFocusedDate,
    required TResult Function() resetMessage,
    required TResult Function(String taskId, String fromSectionId,
            String sectionId, List<String> labels)
        updateSection,
    required TResult Function(String taskId, List<String> labels) updateTimer,
    required TResult Function(String taskId, List<String> labels)
        updateTimerState,
    required TResult Function(String taskId, List<String> labels)
        updateTimerLocally,
    required TResult Function(String taskId, List<String> labels)
        updateTimerStateLocally,
    required TResult Function(String taskId, List<String> labels) completeTask,
    required TResult Function(String taskId, List<String> labels) reopenTask,
    required TResult Function(String taskId, List<String> labels) startTask,
    required TResult Function(String taskId) deleteTask,
    required TResult Function(AppLocalizations appLocalization) deleteAllTask,
    required TResult Function(String commentId, String taskId) deleteComment,
    required TResult Function(String id) sortByDateDescending,
    required TResult Function(String id) sortByNameDescending,
    required TResult Function(String id) sortByNameAscending,
    required TResult Function(String id) sortByDateAscending,
    required TResult Function(String id) sortByPriorityDescending,
    required TResult Function(String id) sortByPriorityAscending,
  }) {
    return setPickedFileForComment(file);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TasksTags tasksTags)? updateSelectedTaskTag,
    TResult? Function(int index)? removeSelectedTaskTag,
    TResult? Function(TasksPriority taskPriority)? updateSelectedTaskPriority,
    TResult? Function(TasksStatus tasksStatus)? updateSelectedTaskStatus,
    TResult? Function(
            AppLocalizations appLocalization,
            String dueDate,
            String content,
            String description,
            void Function()? Function() onComplete)?
        addNewTask,
    TResult? Function(
            AppLocalizations appLocalization,
            String dueDate,
            String content,
            String taskId,
            String description,
            void Function()? Function() onComplete)?
        updateFullTask,
    TResult? Function(AppLocalizations appLocalization, String taskId,
            String content, void Function()? Function() onComplete)?
        addNewComment,
    TResult? Function(
            AppLocalizations appLocalization,
            String taskId,
            String commentId,
            String content,
            void Function()? Function() onComplete)?
        updateComment,
    TResult? Function(
            String taskId, bool isSyncing, InternetState internetState)?
        fetchAllComments,
    TResult? Function(bool requiredReload, InternetState internetState)?
        fetchAllTasks,
    TResult? Function(File? file)? setPickedFileForComment,
    TResult? Function(BuildContext context)? syncData,
    TResult? Function()? syncDataInServer,
    TResult? Function(int savedTime)? addCurrentTimeStampToAllTasksLocally,
    TResult? Function(int index)? updateCurrentHomeIndex,
    TResult? Function()? resetSelectItems,
    TResult? Function(DateTime focusedDate, InternetState internetState)?
        updateFocusedDate,
    TResult? Function()? resetMessage,
    TResult? Function(String taskId, String fromSectionId, String sectionId,
            List<String> labels)?
        updateSection,
    TResult? Function(String taskId, List<String> labels)? updateTimer,
    TResult? Function(String taskId, List<String> labels)? updateTimerState,
    TResult? Function(String taskId, List<String> labels)? updateTimerLocally,
    TResult? Function(String taskId, List<String> labels)?
        updateTimerStateLocally,
    TResult? Function(String taskId, List<String> labels)? completeTask,
    TResult? Function(String taskId, List<String> labels)? reopenTask,
    TResult? Function(String taskId, List<String> labels)? startTask,
    TResult? Function(String taskId)? deleteTask,
    TResult? Function(AppLocalizations appLocalization)? deleteAllTask,
    TResult? Function(String commentId, String taskId)? deleteComment,
    TResult? Function(String id)? sortByDateDescending,
    TResult? Function(String id)? sortByNameDescending,
    TResult? Function(String id)? sortByNameAscending,
    TResult? Function(String id)? sortByDateAscending,
    TResult? Function(String id)? sortByPriorityDescending,
    TResult? Function(String id)? sortByPriorityAscending,
  }) {
    return setPickedFileForComment?.call(file);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TasksTags tasksTags)? updateSelectedTaskTag,
    TResult Function(int index)? removeSelectedTaskTag,
    TResult Function(TasksPriority taskPriority)? updateSelectedTaskPriority,
    TResult Function(TasksStatus tasksStatus)? updateSelectedTaskStatus,
    TResult Function(
            AppLocalizations appLocalization,
            String dueDate,
            String content,
            String description,
            void Function()? Function() onComplete)?
        addNewTask,
    TResult Function(
            AppLocalizations appLocalization,
            String dueDate,
            String content,
            String taskId,
            String description,
            void Function()? Function() onComplete)?
        updateFullTask,
    TResult Function(AppLocalizations appLocalization, String taskId,
            String content, void Function()? Function() onComplete)?
        addNewComment,
    TResult Function(
            AppLocalizations appLocalization,
            String taskId,
            String commentId,
            String content,
            void Function()? Function() onComplete)?
        updateComment,
    TResult Function(
            String taskId, bool isSyncing, InternetState internetState)?
        fetchAllComments,
    TResult Function(bool requiredReload, InternetState internetState)?
        fetchAllTasks,
    TResult Function(File? file)? setPickedFileForComment,
    TResult Function(BuildContext context)? syncData,
    TResult Function()? syncDataInServer,
    TResult Function(int savedTime)? addCurrentTimeStampToAllTasksLocally,
    TResult Function(int index)? updateCurrentHomeIndex,
    TResult Function()? resetSelectItems,
    TResult Function(DateTime focusedDate, InternetState internetState)?
        updateFocusedDate,
    TResult Function()? resetMessage,
    TResult Function(String taskId, String fromSectionId, String sectionId,
            List<String> labels)?
        updateSection,
    TResult Function(String taskId, List<String> labels)? updateTimer,
    TResult Function(String taskId, List<String> labels)? updateTimerState,
    TResult Function(String taskId, List<String> labels)? updateTimerLocally,
    TResult Function(String taskId, List<String> labels)?
        updateTimerStateLocally,
    TResult Function(String taskId, List<String> labels)? completeTask,
    TResult Function(String taskId, List<String> labels)? reopenTask,
    TResult Function(String taskId, List<String> labels)? startTask,
    TResult Function(String taskId)? deleteTask,
    TResult Function(AppLocalizations appLocalization)? deleteAllTask,
    TResult Function(String commentId, String taskId)? deleteComment,
    TResult Function(String id)? sortByDateDescending,
    TResult Function(String id)? sortByNameDescending,
    TResult Function(String id)? sortByNameAscending,
    TResult Function(String id)? sortByDateAscending,
    TResult Function(String id)? sortByPriorityDescending,
    TResult Function(String id)? sortByPriorityAscending,
    required TResult orElse(),
  }) {
    if (setPickedFileForComment != null) {
      return setPickedFileForComment(file);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateSelectedTaskTag value)
        updateSelectedTaskTag,
    required TResult Function(_RemoveSelectedTaskTag value)
        removeSelectedTaskTag,
    required TResult Function(_UpdateSelectedTaskPriority value)
        updateSelectedTaskPriority,
    required TResult Function(_UpdateSelectedTaskStatus value)
        updateSelectedTaskStatus,
    required TResult Function(_AddNewTask value) addNewTask,
    required TResult Function(_AddFullTask value) updateFullTask,
    required TResult Function(_AddNewComment value) addNewComment,
    required TResult Function(_Updateomment value) updateComment,
    required TResult Function(_FetchAllComments value) fetchAllComments,
    required TResult Function(_FetchAllTasks value) fetchAllTasks,
    required TResult Function(_SetPickedFileForComment value)
        setPickedFileForComment,
    required TResult Function(_SyncData value) syncData,
    required TResult Function(_SyncDataInServer value) syncDataInServer,
    required TResult Function(_AddCurrentTimeStampToAllTasksLocally value)
        addCurrentTimeStampToAllTasksLocally,
    required TResult Function(_UpdateCurrentHomeIndex value)
        updateCurrentHomeIndex,
    required TResult Function(_ResetSelectItems value) resetSelectItems,
    required TResult Function(_UpdateFocusedDate value) updateFocusedDate,
    required TResult Function(_ResetMessage value) resetMessage,
    required TResult Function(_UpdateSection value) updateSection,
    required TResult Function(_UpdateTimer value) updateTimer,
    required TResult Function(_UpdateTimerState value) updateTimerState,
    required TResult Function(_UpdateTimerLocally value) updateTimerLocally,
    required TResult Function(_UpdateTimerStateLocally value)
        updateTimerStateLocally,
    required TResult Function(_CompleteTask value) completeTask,
    required TResult Function(_ReopenTaskTask value) reopenTask,
    required TResult Function(_StartTask value) startTask,
    required TResult Function(_DeleteTask value) deleteTask,
    required TResult Function(_DeleteAllTask value) deleteAllTask,
    required TResult Function(_DeleteComment value) deleteComment,
    required TResult Function(_SortByDateDescending value) sortByDateDescending,
    required TResult Function(_SortByNameDescending value) sortByNameDescending,
    required TResult Function(_SortByNameAscending value) sortByNameAscending,
    required TResult Function(_SortByDateAscending value) sortByDateAscending,
    required TResult Function(_SortByPriorityDescending value)
        sortByPriorityDescending,
    required TResult Function(_SortByPriorityAscending value)
        sortByPriorityAscending,
  }) {
    return setPickedFileForComment(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateSelectedTaskTag value)? updateSelectedTaskTag,
    TResult? Function(_RemoveSelectedTaskTag value)? removeSelectedTaskTag,
    TResult? Function(_UpdateSelectedTaskPriority value)?
        updateSelectedTaskPriority,
    TResult? Function(_UpdateSelectedTaskStatus value)?
        updateSelectedTaskStatus,
    TResult? Function(_AddNewTask value)? addNewTask,
    TResult? Function(_AddFullTask value)? updateFullTask,
    TResult? Function(_AddNewComment value)? addNewComment,
    TResult? Function(_Updateomment value)? updateComment,
    TResult? Function(_FetchAllComments value)? fetchAllComments,
    TResult? Function(_FetchAllTasks value)? fetchAllTasks,
    TResult? Function(_SetPickedFileForComment value)? setPickedFileForComment,
    TResult? Function(_SyncData value)? syncData,
    TResult? Function(_SyncDataInServer value)? syncDataInServer,
    TResult? Function(_AddCurrentTimeStampToAllTasksLocally value)?
        addCurrentTimeStampToAllTasksLocally,
    TResult? Function(_UpdateCurrentHomeIndex value)? updateCurrentHomeIndex,
    TResult? Function(_ResetSelectItems value)? resetSelectItems,
    TResult? Function(_UpdateFocusedDate value)? updateFocusedDate,
    TResult? Function(_ResetMessage value)? resetMessage,
    TResult? Function(_UpdateSection value)? updateSection,
    TResult? Function(_UpdateTimer value)? updateTimer,
    TResult? Function(_UpdateTimerState value)? updateTimerState,
    TResult? Function(_UpdateTimerLocally value)? updateTimerLocally,
    TResult? Function(_UpdateTimerStateLocally value)? updateTimerStateLocally,
    TResult? Function(_CompleteTask value)? completeTask,
    TResult? Function(_ReopenTaskTask value)? reopenTask,
    TResult? Function(_StartTask value)? startTask,
    TResult? Function(_DeleteTask value)? deleteTask,
    TResult? Function(_DeleteAllTask value)? deleteAllTask,
    TResult? Function(_DeleteComment value)? deleteComment,
    TResult? Function(_SortByDateDescending value)? sortByDateDescending,
    TResult? Function(_SortByNameDescending value)? sortByNameDescending,
    TResult? Function(_SortByNameAscending value)? sortByNameAscending,
    TResult? Function(_SortByDateAscending value)? sortByDateAscending,
    TResult? Function(_SortByPriorityDescending value)?
        sortByPriorityDescending,
    TResult? Function(_SortByPriorityAscending value)? sortByPriorityAscending,
  }) {
    return setPickedFileForComment?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateSelectedTaskTag value)? updateSelectedTaskTag,
    TResult Function(_RemoveSelectedTaskTag value)? removeSelectedTaskTag,
    TResult Function(_UpdateSelectedTaskPriority value)?
        updateSelectedTaskPriority,
    TResult Function(_UpdateSelectedTaskStatus value)? updateSelectedTaskStatus,
    TResult Function(_AddNewTask value)? addNewTask,
    TResult Function(_AddFullTask value)? updateFullTask,
    TResult Function(_AddNewComment value)? addNewComment,
    TResult Function(_Updateomment value)? updateComment,
    TResult Function(_FetchAllComments value)? fetchAllComments,
    TResult Function(_FetchAllTasks value)? fetchAllTasks,
    TResult Function(_SetPickedFileForComment value)? setPickedFileForComment,
    TResult Function(_SyncData value)? syncData,
    TResult Function(_SyncDataInServer value)? syncDataInServer,
    TResult Function(_AddCurrentTimeStampToAllTasksLocally value)?
        addCurrentTimeStampToAllTasksLocally,
    TResult Function(_UpdateCurrentHomeIndex value)? updateCurrentHomeIndex,
    TResult Function(_ResetSelectItems value)? resetSelectItems,
    TResult Function(_UpdateFocusedDate value)? updateFocusedDate,
    TResult Function(_ResetMessage value)? resetMessage,
    TResult Function(_UpdateSection value)? updateSection,
    TResult Function(_UpdateTimer value)? updateTimer,
    TResult Function(_UpdateTimerState value)? updateTimerState,
    TResult Function(_UpdateTimerLocally value)? updateTimerLocally,
    TResult Function(_UpdateTimerStateLocally value)? updateTimerStateLocally,
    TResult Function(_CompleteTask value)? completeTask,
    TResult Function(_ReopenTaskTask value)? reopenTask,
    TResult Function(_StartTask value)? startTask,
    TResult Function(_DeleteTask value)? deleteTask,
    TResult Function(_DeleteAllTask value)? deleteAllTask,
    TResult Function(_DeleteComment value)? deleteComment,
    TResult Function(_SortByDateDescending value)? sortByDateDescending,
    TResult Function(_SortByNameDescending value)? sortByNameDescending,
    TResult Function(_SortByNameAscending value)? sortByNameAscending,
    TResult Function(_SortByDateAscending value)? sortByDateAscending,
    TResult Function(_SortByPriorityDescending value)? sortByPriorityDescending,
    TResult Function(_SortByPriorityAscending value)? sortByPriorityAscending,
    required TResult orElse(),
  }) {
    if (setPickedFileForComment != null) {
      return setPickedFileForComment(this);
    }
    return orElse();
  }
}

abstract class _SetPickedFileForComment implements HomeEvent {
  const factory _SetPickedFileForComment(final File? file) =
      _$SetPickedFileForCommentImpl;

  File? get file;
  @JsonKey(ignore: true)
  _$$SetPickedFileForCommentImplCopyWith<_$SetPickedFileForCommentImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SyncDataImplCopyWith<$Res> {
  factory _$$SyncDataImplCopyWith(
          _$SyncDataImpl value, $Res Function(_$SyncDataImpl) then) =
      __$$SyncDataImplCopyWithImpl<$Res>;
  @useResult
  $Res call({BuildContext context});
}

/// @nodoc
class __$$SyncDataImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$SyncDataImpl>
    implements _$$SyncDataImplCopyWith<$Res> {
  __$$SyncDataImplCopyWithImpl(
      _$SyncDataImpl _value, $Res Function(_$SyncDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? context = null,
  }) {
    return _then(_$SyncDataImpl(
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc

class _$SyncDataImpl implements _SyncData {
  const _$SyncDataImpl({required this.context});

  @override
  final BuildContext context;

  @override
  String toString() {
    return 'HomeEvent.syncData(context: $context)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SyncDataImpl &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode => Object.hash(runtimeType, context);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SyncDataImplCopyWith<_$SyncDataImpl> get copyWith =>
      __$$SyncDataImplCopyWithImpl<_$SyncDataImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TasksTags tasksTags) updateSelectedTaskTag,
    required TResult Function(int index) removeSelectedTaskTag,
    required TResult Function(TasksPriority taskPriority)
        updateSelectedTaskPriority,
    required TResult Function(TasksStatus tasksStatus) updateSelectedTaskStatus,
    required TResult Function(
            AppLocalizations appLocalization,
            String dueDate,
            String content,
            String description,
            void Function()? Function() onComplete)
        addNewTask,
    required TResult Function(
            AppLocalizations appLocalization,
            String dueDate,
            String content,
            String taskId,
            String description,
            void Function()? Function() onComplete)
        updateFullTask,
    required TResult Function(AppLocalizations appLocalization, String taskId,
            String content, void Function()? Function() onComplete)
        addNewComment,
    required TResult Function(
            AppLocalizations appLocalization,
            String taskId,
            String commentId,
            String content,
            void Function()? Function() onComplete)
        updateComment,
    required TResult Function(
            String taskId, bool isSyncing, InternetState internetState)
        fetchAllComments,
    required TResult Function(bool requiredReload, InternetState internetState)
        fetchAllTasks,
    required TResult Function(File? file) setPickedFileForComment,
    required TResult Function(BuildContext context) syncData,
    required TResult Function() syncDataInServer,
    required TResult Function(int savedTime)
        addCurrentTimeStampToAllTasksLocally,
    required TResult Function(int index) updateCurrentHomeIndex,
    required TResult Function() resetSelectItems,
    required TResult Function(DateTime focusedDate, InternetState internetState)
        updateFocusedDate,
    required TResult Function() resetMessage,
    required TResult Function(String taskId, String fromSectionId,
            String sectionId, List<String> labels)
        updateSection,
    required TResult Function(String taskId, List<String> labels) updateTimer,
    required TResult Function(String taskId, List<String> labels)
        updateTimerState,
    required TResult Function(String taskId, List<String> labels)
        updateTimerLocally,
    required TResult Function(String taskId, List<String> labels)
        updateTimerStateLocally,
    required TResult Function(String taskId, List<String> labels) completeTask,
    required TResult Function(String taskId, List<String> labels) reopenTask,
    required TResult Function(String taskId, List<String> labels) startTask,
    required TResult Function(String taskId) deleteTask,
    required TResult Function(AppLocalizations appLocalization) deleteAllTask,
    required TResult Function(String commentId, String taskId) deleteComment,
    required TResult Function(String id) sortByDateDescending,
    required TResult Function(String id) sortByNameDescending,
    required TResult Function(String id) sortByNameAscending,
    required TResult Function(String id) sortByDateAscending,
    required TResult Function(String id) sortByPriorityDescending,
    required TResult Function(String id) sortByPriorityAscending,
  }) {
    return syncData(context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TasksTags tasksTags)? updateSelectedTaskTag,
    TResult? Function(int index)? removeSelectedTaskTag,
    TResult? Function(TasksPriority taskPriority)? updateSelectedTaskPriority,
    TResult? Function(TasksStatus tasksStatus)? updateSelectedTaskStatus,
    TResult? Function(
            AppLocalizations appLocalization,
            String dueDate,
            String content,
            String description,
            void Function()? Function() onComplete)?
        addNewTask,
    TResult? Function(
            AppLocalizations appLocalization,
            String dueDate,
            String content,
            String taskId,
            String description,
            void Function()? Function() onComplete)?
        updateFullTask,
    TResult? Function(AppLocalizations appLocalization, String taskId,
            String content, void Function()? Function() onComplete)?
        addNewComment,
    TResult? Function(
            AppLocalizations appLocalization,
            String taskId,
            String commentId,
            String content,
            void Function()? Function() onComplete)?
        updateComment,
    TResult? Function(
            String taskId, bool isSyncing, InternetState internetState)?
        fetchAllComments,
    TResult? Function(bool requiredReload, InternetState internetState)?
        fetchAllTasks,
    TResult? Function(File? file)? setPickedFileForComment,
    TResult? Function(BuildContext context)? syncData,
    TResult? Function()? syncDataInServer,
    TResult? Function(int savedTime)? addCurrentTimeStampToAllTasksLocally,
    TResult? Function(int index)? updateCurrentHomeIndex,
    TResult? Function()? resetSelectItems,
    TResult? Function(DateTime focusedDate, InternetState internetState)?
        updateFocusedDate,
    TResult? Function()? resetMessage,
    TResult? Function(String taskId, String fromSectionId, String sectionId,
            List<String> labels)?
        updateSection,
    TResult? Function(String taskId, List<String> labels)? updateTimer,
    TResult? Function(String taskId, List<String> labels)? updateTimerState,
    TResult? Function(String taskId, List<String> labels)? updateTimerLocally,
    TResult? Function(String taskId, List<String> labels)?
        updateTimerStateLocally,
    TResult? Function(String taskId, List<String> labels)? completeTask,
    TResult? Function(String taskId, List<String> labels)? reopenTask,
    TResult? Function(String taskId, List<String> labels)? startTask,
    TResult? Function(String taskId)? deleteTask,
    TResult? Function(AppLocalizations appLocalization)? deleteAllTask,
    TResult? Function(String commentId, String taskId)? deleteComment,
    TResult? Function(String id)? sortByDateDescending,
    TResult? Function(String id)? sortByNameDescending,
    TResult? Function(String id)? sortByNameAscending,
    TResult? Function(String id)? sortByDateAscending,
    TResult? Function(String id)? sortByPriorityDescending,
    TResult? Function(String id)? sortByPriorityAscending,
  }) {
    return syncData?.call(context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TasksTags tasksTags)? updateSelectedTaskTag,
    TResult Function(int index)? removeSelectedTaskTag,
    TResult Function(TasksPriority taskPriority)? updateSelectedTaskPriority,
    TResult Function(TasksStatus tasksStatus)? updateSelectedTaskStatus,
    TResult Function(
            AppLocalizations appLocalization,
            String dueDate,
            String content,
            String description,
            void Function()? Function() onComplete)?
        addNewTask,
    TResult Function(
            AppLocalizations appLocalization,
            String dueDate,
            String content,
            String taskId,
            String description,
            void Function()? Function() onComplete)?
        updateFullTask,
    TResult Function(AppLocalizations appLocalization, String taskId,
            String content, void Function()? Function() onComplete)?
        addNewComment,
    TResult Function(
            AppLocalizations appLocalization,
            String taskId,
            String commentId,
            String content,
            void Function()? Function() onComplete)?
        updateComment,
    TResult Function(
            String taskId, bool isSyncing, InternetState internetState)?
        fetchAllComments,
    TResult Function(bool requiredReload, InternetState internetState)?
        fetchAllTasks,
    TResult Function(File? file)? setPickedFileForComment,
    TResult Function(BuildContext context)? syncData,
    TResult Function()? syncDataInServer,
    TResult Function(int savedTime)? addCurrentTimeStampToAllTasksLocally,
    TResult Function(int index)? updateCurrentHomeIndex,
    TResult Function()? resetSelectItems,
    TResult Function(DateTime focusedDate, InternetState internetState)?
        updateFocusedDate,
    TResult Function()? resetMessage,
    TResult Function(String taskId, String fromSectionId, String sectionId,
            List<String> labels)?
        updateSection,
    TResult Function(String taskId, List<String> labels)? updateTimer,
    TResult Function(String taskId, List<String> labels)? updateTimerState,
    TResult Function(String taskId, List<String> labels)? updateTimerLocally,
    TResult Function(String taskId, List<String> labels)?
        updateTimerStateLocally,
    TResult Function(String taskId, List<String> labels)? completeTask,
    TResult Function(String taskId, List<String> labels)? reopenTask,
    TResult Function(String taskId, List<String> labels)? startTask,
    TResult Function(String taskId)? deleteTask,
    TResult Function(AppLocalizations appLocalization)? deleteAllTask,
    TResult Function(String commentId, String taskId)? deleteComment,
    TResult Function(String id)? sortByDateDescending,
    TResult Function(String id)? sortByNameDescending,
    TResult Function(String id)? sortByNameAscending,
    TResult Function(String id)? sortByDateAscending,
    TResult Function(String id)? sortByPriorityDescending,
    TResult Function(String id)? sortByPriorityAscending,
    required TResult orElse(),
  }) {
    if (syncData != null) {
      return syncData(context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateSelectedTaskTag value)
        updateSelectedTaskTag,
    required TResult Function(_RemoveSelectedTaskTag value)
        removeSelectedTaskTag,
    required TResult Function(_UpdateSelectedTaskPriority value)
        updateSelectedTaskPriority,
    required TResult Function(_UpdateSelectedTaskStatus value)
        updateSelectedTaskStatus,
    required TResult Function(_AddNewTask value) addNewTask,
    required TResult Function(_AddFullTask value) updateFullTask,
    required TResult Function(_AddNewComment value) addNewComment,
    required TResult Function(_Updateomment value) updateComment,
    required TResult Function(_FetchAllComments value) fetchAllComments,
    required TResult Function(_FetchAllTasks value) fetchAllTasks,
    required TResult Function(_SetPickedFileForComment value)
        setPickedFileForComment,
    required TResult Function(_SyncData value) syncData,
    required TResult Function(_SyncDataInServer value) syncDataInServer,
    required TResult Function(_AddCurrentTimeStampToAllTasksLocally value)
        addCurrentTimeStampToAllTasksLocally,
    required TResult Function(_UpdateCurrentHomeIndex value)
        updateCurrentHomeIndex,
    required TResult Function(_ResetSelectItems value) resetSelectItems,
    required TResult Function(_UpdateFocusedDate value) updateFocusedDate,
    required TResult Function(_ResetMessage value) resetMessage,
    required TResult Function(_UpdateSection value) updateSection,
    required TResult Function(_UpdateTimer value) updateTimer,
    required TResult Function(_UpdateTimerState value) updateTimerState,
    required TResult Function(_UpdateTimerLocally value) updateTimerLocally,
    required TResult Function(_UpdateTimerStateLocally value)
        updateTimerStateLocally,
    required TResult Function(_CompleteTask value) completeTask,
    required TResult Function(_ReopenTaskTask value) reopenTask,
    required TResult Function(_StartTask value) startTask,
    required TResult Function(_DeleteTask value) deleteTask,
    required TResult Function(_DeleteAllTask value) deleteAllTask,
    required TResult Function(_DeleteComment value) deleteComment,
    required TResult Function(_SortByDateDescending value) sortByDateDescending,
    required TResult Function(_SortByNameDescending value) sortByNameDescending,
    required TResult Function(_SortByNameAscending value) sortByNameAscending,
    required TResult Function(_SortByDateAscending value) sortByDateAscending,
    required TResult Function(_SortByPriorityDescending value)
        sortByPriorityDescending,
    required TResult Function(_SortByPriorityAscending value)
        sortByPriorityAscending,
  }) {
    return syncData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateSelectedTaskTag value)? updateSelectedTaskTag,
    TResult? Function(_RemoveSelectedTaskTag value)? removeSelectedTaskTag,
    TResult? Function(_UpdateSelectedTaskPriority value)?
        updateSelectedTaskPriority,
    TResult? Function(_UpdateSelectedTaskStatus value)?
        updateSelectedTaskStatus,
    TResult? Function(_AddNewTask value)? addNewTask,
    TResult? Function(_AddFullTask value)? updateFullTask,
    TResult? Function(_AddNewComment value)? addNewComment,
    TResult? Function(_Updateomment value)? updateComment,
    TResult? Function(_FetchAllComments value)? fetchAllComments,
    TResult? Function(_FetchAllTasks value)? fetchAllTasks,
    TResult? Function(_SetPickedFileForComment value)? setPickedFileForComment,
    TResult? Function(_SyncData value)? syncData,
    TResult? Function(_SyncDataInServer value)? syncDataInServer,
    TResult? Function(_AddCurrentTimeStampToAllTasksLocally value)?
        addCurrentTimeStampToAllTasksLocally,
    TResult? Function(_UpdateCurrentHomeIndex value)? updateCurrentHomeIndex,
    TResult? Function(_ResetSelectItems value)? resetSelectItems,
    TResult? Function(_UpdateFocusedDate value)? updateFocusedDate,
    TResult? Function(_ResetMessage value)? resetMessage,
    TResult? Function(_UpdateSection value)? updateSection,
    TResult? Function(_UpdateTimer value)? updateTimer,
    TResult? Function(_UpdateTimerState value)? updateTimerState,
    TResult? Function(_UpdateTimerLocally value)? updateTimerLocally,
    TResult? Function(_UpdateTimerStateLocally value)? updateTimerStateLocally,
    TResult? Function(_CompleteTask value)? completeTask,
    TResult? Function(_ReopenTaskTask value)? reopenTask,
    TResult? Function(_StartTask value)? startTask,
    TResult? Function(_DeleteTask value)? deleteTask,
    TResult? Function(_DeleteAllTask value)? deleteAllTask,
    TResult? Function(_DeleteComment value)? deleteComment,
    TResult? Function(_SortByDateDescending value)? sortByDateDescending,
    TResult? Function(_SortByNameDescending value)? sortByNameDescending,
    TResult? Function(_SortByNameAscending value)? sortByNameAscending,
    TResult? Function(_SortByDateAscending value)? sortByDateAscending,
    TResult? Function(_SortByPriorityDescending value)?
        sortByPriorityDescending,
    TResult? Function(_SortByPriorityAscending value)? sortByPriorityAscending,
  }) {
    return syncData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateSelectedTaskTag value)? updateSelectedTaskTag,
    TResult Function(_RemoveSelectedTaskTag value)? removeSelectedTaskTag,
    TResult Function(_UpdateSelectedTaskPriority value)?
        updateSelectedTaskPriority,
    TResult Function(_UpdateSelectedTaskStatus value)? updateSelectedTaskStatus,
    TResult Function(_AddNewTask value)? addNewTask,
    TResult Function(_AddFullTask value)? updateFullTask,
    TResult Function(_AddNewComment value)? addNewComment,
    TResult Function(_Updateomment value)? updateComment,
    TResult Function(_FetchAllComments value)? fetchAllComments,
    TResult Function(_FetchAllTasks value)? fetchAllTasks,
    TResult Function(_SetPickedFileForComment value)? setPickedFileForComment,
    TResult Function(_SyncData value)? syncData,
    TResult Function(_SyncDataInServer value)? syncDataInServer,
    TResult Function(_AddCurrentTimeStampToAllTasksLocally value)?
        addCurrentTimeStampToAllTasksLocally,
    TResult Function(_UpdateCurrentHomeIndex value)? updateCurrentHomeIndex,
    TResult Function(_ResetSelectItems value)? resetSelectItems,
    TResult Function(_UpdateFocusedDate value)? updateFocusedDate,
    TResult Function(_ResetMessage value)? resetMessage,
    TResult Function(_UpdateSection value)? updateSection,
    TResult Function(_UpdateTimer value)? updateTimer,
    TResult Function(_UpdateTimerState value)? updateTimerState,
    TResult Function(_UpdateTimerLocally value)? updateTimerLocally,
    TResult Function(_UpdateTimerStateLocally value)? updateTimerStateLocally,
    TResult Function(_CompleteTask value)? completeTask,
    TResult Function(_ReopenTaskTask value)? reopenTask,
    TResult Function(_StartTask value)? startTask,
    TResult Function(_DeleteTask value)? deleteTask,
    TResult Function(_DeleteAllTask value)? deleteAllTask,
    TResult Function(_DeleteComment value)? deleteComment,
    TResult Function(_SortByDateDescending value)? sortByDateDescending,
    TResult Function(_SortByNameDescending value)? sortByNameDescending,
    TResult Function(_SortByNameAscending value)? sortByNameAscending,
    TResult Function(_SortByDateAscending value)? sortByDateAscending,
    TResult Function(_SortByPriorityDescending value)? sortByPriorityDescending,
    TResult Function(_SortByPriorityAscending value)? sortByPriorityAscending,
    required TResult orElse(),
  }) {
    if (syncData != null) {
      return syncData(this);
    }
    return orElse();
  }
}

abstract class _SyncData implements HomeEvent {
  const factory _SyncData({required final BuildContext context}) =
      _$SyncDataImpl;

  BuildContext get context;
  @JsonKey(ignore: true)
  _$$SyncDataImplCopyWith<_$SyncDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SyncDataInServerImplCopyWith<$Res> {
  factory _$$SyncDataInServerImplCopyWith(_$SyncDataInServerImpl value,
          $Res Function(_$SyncDataInServerImpl) then) =
      __$$SyncDataInServerImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SyncDataInServerImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$SyncDataInServerImpl>
    implements _$$SyncDataInServerImplCopyWith<$Res> {
  __$$SyncDataInServerImplCopyWithImpl(_$SyncDataInServerImpl _value,
      $Res Function(_$SyncDataInServerImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SyncDataInServerImpl implements _SyncDataInServer {
  const _$SyncDataInServerImpl();

  @override
  String toString() {
    return 'HomeEvent.syncDataInServer()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SyncDataInServerImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TasksTags tasksTags) updateSelectedTaskTag,
    required TResult Function(int index) removeSelectedTaskTag,
    required TResult Function(TasksPriority taskPriority)
        updateSelectedTaskPriority,
    required TResult Function(TasksStatus tasksStatus) updateSelectedTaskStatus,
    required TResult Function(
            AppLocalizations appLocalization,
            String dueDate,
            String content,
            String description,
            void Function()? Function() onComplete)
        addNewTask,
    required TResult Function(
            AppLocalizations appLocalization,
            String dueDate,
            String content,
            String taskId,
            String description,
            void Function()? Function() onComplete)
        updateFullTask,
    required TResult Function(AppLocalizations appLocalization, String taskId,
            String content, void Function()? Function() onComplete)
        addNewComment,
    required TResult Function(
            AppLocalizations appLocalization,
            String taskId,
            String commentId,
            String content,
            void Function()? Function() onComplete)
        updateComment,
    required TResult Function(
            String taskId, bool isSyncing, InternetState internetState)
        fetchAllComments,
    required TResult Function(bool requiredReload, InternetState internetState)
        fetchAllTasks,
    required TResult Function(File? file) setPickedFileForComment,
    required TResult Function(BuildContext context) syncData,
    required TResult Function() syncDataInServer,
    required TResult Function(int savedTime)
        addCurrentTimeStampToAllTasksLocally,
    required TResult Function(int index) updateCurrentHomeIndex,
    required TResult Function() resetSelectItems,
    required TResult Function(DateTime focusedDate, InternetState internetState)
        updateFocusedDate,
    required TResult Function() resetMessage,
    required TResult Function(String taskId, String fromSectionId,
            String sectionId, List<String> labels)
        updateSection,
    required TResult Function(String taskId, List<String> labels) updateTimer,
    required TResult Function(String taskId, List<String> labels)
        updateTimerState,
    required TResult Function(String taskId, List<String> labels)
        updateTimerLocally,
    required TResult Function(String taskId, List<String> labels)
        updateTimerStateLocally,
    required TResult Function(String taskId, List<String> labels) completeTask,
    required TResult Function(String taskId, List<String> labels) reopenTask,
    required TResult Function(String taskId, List<String> labels) startTask,
    required TResult Function(String taskId) deleteTask,
    required TResult Function(AppLocalizations appLocalization) deleteAllTask,
    required TResult Function(String commentId, String taskId) deleteComment,
    required TResult Function(String id) sortByDateDescending,
    required TResult Function(String id) sortByNameDescending,
    required TResult Function(String id) sortByNameAscending,
    required TResult Function(String id) sortByDateAscending,
    required TResult Function(String id) sortByPriorityDescending,
    required TResult Function(String id) sortByPriorityAscending,
  }) {
    return syncDataInServer();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TasksTags tasksTags)? updateSelectedTaskTag,
    TResult? Function(int index)? removeSelectedTaskTag,
    TResult? Function(TasksPriority taskPriority)? updateSelectedTaskPriority,
    TResult? Function(TasksStatus tasksStatus)? updateSelectedTaskStatus,
    TResult? Function(
            AppLocalizations appLocalization,
            String dueDate,
            String content,
            String description,
            void Function()? Function() onComplete)?
        addNewTask,
    TResult? Function(
            AppLocalizations appLocalization,
            String dueDate,
            String content,
            String taskId,
            String description,
            void Function()? Function() onComplete)?
        updateFullTask,
    TResult? Function(AppLocalizations appLocalization, String taskId,
            String content, void Function()? Function() onComplete)?
        addNewComment,
    TResult? Function(
            AppLocalizations appLocalization,
            String taskId,
            String commentId,
            String content,
            void Function()? Function() onComplete)?
        updateComment,
    TResult? Function(
            String taskId, bool isSyncing, InternetState internetState)?
        fetchAllComments,
    TResult? Function(bool requiredReload, InternetState internetState)?
        fetchAllTasks,
    TResult? Function(File? file)? setPickedFileForComment,
    TResult? Function(BuildContext context)? syncData,
    TResult? Function()? syncDataInServer,
    TResult? Function(int savedTime)? addCurrentTimeStampToAllTasksLocally,
    TResult? Function(int index)? updateCurrentHomeIndex,
    TResult? Function()? resetSelectItems,
    TResult? Function(DateTime focusedDate, InternetState internetState)?
        updateFocusedDate,
    TResult? Function()? resetMessage,
    TResult? Function(String taskId, String fromSectionId, String sectionId,
            List<String> labels)?
        updateSection,
    TResult? Function(String taskId, List<String> labels)? updateTimer,
    TResult? Function(String taskId, List<String> labels)? updateTimerState,
    TResult? Function(String taskId, List<String> labels)? updateTimerLocally,
    TResult? Function(String taskId, List<String> labels)?
        updateTimerStateLocally,
    TResult? Function(String taskId, List<String> labels)? completeTask,
    TResult? Function(String taskId, List<String> labels)? reopenTask,
    TResult? Function(String taskId, List<String> labels)? startTask,
    TResult? Function(String taskId)? deleteTask,
    TResult? Function(AppLocalizations appLocalization)? deleteAllTask,
    TResult? Function(String commentId, String taskId)? deleteComment,
    TResult? Function(String id)? sortByDateDescending,
    TResult? Function(String id)? sortByNameDescending,
    TResult? Function(String id)? sortByNameAscending,
    TResult? Function(String id)? sortByDateAscending,
    TResult? Function(String id)? sortByPriorityDescending,
    TResult? Function(String id)? sortByPriorityAscending,
  }) {
    return syncDataInServer?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TasksTags tasksTags)? updateSelectedTaskTag,
    TResult Function(int index)? removeSelectedTaskTag,
    TResult Function(TasksPriority taskPriority)? updateSelectedTaskPriority,
    TResult Function(TasksStatus tasksStatus)? updateSelectedTaskStatus,
    TResult Function(
            AppLocalizations appLocalization,
            String dueDate,
            String content,
            String description,
            void Function()? Function() onComplete)?
        addNewTask,
    TResult Function(
            AppLocalizations appLocalization,
            String dueDate,
            String content,
            String taskId,
            String description,
            void Function()? Function() onComplete)?
        updateFullTask,
    TResult Function(AppLocalizations appLocalization, String taskId,
            String content, void Function()? Function() onComplete)?
        addNewComment,
    TResult Function(
            AppLocalizations appLocalization,
            String taskId,
            String commentId,
            String content,
            void Function()? Function() onComplete)?
        updateComment,
    TResult Function(
            String taskId, bool isSyncing, InternetState internetState)?
        fetchAllComments,
    TResult Function(bool requiredReload, InternetState internetState)?
        fetchAllTasks,
    TResult Function(File? file)? setPickedFileForComment,
    TResult Function(BuildContext context)? syncData,
    TResult Function()? syncDataInServer,
    TResult Function(int savedTime)? addCurrentTimeStampToAllTasksLocally,
    TResult Function(int index)? updateCurrentHomeIndex,
    TResult Function()? resetSelectItems,
    TResult Function(DateTime focusedDate, InternetState internetState)?
        updateFocusedDate,
    TResult Function()? resetMessage,
    TResult Function(String taskId, String fromSectionId, String sectionId,
            List<String> labels)?
        updateSection,
    TResult Function(String taskId, List<String> labels)? updateTimer,
    TResult Function(String taskId, List<String> labels)? updateTimerState,
    TResult Function(String taskId, List<String> labels)? updateTimerLocally,
    TResult Function(String taskId, List<String> labels)?
        updateTimerStateLocally,
    TResult Function(String taskId, List<String> labels)? completeTask,
    TResult Function(String taskId, List<String> labels)? reopenTask,
    TResult Function(String taskId, List<String> labels)? startTask,
    TResult Function(String taskId)? deleteTask,
    TResult Function(AppLocalizations appLocalization)? deleteAllTask,
    TResult Function(String commentId, String taskId)? deleteComment,
    TResult Function(String id)? sortByDateDescending,
    TResult Function(String id)? sortByNameDescending,
    TResult Function(String id)? sortByNameAscending,
    TResult Function(String id)? sortByDateAscending,
    TResult Function(String id)? sortByPriorityDescending,
    TResult Function(String id)? sortByPriorityAscending,
    required TResult orElse(),
  }) {
    if (syncDataInServer != null) {
      return syncDataInServer();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateSelectedTaskTag value)
        updateSelectedTaskTag,
    required TResult Function(_RemoveSelectedTaskTag value)
        removeSelectedTaskTag,
    required TResult Function(_UpdateSelectedTaskPriority value)
        updateSelectedTaskPriority,
    required TResult Function(_UpdateSelectedTaskStatus value)
        updateSelectedTaskStatus,
    required TResult Function(_AddNewTask value) addNewTask,
    required TResult Function(_AddFullTask value) updateFullTask,
    required TResult Function(_AddNewComment value) addNewComment,
    required TResult Function(_Updateomment value) updateComment,
    required TResult Function(_FetchAllComments value) fetchAllComments,
    required TResult Function(_FetchAllTasks value) fetchAllTasks,
    required TResult Function(_SetPickedFileForComment value)
        setPickedFileForComment,
    required TResult Function(_SyncData value) syncData,
    required TResult Function(_SyncDataInServer value) syncDataInServer,
    required TResult Function(_AddCurrentTimeStampToAllTasksLocally value)
        addCurrentTimeStampToAllTasksLocally,
    required TResult Function(_UpdateCurrentHomeIndex value)
        updateCurrentHomeIndex,
    required TResult Function(_ResetSelectItems value) resetSelectItems,
    required TResult Function(_UpdateFocusedDate value) updateFocusedDate,
    required TResult Function(_ResetMessage value) resetMessage,
    required TResult Function(_UpdateSection value) updateSection,
    required TResult Function(_UpdateTimer value) updateTimer,
    required TResult Function(_UpdateTimerState value) updateTimerState,
    required TResult Function(_UpdateTimerLocally value) updateTimerLocally,
    required TResult Function(_UpdateTimerStateLocally value)
        updateTimerStateLocally,
    required TResult Function(_CompleteTask value) completeTask,
    required TResult Function(_ReopenTaskTask value) reopenTask,
    required TResult Function(_StartTask value) startTask,
    required TResult Function(_DeleteTask value) deleteTask,
    required TResult Function(_DeleteAllTask value) deleteAllTask,
    required TResult Function(_DeleteComment value) deleteComment,
    required TResult Function(_SortByDateDescending value) sortByDateDescending,
    required TResult Function(_SortByNameDescending value) sortByNameDescending,
    required TResult Function(_SortByNameAscending value) sortByNameAscending,
    required TResult Function(_SortByDateAscending value) sortByDateAscending,
    required TResult Function(_SortByPriorityDescending value)
        sortByPriorityDescending,
    required TResult Function(_SortByPriorityAscending value)
        sortByPriorityAscending,
  }) {
    return syncDataInServer(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateSelectedTaskTag value)? updateSelectedTaskTag,
    TResult? Function(_RemoveSelectedTaskTag value)? removeSelectedTaskTag,
    TResult? Function(_UpdateSelectedTaskPriority value)?
        updateSelectedTaskPriority,
    TResult? Function(_UpdateSelectedTaskStatus value)?
        updateSelectedTaskStatus,
    TResult? Function(_AddNewTask value)? addNewTask,
    TResult? Function(_AddFullTask value)? updateFullTask,
    TResult? Function(_AddNewComment value)? addNewComment,
    TResult? Function(_Updateomment value)? updateComment,
    TResult? Function(_FetchAllComments value)? fetchAllComments,
    TResult? Function(_FetchAllTasks value)? fetchAllTasks,
    TResult? Function(_SetPickedFileForComment value)? setPickedFileForComment,
    TResult? Function(_SyncData value)? syncData,
    TResult? Function(_SyncDataInServer value)? syncDataInServer,
    TResult? Function(_AddCurrentTimeStampToAllTasksLocally value)?
        addCurrentTimeStampToAllTasksLocally,
    TResult? Function(_UpdateCurrentHomeIndex value)? updateCurrentHomeIndex,
    TResult? Function(_ResetSelectItems value)? resetSelectItems,
    TResult? Function(_UpdateFocusedDate value)? updateFocusedDate,
    TResult? Function(_ResetMessage value)? resetMessage,
    TResult? Function(_UpdateSection value)? updateSection,
    TResult? Function(_UpdateTimer value)? updateTimer,
    TResult? Function(_UpdateTimerState value)? updateTimerState,
    TResult? Function(_UpdateTimerLocally value)? updateTimerLocally,
    TResult? Function(_UpdateTimerStateLocally value)? updateTimerStateLocally,
    TResult? Function(_CompleteTask value)? completeTask,
    TResult? Function(_ReopenTaskTask value)? reopenTask,
    TResult? Function(_StartTask value)? startTask,
    TResult? Function(_DeleteTask value)? deleteTask,
    TResult? Function(_DeleteAllTask value)? deleteAllTask,
    TResult? Function(_DeleteComment value)? deleteComment,
    TResult? Function(_SortByDateDescending value)? sortByDateDescending,
    TResult? Function(_SortByNameDescending value)? sortByNameDescending,
    TResult? Function(_SortByNameAscending value)? sortByNameAscending,
    TResult? Function(_SortByDateAscending value)? sortByDateAscending,
    TResult? Function(_SortByPriorityDescending value)?
        sortByPriorityDescending,
    TResult? Function(_SortByPriorityAscending value)? sortByPriorityAscending,
  }) {
    return syncDataInServer?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateSelectedTaskTag value)? updateSelectedTaskTag,
    TResult Function(_RemoveSelectedTaskTag value)? removeSelectedTaskTag,
    TResult Function(_UpdateSelectedTaskPriority value)?
        updateSelectedTaskPriority,
    TResult Function(_UpdateSelectedTaskStatus value)? updateSelectedTaskStatus,
    TResult Function(_AddNewTask value)? addNewTask,
    TResult Function(_AddFullTask value)? updateFullTask,
    TResult Function(_AddNewComment value)? addNewComment,
    TResult Function(_Updateomment value)? updateComment,
    TResult Function(_FetchAllComments value)? fetchAllComments,
    TResult Function(_FetchAllTasks value)? fetchAllTasks,
    TResult Function(_SetPickedFileForComment value)? setPickedFileForComment,
    TResult Function(_SyncData value)? syncData,
    TResult Function(_SyncDataInServer value)? syncDataInServer,
    TResult Function(_AddCurrentTimeStampToAllTasksLocally value)?
        addCurrentTimeStampToAllTasksLocally,
    TResult Function(_UpdateCurrentHomeIndex value)? updateCurrentHomeIndex,
    TResult Function(_ResetSelectItems value)? resetSelectItems,
    TResult Function(_UpdateFocusedDate value)? updateFocusedDate,
    TResult Function(_ResetMessage value)? resetMessage,
    TResult Function(_UpdateSection value)? updateSection,
    TResult Function(_UpdateTimer value)? updateTimer,
    TResult Function(_UpdateTimerState value)? updateTimerState,
    TResult Function(_UpdateTimerLocally value)? updateTimerLocally,
    TResult Function(_UpdateTimerStateLocally value)? updateTimerStateLocally,
    TResult Function(_CompleteTask value)? completeTask,
    TResult Function(_ReopenTaskTask value)? reopenTask,
    TResult Function(_StartTask value)? startTask,
    TResult Function(_DeleteTask value)? deleteTask,
    TResult Function(_DeleteAllTask value)? deleteAllTask,
    TResult Function(_DeleteComment value)? deleteComment,
    TResult Function(_SortByDateDescending value)? sortByDateDescending,
    TResult Function(_SortByNameDescending value)? sortByNameDescending,
    TResult Function(_SortByNameAscending value)? sortByNameAscending,
    TResult Function(_SortByDateAscending value)? sortByDateAscending,
    TResult Function(_SortByPriorityDescending value)? sortByPriorityDescending,
    TResult Function(_SortByPriorityAscending value)? sortByPriorityAscending,
    required TResult orElse(),
  }) {
    if (syncDataInServer != null) {
      return syncDataInServer(this);
    }
    return orElse();
  }
}

abstract class _SyncDataInServer implements HomeEvent {
  const factory _SyncDataInServer() = _$SyncDataInServerImpl;
}

/// @nodoc
abstract class _$$AddCurrentTimeStampToAllTasksLocallyImplCopyWith<$Res> {
  factory _$$AddCurrentTimeStampToAllTasksLocallyImplCopyWith(
          _$AddCurrentTimeStampToAllTasksLocallyImpl value,
          $Res Function(_$AddCurrentTimeStampToAllTasksLocallyImpl) then) =
      __$$AddCurrentTimeStampToAllTasksLocallyImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int savedTime});
}

/// @nodoc
class __$$AddCurrentTimeStampToAllTasksLocallyImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res,
        _$AddCurrentTimeStampToAllTasksLocallyImpl>
    implements _$$AddCurrentTimeStampToAllTasksLocallyImplCopyWith<$Res> {
  __$$AddCurrentTimeStampToAllTasksLocallyImplCopyWithImpl(
      _$AddCurrentTimeStampToAllTasksLocallyImpl _value,
      $Res Function(_$AddCurrentTimeStampToAllTasksLocallyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? savedTime = null,
  }) {
    return _then(_$AddCurrentTimeStampToAllTasksLocallyImpl(
      savedTime: null == savedTime
          ? _value.savedTime
          : savedTime // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$AddCurrentTimeStampToAllTasksLocallyImpl
    implements _AddCurrentTimeStampToAllTasksLocally {
  const _$AddCurrentTimeStampToAllTasksLocallyImpl({required this.savedTime});

  @override
  final int savedTime;

  @override
  String toString() {
    return 'HomeEvent.addCurrentTimeStampToAllTasksLocally(savedTime: $savedTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddCurrentTimeStampToAllTasksLocallyImpl &&
            (identical(other.savedTime, savedTime) ||
                other.savedTime == savedTime));
  }

  @override
  int get hashCode => Object.hash(runtimeType, savedTime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddCurrentTimeStampToAllTasksLocallyImplCopyWith<
          _$AddCurrentTimeStampToAllTasksLocallyImpl>
      get copyWith => __$$AddCurrentTimeStampToAllTasksLocallyImplCopyWithImpl<
          _$AddCurrentTimeStampToAllTasksLocallyImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TasksTags tasksTags) updateSelectedTaskTag,
    required TResult Function(int index) removeSelectedTaskTag,
    required TResult Function(TasksPriority taskPriority)
        updateSelectedTaskPriority,
    required TResult Function(TasksStatus tasksStatus) updateSelectedTaskStatus,
    required TResult Function(
            AppLocalizations appLocalization,
            String dueDate,
            String content,
            String description,
            void Function()? Function() onComplete)
        addNewTask,
    required TResult Function(
            AppLocalizations appLocalization,
            String dueDate,
            String content,
            String taskId,
            String description,
            void Function()? Function() onComplete)
        updateFullTask,
    required TResult Function(AppLocalizations appLocalization, String taskId,
            String content, void Function()? Function() onComplete)
        addNewComment,
    required TResult Function(
            AppLocalizations appLocalization,
            String taskId,
            String commentId,
            String content,
            void Function()? Function() onComplete)
        updateComment,
    required TResult Function(
            String taskId, bool isSyncing, InternetState internetState)
        fetchAllComments,
    required TResult Function(bool requiredReload, InternetState internetState)
        fetchAllTasks,
    required TResult Function(File? file) setPickedFileForComment,
    required TResult Function(BuildContext context) syncData,
    required TResult Function() syncDataInServer,
    required TResult Function(int savedTime)
        addCurrentTimeStampToAllTasksLocally,
    required TResult Function(int index) updateCurrentHomeIndex,
    required TResult Function() resetSelectItems,
    required TResult Function(DateTime focusedDate, InternetState internetState)
        updateFocusedDate,
    required TResult Function() resetMessage,
    required TResult Function(String taskId, String fromSectionId,
            String sectionId, List<String> labels)
        updateSection,
    required TResult Function(String taskId, List<String> labels) updateTimer,
    required TResult Function(String taskId, List<String> labels)
        updateTimerState,
    required TResult Function(String taskId, List<String> labels)
        updateTimerLocally,
    required TResult Function(String taskId, List<String> labels)
        updateTimerStateLocally,
    required TResult Function(String taskId, List<String> labels) completeTask,
    required TResult Function(String taskId, List<String> labels) reopenTask,
    required TResult Function(String taskId, List<String> labels) startTask,
    required TResult Function(String taskId) deleteTask,
    required TResult Function(AppLocalizations appLocalization) deleteAllTask,
    required TResult Function(String commentId, String taskId) deleteComment,
    required TResult Function(String id) sortByDateDescending,
    required TResult Function(String id) sortByNameDescending,
    required TResult Function(String id) sortByNameAscending,
    required TResult Function(String id) sortByDateAscending,
    required TResult Function(String id) sortByPriorityDescending,
    required TResult Function(String id) sortByPriorityAscending,
  }) {
    return addCurrentTimeStampToAllTasksLocally(savedTime);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TasksTags tasksTags)? updateSelectedTaskTag,
    TResult? Function(int index)? removeSelectedTaskTag,
    TResult? Function(TasksPriority taskPriority)? updateSelectedTaskPriority,
    TResult? Function(TasksStatus tasksStatus)? updateSelectedTaskStatus,
    TResult? Function(
            AppLocalizations appLocalization,
            String dueDate,
            String content,
            String description,
            void Function()? Function() onComplete)?
        addNewTask,
    TResult? Function(
            AppLocalizations appLocalization,
            String dueDate,
            String content,
            String taskId,
            String description,
            void Function()? Function() onComplete)?
        updateFullTask,
    TResult? Function(AppLocalizations appLocalization, String taskId,
            String content, void Function()? Function() onComplete)?
        addNewComment,
    TResult? Function(
            AppLocalizations appLocalization,
            String taskId,
            String commentId,
            String content,
            void Function()? Function() onComplete)?
        updateComment,
    TResult? Function(
            String taskId, bool isSyncing, InternetState internetState)?
        fetchAllComments,
    TResult? Function(bool requiredReload, InternetState internetState)?
        fetchAllTasks,
    TResult? Function(File? file)? setPickedFileForComment,
    TResult? Function(BuildContext context)? syncData,
    TResult? Function()? syncDataInServer,
    TResult? Function(int savedTime)? addCurrentTimeStampToAllTasksLocally,
    TResult? Function(int index)? updateCurrentHomeIndex,
    TResult? Function()? resetSelectItems,
    TResult? Function(DateTime focusedDate, InternetState internetState)?
        updateFocusedDate,
    TResult? Function()? resetMessage,
    TResult? Function(String taskId, String fromSectionId, String sectionId,
            List<String> labels)?
        updateSection,
    TResult? Function(String taskId, List<String> labels)? updateTimer,
    TResult? Function(String taskId, List<String> labels)? updateTimerState,
    TResult? Function(String taskId, List<String> labels)? updateTimerLocally,
    TResult? Function(String taskId, List<String> labels)?
        updateTimerStateLocally,
    TResult? Function(String taskId, List<String> labels)? completeTask,
    TResult? Function(String taskId, List<String> labels)? reopenTask,
    TResult? Function(String taskId, List<String> labels)? startTask,
    TResult? Function(String taskId)? deleteTask,
    TResult? Function(AppLocalizations appLocalization)? deleteAllTask,
    TResult? Function(String commentId, String taskId)? deleteComment,
    TResult? Function(String id)? sortByDateDescending,
    TResult? Function(String id)? sortByNameDescending,
    TResult? Function(String id)? sortByNameAscending,
    TResult? Function(String id)? sortByDateAscending,
    TResult? Function(String id)? sortByPriorityDescending,
    TResult? Function(String id)? sortByPriorityAscending,
  }) {
    return addCurrentTimeStampToAllTasksLocally?.call(savedTime);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TasksTags tasksTags)? updateSelectedTaskTag,
    TResult Function(int index)? removeSelectedTaskTag,
    TResult Function(TasksPriority taskPriority)? updateSelectedTaskPriority,
    TResult Function(TasksStatus tasksStatus)? updateSelectedTaskStatus,
    TResult Function(
            AppLocalizations appLocalization,
            String dueDate,
            String content,
            String description,
            void Function()? Function() onComplete)?
        addNewTask,
    TResult Function(
            AppLocalizations appLocalization,
            String dueDate,
            String content,
            String taskId,
            String description,
            void Function()? Function() onComplete)?
        updateFullTask,
    TResult Function(AppLocalizations appLocalization, String taskId,
            String content, void Function()? Function() onComplete)?
        addNewComment,
    TResult Function(
            AppLocalizations appLocalization,
            String taskId,
            String commentId,
            String content,
            void Function()? Function() onComplete)?
        updateComment,
    TResult Function(
            String taskId, bool isSyncing, InternetState internetState)?
        fetchAllComments,
    TResult Function(bool requiredReload, InternetState internetState)?
        fetchAllTasks,
    TResult Function(File? file)? setPickedFileForComment,
    TResult Function(BuildContext context)? syncData,
    TResult Function()? syncDataInServer,
    TResult Function(int savedTime)? addCurrentTimeStampToAllTasksLocally,
    TResult Function(int index)? updateCurrentHomeIndex,
    TResult Function()? resetSelectItems,
    TResult Function(DateTime focusedDate, InternetState internetState)?
        updateFocusedDate,
    TResult Function()? resetMessage,
    TResult Function(String taskId, String fromSectionId, String sectionId,
            List<String> labels)?
        updateSection,
    TResult Function(String taskId, List<String> labels)? updateTimer,
    TResult Function(String taskId, List<String> labels)? updateTimerState,
    TResult Function(String taskId, List<String> labels)? updateTimerLocally,
    TResult Function(String taskId, List<String> labels)?
        updateTimerStateLocally,
    TResult Function(String taskId, List<String> labels)? completeTask,
    TResult Function(String taskId, List<String> labels)? reopenTask,
    TResult Function(String taskId, List<String> labels)? startTask,
    TResult Function(String taskId)? deleteTask,
    TResult Function(AppLocalizations appLocalization)? deleteAllTask,
    TResult Function(String commentId, String taskId)? deleteComment,
    TResult Function(String id)? sortByDateDescending,
    TResult Function(String id)? sortByNameDescending,
    TResult Function(String id)? sortByNameAscending,
    TResult Function(String id)? sortByDateAscending,
    TResult Function(String id)? sortByPriorityDescending,
    TResult Function(String id)? sortByPriorityAscending,
    required TResult orElse(),
  }) {
    if (addCurrentTimeStampToAllTasksLocally != null) {
      return addCurrentTimeStampToAllTasksLocally(savedTime);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateSelectedTaskTag value)
        updateSelectedTaskTag,
    required TResult Function(_RemoveSelectedTaskTag value)
        removeSelectedTaskTag,
    required TResult Function(_UpdateSelectedTaskPriority value)
        updateSelectedTaskPriority,
    required TResult Function(_UpdateSelectedTaskStatus value)
        updateSelectedTaskStatus,
    required TResult Function(_AddNewTask value) addNewTask,
    required TResult Function(_AddFullTask value) updateFullTask,
    required TResult Function(_AddNewComment value) addNewComment,
    required TResult Function(_Updateomment value) updateComment,
    required TResult Function(_FetchAllComments value) fetchAllComments,
    required TResult Function(_FetchAllTasks value) fetchAllTasks,
    required TResult Function(_SetPickedFileForComment value)
        setPickedFileForComment,
    required TResult Function(_SyncData value) syncData,
    required TResult Function(_SyncDataInServer value) syncDataInServer,
    required TResult Function(_AddCurrentTimeStampToAllTasksLocally value)
        addCurrentTimeStampToAllTasksLocally,
    required TResult Function(_UpdateCurrentHomeIndex value)
        updateCurrentHomeIndex,
    required TResult Function(_ResetSelectItems value) resetSelectItems,
    required TResult Function(_UpdateFocusedDate value) updateFocusedDate,
    required TResult Function(_ResetMessage value) resetMessage,
    required TResult Function(_UpdateSection value) updateSection,
    required TResult Function(_UpdateTimer value) updateTimer,
    required TResult Function(_UpdateTimerState value) updateTimerState,
    required TResult Function(_UpdateTimerLocally value) updateTimerLocally,
    required TResult Function(_UpdateTimerStateLocally value)
        updateTimerStateLocally,
    required TResult Function(_CompleteTask value) completeTask,
    required TResult Function(_ReopenTaskTask value) reopenTask,
    required TResult Function(_StartTask value) startTask,
    required TResult Function(_DeleteTask value) deleteTask,
    required TResult Function(_DeleteAllTask value) deleteAllTask,
    required TResult Function(_DeleteComment value) deleteComment,
    required TResult Function(_SortByDateDescending value) sortByDateDescending,
    required TResult Function(_SortByNameDescending value) sortByNameDescending,
    required TResult Function(_SortByNameAscending value) sortByNameAscending,
    required TResult Function(_SortByDateAscending value) sortByDateAscending,
    required TResult Function(_SortByPriorityDescending value)
        sortByPriorityDescending,
    required TResult Function(_SortByPriorityAscending value)
        sortByPriorityAscending,
  }) {
    return addCurrentTimeStampToAllTasksLocally(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateSelectedTaskTag value)? updateSelectedTaskTag,
    TResult? Function(_RemoveSelectedTaskTag value)? removeSelectedTaskTag,
    TResult? Function(_UpdateSelectedTaskPriority value)?
        updateSelectedTaskPriority,
    TResult? Function(_UpdateSelectedTaskStatus value)?
        updateSelectedTaskStatus,
    TResult? Function(_AddNewTask value)? addNewTask,
    TResult? Function(_AddFullTask value)? updateFullTask,
    TResult? Function(_AddNewComment value)? addNewComment,
    TResult? Function(_Updateomment value)? updateComment,
    TResult? Function(_FetchAllComments value)? fetchAllComments,
    TResult? Function(_FetchAllTasks value)? fetchAllTasks,
    TResult? Function(_SetPickedFileForComment value)? setPickedFileForComment,
    TResult? Function(_SyncData value)? syncData,
    TResult? Function(_SyncDataInServer value)? syncDataInServer,
    TResult? Function(_AddCurrentTimeStampToAllTasksLocally value)?
        addCurrentTimeStampToAllTasksLocally,
    TResult? Function(_UpdateCurrentHomeIndex value)? updateCurrentHomeIndex,
    TResult? Function(_ResetSelectItems value)? resetSelectItems,
    TResult? Function(_UpdateFocusedDate value)? updateFocusedDate,
    TResult? Function(_ResetMessage value)? resetMessage,
    TResult? Function(_UpdateSection value)? updateSection,
    TResult? Function(_UpdateTimer value)? updateTimer,
    TResult? Function(_UpdateTimerState value)? updateTimerState,
    TResult? Function(_UpdateTimerLocally value)? updateTimerLocally,
    TResult? Function(_UpdateTimerStateLocally value)? updateTimerStateLocally,
    TResult? Function(_CompleteTask value)? completeTask,
    TResult? Function(_ReopenTaskTask value)? reopenTask,
    TResult? Function(_StartTask value)? startTask,
    TResult? Function(_DeleteTask value)? deleteTask,
    TResult? Function(_DeleteAllTask value)? deleteAllTask,
    TResult? Function(_DeleteComment value)? deleteComment,
    TResult? Function(_SortByDateDescending value)? sortByDateDescending,
    TResult? Function(_SortByNameDescending value)? sortByNameDescending,
    TResult? Function(_SortByNameAscending value)? sortByNameAscending,
    TResult? Function(_SortByDateAscending value)? sortByDateAscending,
    TResult? Function(_SortByPriorityDescending value)?
        sortByPriorityDescending,
    TResult? Function(_SortByPriorityAscending value)? sortByPriorityAscending,
  }) {
    return addCurrentTimeStampToAllTasksLocally?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateSelectedTaskTag value)? updateSelectedTaskTag,
    TResult Function(_RemoveSelectedTaskTag value)? removeSelectedTaskTag,
    TResult Function(_UpdateSelectedTaskPriority value)?
        updateSelectedTaskPriority,
    TResult Function(_UpdateSelectedTaskStatus value)? updateSelectedTaskStatus,
    TResult Function(_AddNewTask value)? addNewTask,
    TResult Function(_AddFullTask value)? updateFullTask,
    TResult Function(_AddNewComment value)? addNewComment,
    TResult Function(_Updateomment value)? updateComment,
    TResult Function(_FetchAllComments value)? fetchAllComments,
    TResult Function(_FetchAllTasks value)? fetchAllTasks,
    TResult Function(_SetPickedFileForComment value)? setPickedFileForComment,
    TResult Function(_SyncData value)? syncData,
    TResult Function(_SyncDataInServer value)? syncDataInServer,
    TResult Function(_AddCurrentTimeStampToAllTasksLocally value)?
        addCurrentTimeStampToAllTasksLocally,
    TResult Function(_UpdateCurrentHomeIndex value)? updateCurrentHomeIndex,
    TResult Function(_ResetSelectItems value)? resetSelectItems,
    TResult Function(_UpdateFocusedDate value)? updateFocusedDate,
    TResult Function(_ResetMessage value)? resetMessage,
    TResult Function(_UpdateSection value)? updateSection,
    TResult Function(_UpdateTimer value)? updateTimer,
    TResult Function(_UpdateTimerState value)? updateTimerState,
    TResult Function(_UpdateTimerLocally value)? updateTimerLocally,
    TResult Function(_UpdateTimerStateLocally value)? updateTimerStateLocally,
    TResult Function(_CompleteTask value)? completeTask,
    TResult Function(_ReopenTaskTask value)? reopenTask,
    TResult Function(_StartTask value)? startTask,
    TResult Function(_DeleteTask value)? deleteTask,
    TResult Function(_DeleteAllTask value)? deleteAllTask,
    TResult Function(_DeleteComment value)? deleteComment,
    TResult Function(_SortByDateDescending value)? sortByDateDescending,
    TResult Function(_SortByNameDescending value)? sortByNameDescending,
    TResult Function(_SortByNameAscending value)? sortByNameAscending,
    TResult Function(_SortByDateAscending value)? sortByDateAscending,
    TResult Function(_SortByPriorityDescending value)? sortByPriorityDescending,
    TResult Function(_SortByPriorityAscending value)? sortByPriorityAscending,
    required TResult orElse(),
  }) {
    if (addCurrentTimeStampToAllTasksLocally != null) {
      return addCurrentTimeStampToAllTasksLocally(this);
    }
    return orElse();
  }
}

abstract class _AddCurrentTimeStampToAllTasksLocally implements HomeEvent {
  const factory _AddCurrentTimeStampToAllTasksLocally(
          {required final int savedTime}) =
      _$AddCurrentTimeStampToAllTasksLocallyImpl;

  int get savedTime;
  @JsonKey(ignore: true)
  _$$AddCurrentTimeStampToAllTasksLocallyImplCopyWith<
          _$AddCurrentTimeStampToAllTasksLocallyImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateCurrentHomeIndexImplCopyWith<$Res> {
  factory _$$UpdateCurrentHomeIndexImplCopyWith(
          _$UpdateCurrentHomeIndexImpl value,
          $Res Function(_$UpdateCurrentHomeIndexImpl) then) =
      __$$UpdateCurrentHomeIndexImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$$UpdateCurrentHomeIndexImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$UpdateCurrentHomeIndexImpl>
    implements _$$UpdateCurrentHomeIndexImplCopyWith<$Res> {
  __$$UpdateCurrentHomeIndexImplCopyWithImpl(
      _$UpdateCurrentHomeIndexImpl _value,
      $Res Function(_$UpdateCurrentHomeIndexImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_$UpdateCurrentHomeIndexImpl(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$UpdateCurrentHomeIndexImpl implements _UpdateCurrentHomeIndex {
  const _$UpdateCurrentHomeIndexImpl({required this.index});

  @override
  final int index;

  @override
  String toString() {
    return 'HomeEvent.updateCurrentHomeIndex(index: $index)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateCurrentHomeIndexImpl &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateCurrentHomeIndexImplCopyWith<_$UpdateCurrentHomeIndexImpl>
      get copyWith => __$$UpdateCurrentHomeIndexImplCopyWithImpl<
          _$UpdateCurrentHomeIndexImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TasksTags tasksTags) updateSelectedTaskTag,
    required TResult Function(int index) removeSelectedTaskTag,
    required TResult Function(TasksPriority taskPriority)
        updateSelectedTaskPriority,
    required TResult Function(TasksStatus tasksStatus) updateSelectedTaskStatus,
    required TResult Function(
            AppLocalizations appLocalization,
            String dueDate,
            String content,
            String description,
            void Function()? Function() onComplete)
        addNewTask,
    required TResult Function(
            AppLocalizations appLocalization,
            String dueDate,
            String content,
            String taskId,
            String description,
            void Function()? Function() onComplete)
        updateFullTask,
    required TResult Function(AppLocalizations appLocalization, String taskId,
            String content, void Function()? Function() onComplete)
        addNewComment,
    required TResult Function(
            AppLocalizations appLocalization,
            String taskId,
            String commentId,
            String content,
            void Function()? Function() onComplete)
        updateComment,
    required TResult Function(
            String taskId, bool isSyncing, InternetState internetState)
        fetchAllComments,
    required TResult Function(bool requiredReload, InternetState internetState)
        fetchAllTasks,
    required TResult Function(File? file) setPickedFileForComment,
    required TResult Function(BuildContext context) syncData,
    required TResult Function() syncDataInServer,
    required TResult Function(int savedTime)
        addCurrentTimeStampToAllTasksLocally,
    required TResult Function(int index) updateCurrentHomeIndex,
    required TResult Function() resetSelectItems,
    required TResult Function(DateTime focusedDate, InternetState internetState)
        updateFocusedDate,
    required TResult Function() resetMessage,
    required TResult Function(String taskId, String fromSectionId,
            String sectionId, List<String> labels)
        updateSection,
    required TResult Function(String taskId, List<String> labels) updateTimer,
    required TResult Function(String taskId, List<String> labels)
        updateTimerState,
    required TResult Function(String taskId, List<String> labels)
        updateTimerLocally,
    required TResult Function(String taskId, List<String> labels)
        updateTimerStateLocally,
    required TResult Function(String taskId, List<String> labels) completeTask,
    required TResult Function(String taskId, List<String> labels) reopenTask,
    required TResult Function(String taskId, List<String> labels) startTask,
    required TResult Function(String taskId) deleteTask,
    required TResult Function(AppLocalizations appLocalization) deleteAllTask,
    required TResult Function(String commentId, String taskId) deleteComment,
    required TResult Function(String id) sortByDateDescending,
    required TResult Function(String id) sortByNameDescending,
    required TResult Function(String id) sortByNameAscending,
    required TResult Function(String id) sortByDateAscending,
    required TResult Function(String id) sortByPriorityDescending,
    required TResult Function(String id) sortByPriorityAscending,
  }) {
    return updateCurrentHomeIndex(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TasksTags tasksTags)? updateSelectedTaskTag,
    TResult? Function(int index)? removeSelectedTaskTag,
    TResult? Function(TasksPriority taskPriority)? updateSelectedTaskPriority,
    TResult? Function(TasksStatus tasksStatus)? updateSelectedTaskStatus,
    TResult? Function(
            AppLocalizations appLocalization,
            String dueDate,
            String content,
            String description,
            void Function()? Function() onComplete)?
        addNewTask,
    TResult? Function(
            AppLocalizations appLocalization,
            String dueDate,
            String content,
            String taskId,
            String description,
            void Function()? Function() onComplete)?
        updateFullTask,
    TResult? Function(AppLocalizations appLocalization, String taskId,
            String content, void Function()? Function() onComplete)?
        addNewComment,
    TResult? Function(
            AppLocalizations appLocalization,
            String taskId,
            String commentId,
            String content,
            void Function()? Function() onComplete)?
        updateComment,
    TResult? Function(
            String taskId, bool isSyncing, InternetState internetState)?
        fetchAllComments,
    TResult? Function(bool requiredReload, InternetState internetState)?
        fetchAllTasks,
    TResult? Function(File? file)? setPickedFileForComment,
    TResult? Function(BuildContext context)? syncData,
    TResult? Function()? syncDataInServer,
    TResult? Function(int savedTime)? addCurrentTimeStampToAllTasksLocally,
    TResult? Function(int index)? updateCurrentHomeIndex,
    TResult? Function()? resetSelectItems,
    TResult? Function(DateTime focusedDate, InternetState internetState)?
        updateFocusedDate,
    TResult? Function()? resetMessage,
    TResult? Function(String taskId, String fromSectionId, String sectionId,
            List<String> labels)?
        updateSection,
    TResult? Function(String taskId, List<String> labels)? updateTimer,
    TResult? Function(String taskId, List<String> labels)? updateTimerState,
    TResult? Function(String taskId, List<String> labels)? updateTimerLocally,
    TResult? Function(String taskId, List<String> labels)?
        updateTimerStateLocally,
    TResult? Function(String taskId, List<String> labels)? completeTask,
    TResult? Function(String taskId, List<String> labels)? reopenTask,
    TResult? Function(String taskId, List<String> labels)? startTask,
    TResult? Function(String taskId)? deleteTask,
    TResult? Function(AppLocalizations appLocalization)? deleteAllTask,
    TResult? Function(String commentId, String taskId)? deleteComment,
    TResult? Function(String id)? sortByDateDescending,
    TResult? Function(String id)? sortByNameDescending,
    TResult? Function(String id)? sortByNameAscending,
    TResult? Function(String id)? sortByDateAscending,
    TResult? Function(String id)? sortByPriorityDescending,
    TResult? Function(String id)? sortByPriorityAscending,
  }) {
    return updateCurrentHomeIndex?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TasksTags tasksTags)? updateSelectedTaskTag,
    TResult Function(int index)? removeSelectedTaskTag,
    TResult Function(TasksPriority taskPriority)? updateSelectedTaskPriority,
    TResult Function(TasksStatus tasksStatus)? updateSelectedTaskStatus,
    TResult Function(
            AppLocalizations appLocalization,
            String dueDate,
            String content,
            String description,
            void Function()? Function() onComplete)?
        addNewTask,
    TResult Function(
            AppLocalizations appLocalization,
            String dueDate,
            String content,
            String taskId,
            String description,
            void Function()? Function() onComplete)?
        updateFullTask,
    TResult Function(AppLocalizations appLocalization, String taskId,
            String content, void Function()? Function() onComplete)?
        addNewComment,
    TResult Function(
            AppLocalizations appLocalization,
            String taskId,
            String commentId,
            String content,
            void Function()? Function() onComplete)?
        updateComment,
    TResult Function(
            String taskId, bool isSyncing, InternetState internetState)?
        fetchAllComments,
    TResult Function(bool requiredReload, InternetState internetState)?
        fetchAllTasks,
    TResult Function(File? file)? setPickedFileForComment,
    TResult Function(BuildContext context)? syncData,
    TResult Function()? syncDataInServer,
    TResult Function(int savedTime)? addCurrentTimeStampToAllTasksLocally,
    TResult Function(int index)? updateCurrentHomeIndex,
    TResult Function()? resetSelectItems,
    TResult Function(DateTime focusedDate, InternetState internetState)?
        updateFocusedDate,
    TResult Function()? resetMessage,
    TResult Function(String taskId, String fromSectionId, String sectionId,
            List<String> labels)?
        updateSection,
    TResult Function(String taskId, List<String> labels)? updateTimer,
    TResult Function(String taskId, List<String> labels)? updateTimerState,
    TResult Function(String taskId, List<String> labels)? updateTimerLocally,
    TResult Function(String taskId, List<String> labels)?
        updateTimerStateLocally,
    TResult Function(String taskId, List<String> labels)? completeTask,
    TResult Function(String taskId, List<String> labels)? reopenTask,
    TResult Function(String taskId, List<String> labels)? startTask,
    TResult Function(String taskId)? deleteTask,
    TResult Function(AppLocalizations appLocalization)? deleteAllTask,
    TResult Function(String commentId, String taskId)? deleteComment,
    TResult Function(String id)? sortByDateDescending,
    TResult Function(String id)? sortByNameDescending,
    TResult Function(String id)? sortByNameAscending,
    TResult Function(String id)? sortByDateAscending,
    TResult Function(String id)? sortByPriorityDescending,
    TResult Function(String id)? sortByPriorityAscending,
    required TResult orElse(),
  }) {
    if (updateCurrentHomeIndex != null) {
      return updateCurrentHomeIndex(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateSelectedTaskTag value)
        updateSelectedTaskTag,
    required TResult Function(_RemoveSelectedTaskTag value)
        removeSelectedTaskTag,
    required TResult Function(_UpdateSelectedTaskPriority value)
        updateSelectedTaskPriority,
    required TResult Function(_UpdateSelectedTaskStatus value)
        updateSelectedTaskStatus,
    required TResult Function(_AddNewTask value) addNewTask,
    required TResult Function(_AddFullTask value) updateFullTask,
    required TResult Function(_AddNewComment value) addNewComment,
    required TResult Function(_Updateomment value) updateComment,
    required TResult Function(_FetchAllComments value) fetchAllComments,
    required TResult Function(_FetchAllTasks value) fetchAllTasks,
    required TResult Function(_SetPickedFileForComment value)
        setPickedFileForComment,
    required TResult Function(_SyncData value) syncData,
    required TResult Function(_SyncDataInServer value) syncDataInServer,
    required TResult Function(_AddCurrentTimeStampToAllTasksLocally value)
        addCurrentTimeStampToAllTasksLocally,
    required TResult Function(_UpdateCurrentHomeIndex value)
        updateCurrentHomeIndex,
    required TResult Function(_ResetSelectItems value) resetSelectItems,
    required TResult Function(_UpdateFocusedDate value) updateFocusedDate,
    required TResult Function(_ResetMessage value) resetMessage,
    required TResult Function(_UpdateSection value) updateSection,
    required TResult Function(_UpdateTimer value) updateTimer,
    required TResult Function(_UpdateTimerState value) updateTimerState,
    required TResult Function(_UpdateTimerLocally value) updateTimerLocally,
    required TResult Function(_UpdateTimerStateLocally value)
        updateTimerStateLocally,
    required TResult Function(_CompleteTask value) completeTask,
    required TResult Function(_ReopenTaskTask value) reopenTask,
    required TResult Function(_StartTask value) startTask,
    required TResult Function(_DeleteTask value) deleteTask,
    required TResult Function(_DeleteAllTask value) deleteAllTask,
    required TResult Function(_DeleteComment value) deleteComment,
    required TResult Function(_SortByDateDescending value) sortByDateDescending,
    required TResult Function(_SortByNameDescending value) sortByNameDescending,
    required TResult Function(_SortByNameAscending value) sortByNameAscending,
    required TResult Function(_SortByDateAscending value) sortByDateAscending,
    required TResult Function(_SortByPriorityDescending value)
        sortByPriorityDescending,
    required TResult Function(_SortByPriorityAscending value)
        sortByPriorityAscending,
  }) {
    return updateCurrentHomeIndex(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateSelectedTaskTag value)? updateSelectedTaskTag,
    TResult? Function(_RemoveSelectedTaskTag value)? removeSelectedTaskTag,
    TResult? Function(_UpdateSelectedTaskPriority value)?
        updateSelectedTaskPriority,
    TResult? Function(_UpdateSelectedTaskStatus value)?
        updateSelectedTaskStatus,
    TResult? Function(_AddNewTask value)? addNewTask,
    TResult? Function(_AddFullTask value)? updateFullTask,
    TResult? Function(_AddNewComment value)? addNewComment,
    TResult? Function(_Updateomment value)? updateComment,
    TResult? Function(_FetchAllComments value)? fetchAllComments,
    TResult? Function(_FetchAllTasks value)? fetchAllTasks,
    TResult? Function(_SetPickedFileForComment value)? setPickedFileForComment,
    TResult? Function(_SyncData value)? syncData,
    TResult? Function(_SyncDataInServer value)? syncDataInServer,
    TResult? Function(_AddCurrentTimeStampToAllTasksLocally value)?
        addCurrentTimeStampToAllTasksLocally,
    TResult? Function(_UpdateCurrentHomeIndex value)? updateCurrentHomeIndex,
    TResult? Function(_ResetSelectItems value)? resetSelectItems,
    TResult? Function(_UpdateFocusedDate value)? updateFocusedDate,
    TResult? Function(_ResetMessage value)? resetMessage,
    TResult? Function(_UpdateSection value)? updateSection,
    TResult? Function(_UpdateTimer value)? updateTimer,
    TResult? Function(_UpdateTimerState value)? updateTimerState,
    TResult? Function(_UpdateTimerLocally value)? updateTimerLocally,
    TResult? Function(_UpdateTimerStateLocally value)? updateTimerStateLocally,
    TResult? Function(_CompleteTask value)? completeTask,
    TResult? Function(_ReopenTaskTask value)? reopenTask,
    TResult? Function(_StartTask value)? startTask,
    TResult? Function(_DeleteTask value)? deleteTask,
    TResult? Function(_DeleteAllTask value)? deleteAllTask,
    TResult? Function(_DeleteComment value)? deleteComment,
    TResult? Function(_SortByDateDescending value)? sortByDateDescending,
    TResult? Function(_SortByNameDescending value)? sortByNameDescending,
    TResult? Function(_SortByNameAscending value)? sortByNameAscending,
    TResult? Function(_SortByDateAscending value)? sortByDateAscending,
    TResult? Function(_SortByPriorityDescending value)?
        sortByPriorityDescending,
    TResult? Function(_SortByPriorityAscending value)? sortByPriorityAscending,
  }) {
    return updateCurrentHomeIndex?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateSelectedTaskTag value)? updateSelectedTaskTag,
    TResult Function(_RemoveSelectedTaskTag value)? removeSelectedTaskTag,
    TResult Function(_UpdateSelectedTaskPriority value)?
        updateSelectedTaskPriority,
    TResult Function(_UpdateSelectedTaskStatus value)? updateSelectedTaskStatus,
    TResult Function(_AddNewTask value)? addNewTask,
    TResult Function(_AddFullTask value)? updateFullTask,
    TResult Function(_AddNewComment value)? addNewComment,
    TResult Function(_Updateomment value)? updateComment,
    TResult Function(_FetchAllComments value)? fetchAllComments,
    TResult Function(_FetchAllTasks value)? fetchAllTasks,
    TResult Function(_SetPickedFileForComment value)? setPickedFileForComment,
    TResult Function(_SyncData value)? syncData,
    TResult Function(_SyncDataInServer value)? syncDataInServer,
    TResult Function(_AddCurrentTimeStampToAllTasksLocally value)?
        addCurrentTimeStampToAllTasksLocally,
    TResult Function(_UpdateCurrentHomeIndex value)? updateCurrentHomeIndex,
    TResult Function(_ResetSelectItems value)? resetSelectItems,
    TResult Function(_UpdateFocusedDate value)? updateFocusedDate,
    TResult Function(_ResetMessage value)? resetMessage,
    TResult Function(_UpdateSection value)? updateSection,
    TResult Function(_UpdateTimer value)? updateTimer,
    TResult Function(_UpdateTimerState value)? updateTimerState,
    TResult Function(_UpdateTimerLocally value)? updateTimerLocally,
    TResult Function(_UpdateTimerStateLocally value)? updateTimerStateLocally,
    TResult Function(_CompleteTask value)? completeTask,
    TResult Function(_ReopenTaskTask value)? reopenTask,
    TResult Function(_StartTask value)? startTask,
    TResult Function(_DeleteTask value)? deleteTask,
    TResult Function(_DeleteAllTask value)? deleteAllTask,
    TResult Function(_DeleteComment value)? deleteComment,
    TResult Function(_SortByDateDescending value)? sortByDateDescending,
    TResult Function(_SortByNameDescending value)? sortByNameDescending,
    TResult Function(_SortByNameAscending value)? sortByNameAscending,
    TResult Function(_SortByDateAscending value)? sortByDateAscending,
    TResult Function(_SortByPriorityDescending value)? sortByPriorityDescending,
    TResult Function(_SortByPriorityAscending value)? sortByPriorityAscending,
    required TResult orElse(),
  }) {
    if (updateCurrentHomeIndex != null) {
      return updateCurrentHomeIndex(this);
    }
    return orElse();
  }
}

abstract class _UpdateCurrentHomeIndex implements HomeEvent {
  const factory _UpdateCurrentHomeIndex({required final int index}) =
      _$UpdateCurrentHomeIndexImpl;

  int get index;
  @JsonKey(ignore: true)
  _$$UpdateCurrentHomeIndexImplCopyWith<_$UpdateCurrentHomeIndexImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ResetSelectItemsImplCopyWith<$Res> {
  factory _$$ResetSelectItemsImplCopyWith(_$ResetSelectItemsImpl value,
          $Res Function(_$ResetSelectItemsImpl) then) =
      __$$ResetSelectItemsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ResetSelectItemsImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$ResetSelectItemsImpl>
    implements _$$ResetSelectItemsImplCopyWith<$Res> {
  __$$ResetSelectItemsImplCopyWithImpl(_$ResetSelectItemsImpl _value,
      $Res Function(_$ResetSelectItemsImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ResetSelectItemsImpl implements _ResetSelectItems {
  const _$ResetSelectItemsImpl();

  @override
  String toString() {
    return 'HomeEvent.resetSelectItems()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ResetSelectItemsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TasksTags tasksTags) updateSelectedTaskTag,
    required TResult Function(int index) removeSelectedTaskTag,
    required TResult Function(TasksPriority taskPriority)
        updateSelectedTaskPriority,
    required TResult Function(TasksStatus tasksStatus) updateSelectedTaskStatus,
    required TResult Function(
            AppLocalizations appLocalization,
            String dueDate,
            String content,
            String description,
            void Function()? Function() onComplete)
        addNewTask,
    required TResult Function(
            AppLocalizations appLocalization,
            String dueDate,
            String content,
            String taskId,
            String description,
            void Function()? Function() onComplete)
        updateFullTask,
    required TResult Function(AppLocalizations appLocalization, String taskId,
            String content, void Function()? Function() onComplete)
        addNewComment,
    required TResult Function(
            AppLocalizations appLocalization,
            String taskId,
            String commentId,
            String content,
            void Function()? Function() onComplete)
        updateComment,
    required TResult Function(
            String taskId, bool isSyncing, InternetState internetState)
        fetchAllComments,
    required TResult Function(bool requiredReload, InternetState internetState)
        fetchAllTasks,
    required TResult Function(File? file) setPickedFileForComment,
    required TResult Function(BuildContext context) syncData,
    required TResult Function() syncDataInServer,
    required TResult Function(int savedTime)
        addCurrentTimeStampToAllTasksLocally,
    required TResult Function(int index) updateCurrentHomeIndex,
    required TResult Function() resetSelectItems,
    required TResult Function(DateTime focusedDate, InternetState internetState)
        updateFocusedDate,
    required TResult Function() resetMessage,
    required TResult Function(String taskId, String fromSectionId,
            String sectionId, List<String> labels)
        updateSection,
    required TResult Function(String taskId, List<String> labels) updateTimer,
    required TResult Function(String taskId, List<String> labels)
        updateTimerState,
    required TResult Function(String taskId, List<String> labels)
        updateTimerLocally,
    required TResult Function(String taskId, List<String> labels)
        updateTimerStateLocally,
    required TResult Function(String taskId, List<String> labels) completeTask,
    required TResult Function(String taskId, List<String> labels) reopenTask,
    required TResult Function(String taskId, List<String> labels) startTask,
    required TResult Function(String taskId) deleteTask,
    required TResult Function(AppLocalizations appLocalization) deleteAllTask,
    required TResult Function(String commentId, String taskId) deleteComment,
    required TResult Function(String id) sortByDateDescending,
    required TResult Function(String id) sortByNameDescending,
    required TResult Function(String id) sortByNameAscending,
    required TResult Function(String id) sortByDateAscending,
    required TResult Function(String id) sortByPriorityDescending,
    required TResult Function(String id) sortByPriorityAscending,
  }) {
    return resetSelectItems();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TasksTags tasksTags)? updateSelectedTaskTag,
    TResult? Function(int index)? removeSelectedTaskTag,
    TResult? Function(TasksPriority taskPriority)? updateSelectedTaskPriority,
    TResult? Function(TasksStatus tasksStatus)? updateSelectedTaskStatus,
    TResult? Function(
            AppLocalizations appLocalization,
            String dueDate,
            String content,
            String description,
            void Function()? Function() onComplete)?
        addNewTask,
    TResult? Function(
            AppLocalizations appLocalization,
            String dueDate,
            String content,
            String taskId,
            String description,
            void Function()? Function() onComplete)?
        updateFullTask,
    TResult? Function(AppLocalizations appLocalization, String taskId,
            String content, void Function()? Function() onComplete)?
        addNewComment,
    TResult? Function(
            AppLocalizations appLocalization,
            String taskId,
            String commentId,
            String content,
            void Function()? Function() onComplete)?
        updateComment,
    TResult? Function(
            String taskId, bool isSyncing, InternetState internetState)?
        fetchAllComments,
    TResult? Function(bool requiredReload, InternetState internetState)?
        fetchAllTasks,
    TResult? Function(File? file)? setPickedFileForComment,
    TResult? Function(BuildContext context)? syncData,
    TResult? Function()? syncDataInServer,
    TResult? Function(int savedTime)? addCurrentTimeStampToAllTasksLocally,
    TResult? Function(int index)? updateCurrentHomeIndex,
    TResult? Function()? resetSelectItems,
    TResult? Function(DateTime focusedDate, InternetState internetState)?
        updateFocusedDate,
    TResult? Function()? resetMessage,
    TResult? Function(String taskId, String fromSectionId, String sectionId,
            List<String> labels)?
        updateSection,
    TResult? Function(String taskId, List<String> labels)? updateTimer,
    TResult? Function(String taskId, List<String> labels)? updateTimerState,
    TResult? Function(String taskId, List<String> labels)? updateTimerLocally,
    TResult? Function(String taskId, List<String> labels)?
        updateTimerStateLocally,
    TResult? Function(String taskId, List<String> labels)? completeTask,
    TResult? Function(String taskId, List<String> labels)? reopenTask,
    TResult? Function(String taskId, List<String> labels)? startTask,
    TResult? Function(String taskId)? deleteTask,
    TResult? Function(AppLocalizations appLocalization)? deleteAllTask,
    TResult? Function(String commentId, String taskId)? deleteComment,
    TResult? Function(String id)? sortByDateDescending,
    TResult? Function(String id)? sortByNameDescending,
    TResult? Function(String id)? sortByNameAscending,
    TResult? Function(String id)? sortByDateAscending,
    TResult? Function(String id)? sortByPriorityDescending,
    TResult? Function(String id)? sortByPriorityAscending,
  }) {
    return resetSelectItems?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TasksTags tasksTags)? updateSelectedTaskTag,
    TResult Function(int index)? removeSelectedTaskTag,
    TResult Function(TasksPriority taskPriority)? updateSelectedTaskPriority,
    TResult Function(TasksStatus tasksStatus)? updateSelectedTaskStatus,
    TResult Function(
            AppLocalizations appLocalization,
            String dueDate,
            String content,
            String description,
            void Function()? Function() onComplete)?
        addNewTask,
    TResult Function(
            AppLocalizations appLocalization,
            String dueDate,
            String content,
            String taskId,
            String description,
            void Function()? Function() onComplete)?
        updateFullTask,
    TResult Function(AppLocalizations appLocalization, String taskId,
            String content, void Function()? Function() onComplete)?
        addNewComment,
    TResult Function(
            AppLocalizations appLocalization,
            String taskId,
            String commentId,
            String content,
            void Function()? Function() onComplete)?
        updateComment,
    TResult Function(
            String taskId, bool isSyncing, InternetState internetState)?
        fetchAllComments,
    TResult Function(bool requiredReload, InternetState internetState)?
        fetchAllTasks,
    TResult Function(File? file)? setPickedFileForComment,
    TResult Function(BuildContext context)? syncData,
    TResult Function()? syncDataInServer,
    TResult Function(int savedTime)? addCurrentTimeStampToAllTasksLocally,
    TResult Function(int index)? updateCurrentHomeIndex,
    TResult Function()? resetSelectItems,
    TResult Function(DateTime focusedDate, InternetState internetState)?
        updateFocusedDate,
    TResult Function()? resetMessage,
    TResult Function(String taskId, String fromSectionId, String sectionId,
            List<String> labels)?
        updateSection,
    TResult Function(String taskId, List<String> labels)? updateTimer,
    TResult Function(String taskId, List<String> labels)? updateTimerState,
    TResult Function(String taskId, List<String> labels)? updateTimerLocally,
    TResult Function(String taskId, List<String> labels)?
        updateTimerStateLocally,
    TResult Function(String taskId, List<String> labels)? completeTask,
    TResult Function(String taskId, List<String> labels)? reopenTask,
    TResult Function(String taskId, List<String> labels)? startTask,
    TResult Function(String taskId)? deleteTask,
    TResult Function(AppLocalizations appLocalization)? deleteAllTask,
    TResult Function(String commentId, String taskId)? deleteComment,
    TResult Function(String id)? sortByDateDescending,
    TResult Function(String id)? sortByNameDescending,
    TResult Function(String id)? sortByNameAscending,
    TResult Function(String id)? sortByDateAscending,
    TResult Function(String id)? sortByPriorityDescending,
    TResult Function(String id)? sortByPriorityAscending,
    required TResult orElse(),
  }) {
    if (resetSelectItems != null) {
      return resetSelectItems();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateSelectedTaskTag value)
        updateSelectedTaskTag,
    required TResult Function(_RemoveSelectedTaskTag value)
        removeSelectedTaskTag,
    required TResult Function(_UpdateSelectedTaskPriority value)
        updateSelectedTaskPriority,
    required TResult Function(_UpdateSelectedTaskStatus value)
        updateSelectedTaskStatus,
    required TResult Function(_AddNewTask value) addNewTask,
    required TResult Function(_AddFullTask value) updateFullTask,
    required TResult Function(_AddNewComment value) addNewComment,
    required TResult Function(_Updateomment value) updateComment,
    required TResult Function(_FetchAllComments value) fetchAllComments,
    required TResult Function(_FetchAllTasks value) fetchAllTasks,
    required TResult Function(_SetPickedFileForComment value)
        setPickedFileForComment,
    required TResult Function(_SyncData value) syncData,
    required TResult Function(_SyncDataInServer value) syncDataInServer,
    required TResult Function(_AddCurrentTimeStampToAllTasksLocally value)
        addCurrentTimeStampToAllTasksLocally,
    required TResult Function(_UpdateCurrentHomeIndex value)
        updateCurrentHomeIndex,
    required TResult Function(_ResetSelectItems value) resetSelectItems,
    required TResult Function(_UpdateFocusedDate value) updateFocusedDate,
    required TResult Function(_ResetMessage value) resetMessage,
    required TResult Function(_UpdateSection value) updateSection,
    required TResult Function(_UpdateTimer value) updateTimer,
    required TResult Function(_UpdateTimerState value) updateTimerState,
    required TResult Function(_UpdateTimerLocally value) updateTimerLocally,
    required TResult Function(_UpdateTimerStateLocally value)
        updateTimerStateLocally,
    required TResult Function(_CompleteTask value) completeTask,
    required TResult Function(_ReopenTaskTask value) reopenTask,
    required TResult Function(_StartTask value) startTask,
    required TResult Function(_DeleteTask value) deleteTask,
    required TResult Function(_DeleteAllTask value) deleteAllTask,
    required TResult Function(_DeleteComment value) deleteComment,
    required TResult Function(_SortByDateDescending value) sortByDateDescending,
    required TResult Function(_SortByNameDescending value) sortByNameDescending,
    required TResult Function(_SortByNameAscending value) sortByNameAscending,
    required TResult Function(_SortByDateAscending value) sortByDateAscending,
    required TResult Function(_SortByPriorityDescending value)
        sortByPriorityDescending,
    required TResult Function(_SortByPriorityAscending value)
        sortByPriorityAscending,
  }) {
    return resetSelectItems(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateSelectedTaskTag value)? updateSelectedTaskTag,
    TResult? Function(_RemoveSelectedTaskTag value)? removeSelectedTaskTag,
    TResult? Function(_UpdateSelectedTaskPriority value)?
        updateSelectedTaskPriority,
    TResult? Function(_UpdateSelectedTaskStatus value)?
        updateSelectedTaskStatus,
    TResult? Function(_AddNewTask value)? addNewTask,
    TResult? Function(_AddFullTask value)? updateFullTask,
    TResult? Function(_AddNewComment value)? addNewComment,
    TResult? Function(_Updateomment value)? updateComment,
    TResult? Function(_FetchAllComments value)? fetchAllComments,
    TResult? Function(_FetchAllTasks value)? fetchAllTasks,
    TResult? Function(_SetPickedFileForComment value)? setPickedFileForComment,
    TResult? Function(_SyncData value)? syncData,
    TResult? Function(_SyncDataInServer value)? syncDataInServer,
    TResult? Function(_AddCurrentTimeStampToAllTasksLocally value)?
        addCurrentTimeStampToAllTasksLocally,
    TResult? Function(_UpdateCurrentHomeIndex value)? updateCurrentHomeIndex,
    TResult? Function(_ResetSelectItems value)? resetSelectItems,
    TResult? Function(_UpdateFocusedDate value)? updateFocusedDate,
    TResult? Function(_ResetMessage value)? resetMessage,
    TResult? Function(_UpdateSection value)? updateSection,
    TResult? Function(_UpdateTimer value)? updateTimer,
    TResult? Function(_UpdateTimerState value)? updateTimerState,
    TResult? Function(_UpdateTimerLocally value)? updateTimerLocally,
    TResult? Function(_UpdateTimerStateLocally value)? updateTimerStateLocally,
    TResult? Function(_CompleteTask value)? completeTask,
    TResult? Function(_ReopenTaskTask value)? reopenTask,
    TResult? Function(_StartTask value)? startTask,
    TResult? Function(_DeleteTask value)? deleteTask,
    TResult? Function(_DeleteAllTask value)? deleteAllTask,
    TResult? Function(_DeleteComment value)? deleteComment,
    TResult? Function(_SortByDateDescending value)? sortByDateDescending,
    TResult? Function(_SortByNameDescending value)? sortByNameDescending,
    TResult? Function(_SortByNameAscending value)? sortByNameAscending,
    TResult? Function(_SortByDateAscending value)? sortByDateAscending,
    TResult? Function(_SortByPriorityDescending value)?
        sortByPriorityDescending,
    TResult? Function(_SortByPriorityAscending value)? sortByPriorityAscending,
  }) {
    return resetSelectItems?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateSelectedTaskTag value)? updateSelectedTaskTag,
    TResult Function(_RemoveSelectedTaskTag value)? removeSelectedTaskTag,
    TResult Function(_UpdateSelectedTaskPriority value)?
        updateSelectedTaskPriority,
    TResult Function(_UpdateSelectedTaskStatus value)? updateSelectedTaskStatus,
    TResult Function(_AddNewTask value)? addNewTask,
    TResult Function(_AddFullTask value)? updateFullTask,
    TResult Function(_AddNewComment value)? addNewComment,
    TResult Function(_Updateomment value)? updateComment,
    TResult Function(_FetchAllComments value)? fetchAllComments,
    TResult Function(_FetchAllTasks value)? fetchAllTasks,
    TResult Function(_SetPickedFileForComment value)? setPickedFileForComment,
    TResult Function(_SyncData value)? syncData,
    TResult Function(_SyncDataInServer value)? syncDataInServer,
    TResult Function(_AddCurrentTimeStampToAllTasksLocally value)?
        addCurrentTimeStampToAllTasksLocally,
    TResult Function(_UpdateCurrentHomeIndex value)? updateCurrentHomeIndex,
    TResult Function(_ResetSelectItems value)? resetSelectItems,
    TResult Function(_UpdateFocusedDate value)? updateFocusedDate,
    TResult Function(_ResetMessage value)? resetMessage,
    TResult Function(_UpdateSection value)? updateSection,
    TResult Function(_UpdateTimer value)? updateTimer,
    TResult Function(_UpdateTimerState value)? updateTimerState,
    TResult Function(_UpdateTimerLocally value)? updateTimerLocally,
    TResult Function(_UpdateTimerStateLocally value)? updateTimerStateLocally,
    TResult Function(_CompleteTask value)? completeTask,
    TResult Function(_ReopenTaskTask value)? reopenTask,
    TResult Function(_StartTask value)? startTask,
    TResult Function(_DeleteTask value)? deleteTask,
    TResult Function(_DeleteAllTask value)? deleteAllTask,
    TResult Function(_DeleteComment value)? deleteComment,
    TResult Function(_SortByDateDescending value)? sortByDateDescending,
    TResult Function(_SortByNameDescending value)? sortByNameDescending,
    TResult Function(_SortByNameAscending value)? sortByNameAscending,
    TResult Function(_SortByDateAscending value)? sortByDateAscending,
    TResult Function(_SortByPriorityDescending value)? sortByPriorityDescending,
    TResult Function(_SortByPriorityAscending value)? sortByPriorityAscending,
    required TResult orElse(),
  }) {
    if (resetSelectItems != null) {
      return resetSelectItems(this);
    }
    return orElse();
  }
}

abstract class _ResetSelectItems implements HomeEvent {
  const factory _ResetSelectItems() = _$ResetSelectItemsImpl;
}

/// @nodoc
abstract class _$$UpdateFocusedDateImplCopyWith<$Res> {
  factory _$$UpdateFocusedDateImplCopyWith(_$UpdateFocusedDateImpl value,
          $Res Function(_$UpdateFocusedDateImpl) then) =
      __$$UpdateFocusedDateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DateTime focusedDate, InternetState internetState});
}

/// @nodoc
class __$$UpdateFocusedDateImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$UpdateFocusedDateImpl>
    implements _$$UpdateFocusedDateImplCopyWith<$Res> {
  __$$UpdateFocusedDateImplCopyWithImpl(_$UpdateFocusedDateImpl _value,
      $Res Function(_$UpdateFocusedDateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? focusedDate = null,
    Object? internetState = null,
  }) {
    return _then(_$UpdateFocusedDateImpl(
      focusedDate: null == focusedDate
          ? _value.focusedDate
          : focusedDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      internetState: null == internetState
          ? _value.internetState
          : internetState // ignore: cast_nullable_to_non_nullable
              as InternetState,
    ));
  }
}

/// @nodoc

class _$UpdateFocusedDateImpl implements _UpdateFocusedDate {
  const _$UpdateFocusedDateImpl(
      {required this.focusedDate, required this.internetState});

  @override
  final DateTime focusedDate;
  @override
  final InternetState internetState;

  @override
  String toString() {
    return 'HomeEvent.updateFocusedDate(focusedDate: $focusedDate, internetState: $internetState)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateFocusedDateImpl &&
            (identical(other.focusedDate, focusedDate) ||
                other.focusedDate == focusedDate) &&
            (identical(other.internetState, internetState) ||
                other.internetState == internetState));
  }

  @override
  int get hashCode => Object.hash(runtimeType, focusedDate, internetState);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateFocusedDateImplCopyWith<_$UpdateFocusedDateImpl> get copyWith =>
      __$$UpdateFocusedDateImplCopyWithImpl<_$UpdateFocusedDateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TasksTags tasksTags) updateSelectedTaskTag,
    required TResult Function(int index) removeSelectedTaskTag,
    required TResult Function(TasksPriority taskPriority)
        updateSelectedTaskPriority,
    required TResult Function(TasksStatus tasksStatus) updateSelectedTaskStatus,
    required TResult Function(
            AppLocalizations appLocalization,
            String dueDate,
            String content,
            String description,
            void Function()? Function() onComplete)
        addNewTask,
    required TResult Function(
            AppLocalizations appLocalization,
            String dueDate,
            String content,
            String taskId,
            String description,
            void Function()? Function() onComplete)
        updateFullTask,
    required TResult Function(AppLocalizations appLocalization, String taskId,
            String content, void Function()? Function() onComplete)
        addNewComment,
    required TResult Function(
            AppLocalizations appLocalization,
            String taskId,
            String commentId,
            String content,
            void Function()? Function() onComplete)
        updateComment,
    required TResult Function(
            String taskId, bool isSyncing, InternetState internetState)
        fetchAllComments,
    required TResult Function(bool requiredReload, InternetState internetState)
        fetchAllTasks,
    required TResult Function(File? file) setPickedFileForComment,
    required TResult Function(BuildContext context) syncData,
    required TResult Function() syncDataInServer,
    required TResult Function(int savedTime)
        addCurrentTimeStampToAllTasksLocally,
    required TResult Function(int index) updateCurrentHomeIndex,
    required TResult Function() resetSelectItems,
    required TResult Function(DateTime focusedDate, InternetState internetState)
        updateFocusedDate,
    required TResult Function() resetMessage,
    required TResult Function(String taskId, String fromSectionId,
            String sectionId, List<String> labels)
        updateSection,
    required TResult Function(String taskId, List<String> labels) updateTimer,
    required TResult Function(String taskId, List<String> labels)
        updateTimerState,
    required TResult Function(String taskId, List<String> labels)
        updateTimerLocally,
    required TResult Function(String taskId, List<String> labels)
        updateTimerStateLocally,
    required TResult Function(String taskId, List<String> labels) completeTask,
    required TResult Function(String taskId, List<String> labels) reopenTask,
    required TResult Function(String taskId, List<String> labels) startTask,
    required TResult Function(String taskId) deleteTask,
    required TResult Function(AppLocalizations appLocalization) deleteAllTask,
    required TResult Function(String commentId, String taskId) deleteComment,
    required TResult Function(String id) sortByDateDescending,
    required TResult Function(String id) sortByNameDescending,
    required TResult Function(String id) sortByNameAscending,
    required TResult Function(String id) sortByDateAscending,
    required TResult Function(String id) sortByPriorityDescending,
    required TResult Function(String id) sortByPriorityAscending,
  }) {
    return updateFocusedDate(focusedDate, internetState);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TasksTags tasksTags)? updateSelectedTaskTag,
    TResult? Function(int index)? removeSelectedTaskTag,
    TResult? Function(TasksPriority taskPriority)? updateSelectedTaskPriority,
    TResult? Function(TasksStatus tasksStatus)? updateSelectedTaskStatus,
    TResult? Function(
            AppLocalizations appLocalization,
            String dueDate,
            String content,
            String description,
            void Function()? Function() onComplete)?
        addNewTask,
    TResult? Function(
            AppLocalizations appLocalization,
            String dueDate,
            String content,
            String taskId,
            String description,
            void Function()? Function() onComplete)?
        updateFullTask,
    TResult? Function(AppLocalizations appLocalization, String taskId,
            String content, void Function()? Function() onComplete)?
        addNewComment,
    TResult? Function(
            AppLocalizations appLocalization,
            String taskId,
            String commentId,
            String content,
            void Function()? Function() onComplete)?
        updateComment,
    TResult? Function(
            String taskId, bool isSyncing, InternetState internetState)?
        fetchAllComments,
    TResult? Function(bool requiredReload, InternetState internetState)?
        fetchAllTasks,
    TResult? Function(File? file)? setPickedFileForComment,
    TResult? Function(BuildContext context)? syncData,
    TResult? Function()? syncDataInServer,
    TResult? Function(int savedTime)? addCurrentTimeStampToAllTasksLocally,
    TResult? Function(int index)? updateCurrentHomeIndex,
    TResult? Function()? resetSelectItems,
    TResult? Function(DateTime focusedDate, InternetState internetState)?
        updateFocusedDate,
    TResult? Function()? resetMessage,
    TResult? Function(String taskId, String fromSectionId, String sectionId,
            List<String> labels)?
        updateSection,
    TResult? Function(String taskId, List<String> labels)? updateTimer,
    TResult? Function(String taskId, List<String> labels)? updateTimerState,
    TResult? Function(String taskId, List<String> labels)? updateTimerLocally,
    TResult? Function(String taskId, List<String> labels)?
        updateTimerStateLocally,
    TResult? Function(String taskId, List<String> labels)? completeTask,
    TResult? Function(String taskId, List<String> labels)? reopenTask,
    TResult? Function(String taskId, List<String> labels)? startTask,
    TResult? Function(String taskId)? deleteTask,
    TResult? Function(AppLocalizations appLocalization)? deleteAllTask,
    TResult? Function(String commentId, String taskId)? deleteComment,
    TResult? Function(String id)? sortByDateDescending,
    TResult? Function(String id)? sortByNameDescending,
    TResult? Function(String id)? sortByNameAscending,
    TResult? Function(String id)? sortByDateAscending,
    TResult? Function(String id)? sortByPriorityDescending,
    TResult? Function(String id)? sortByPriorityAscending,
  }) {
    return updateFocusedDate?.call(focusedDate, internetState);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TasksTags tasksTags)? updateSelectedTaskTag,
    TResult Function(int index)? removeSelectedTaskTag,
    TResult Function(TasksPriority taskPriority)? updateSelectedTaskPriority,
    TResult Function(TasksStatus tasksStatus)? updateSelectedTaskStatus,
    TResult Function(
            AppLocalizations appLocalization,
            String dueDate,
            String content,
            String description,
            void Function()? Function() onComplete)?
        addNewTask,
    TResult Function(
            AppLocalizations appLocalization,
            String dueDate,
            String content,
            String taskId,
            String description,
            void Function()? Function() onComplete)?
        updateFullTask,
    TResult Function(AppLocalizations appLocalization, String taskId,
            String content, void Function()? Function() onComplete)?
        addNewComment,
    TResult Function(
            AppLocalizations appLocalization,
            String taskId,
            String commentId,
            String content,
            void Function()? Function() onComplete)?
        updateComment,
    TResult Function(
            String taskId, bool isSyncing, InternetState internetState)?
        fetchAllComments,
    TResult Function(bool requiredReload, InternetState internetState)?
        fetchAllTasks,
    TResult Function(File? file)? setPickedFileForComment,
    TResult Function(BuildContext context)? syncData,
    TResult Function()? syncDataInServer,
    TResult Function(int savedTime)? addCurrentTimeStampToAllTasksLocally,
    TResult Function(int index)? updateCurrentHomeIndex,
    TResult Function()? resetSelectItems,
    TResult Function(DateTime focusedDate, InternetState internetState)?
        updateFocusedDate,
    TResult Function()? resetMessage,
    TResult Function(String taskId, String fromSectionId, String sectionId,
            List<String> labels)?
        updateSection,
    TResult Function(String taskId, List<String> labels)? updateTimer,
    TResult Function(String taskId, List<String> labels)? updateTimerState,
    TResult Function(String taskId, List<String> labels)? updateTimerLocally,
    TResult Function(String taskId, List<String> labels)?
        updateTimerStateLocally,
    TResult Function(String taskId, List<String> labels)? completeTask,
    TResult Function(String taskId, List<String> labels)? reopenTask,
    TResult Function(String taskId, List<String> labels)? startTask,
    TResult Function(String taskId)? deleteTask,
    TResult Function(AppLocalizations appLocalization)? deleteAllTask,
    TResult Function(String commentId, String taskId)? deleteComment,
    TResult Function(String id)? sortByDateDescending,
    TResult Function(String id)? sortByNameDescending,
    TResult Function(String id)? sortByNameAscending,
    TResult Function(String id)? sortByDateAscending,
    TResult Function(String id)? sortByPriorityDescending,
    TResult Function(String id)? sortByPriorityAscending,
    required TResult orElse(),
  }) {
    if (updateFocusedDate != null) {
      return updateFocusedDate(focusedDate, internetState);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateSelectedTaskTag value)
        updateSelectedTaskTag,
    required TResult Function(_RemoveSelectedTaskTag value)
        removeSelectedTaskTag,
    required TResult Function(_UpdateSelectedTaskPriority value)
        updateSelectedTaskPriority,
    required TResult Function(_UpdateSelectedTaskStatus value)
        updateSelectedTaskStatus,
    required TResult Function(_AddNewTask value) addNewTask,
    required TResult Function(_AddFullTask value) updateFullTask,
    required TResult Function(_AddNewComment value) addNewComment,
    required TResult Function(_Updateomment value) updateComment,
    required TResult Function(_FetchAllComments value) fetchAllComments,
    required TResult Function(_FetchAllTasks value) fetchAllTasks,
    required TResult Function(_SetPickedFileForComment value)
        setPickedFileForComment,
    required TResult Function(_SyncData value) syncData,
    required TResult Function(_SyncDataInServer value) syncDataInServer,
    required TResult Function(_AddCurrentTimeStampToAllTasksLocally value)
        addCurrentTimeStampToAllTasksLocally,
    required TResult Function(_UpdateCurrentHomeIndex value)
        updateCurrentHomeIndex,
    required TResult Function(_ResetSelectItems value) resetSelectItems,
    required TResult Function(_UpdateFocusedDate value) updateFocusedDate,
    required TResult Function(_ResetMessage value) resetMessage,
    required TResult Function(_UpdateSection value) updateSection,
    required TResult Function(_UpdateTimer value) updateTimer,
    required TResult Function(_UpdateTimerState value) updateTimerState,
    required TResult Function(_UpdateTimerLocally value) updateTimerLocally,
    required TResult Function(_UpdateTimerStateLocally value)
        updateTimerStateLocally,
    required TResult Function(_CompleteTask value) completeTask,
    required TResult Function(_ReopenTaskTask value) reopenTask,
    required TResult Function(_StartTask value) startTask,
    required TResult Function(_DeleteTask value) deleteTask,
    required TResult Function(_DeleteAllTask value) deleteAllTask,
    required TResult Function(_DeleteComment value) deleteComment,
    required TResult Function(_SortByDateDescending value) sortByDateDescending,
    required TResult Function(_SortByNameDescending value) sortByNameDescending,
    required TResult Function(_SortByNameAscending value) sortByNameAscending,
    required TResult Function(_SortByDateAscending value) sortByDateAscending,
    required TResult Function(_SortByPriorityDescending value)
        sortByPriorityDescending,
    required TResult Function(_SortByPriorityAscending value)
        sortByPriorityAscending,
  }) {
    return updateFocusedDate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateSelectedTaskTag value)? updateSelectedTaskTag,
    TResult? Function(_RemoveSelectedTaskTag value)? removeSelectedTaskTag,
    TResult? Function(_UpdateSelectedTaskPriority value)?
        updateSelectedTaskPriority,
    TResult? Function(_UpdateSelectedTaskStatus value)?
        updateSelectedTaskStatus,
    TResult? Function(_AddNewTask value)? addNewTask,
    TResult? Function(_AddFullTask value)? updateFullTask,
    TResult? Function(_AddNewComment value)? addNewComment,
    TResult? Function(_Updateomment value)? updateComment,
    TResult? Function(_FetchAllComments value)? fetchAllComments,
    TResult? Function(_FetchAllTasks value)? fetchAllTasks,
    TResult? Function(_SetPickedFileForComment value)? setPickedFileForComment,
    TResult? Function(_SyncData value)? syncData,
    TResult? Function(_SyncDataInServer value)? syncDataInServer,
    TResult? Function(_AddCurrentTimeStampToAllTasksLocally value)?
        addCurrentTimeStampToAllTasksLocally,
    TResult? Function(_UpdateCurrentHomeIndex value)? updateCurrentHomeIndex,
    TResult? Function(_ResetSelectItems value)? resetSelectItems,
    TResult? Function(_UpdateFocusedDate value)? updateFocusedDate,
    TResult? Function(_ResetMessage value)? resetMessage,
    TResult? Function(_UpdateSection value)? updateSection,
    TResult? Function(_UpdateTimer value)? updateTimer,
    TResult? Function(_UpdateTimerState value)? updateTimerState,
    TResult? Function(_UpdateTimerLocally value)? updateTimerLocally,
    TResult? Function(_UpdateTimerStateLocally value)? updateTimerStateLocally,
    TResult? Function(_CompleteTask value)? completeTask,
    TResult? Function(_ReopenTaskTask value)? reopenTask,
    TResult? Function(_StartTask value)? startTask,
    TResult? Function(_DeleteTask value)? deleteTask,
    TResult? Function(_DeleteAllTask value)? deleteAllTask,
    TResult? Function(_DeleteComment value)? deleteComment,
    TResult? Function(_SortByDateDescending value)? sortByDateDescending,
    TResult? Function(_SortByNameDescending value)? sortByNameDescending,
    TResult? Function(_SortByNameAscending value)? sortByNameAscending,
    TResult? Function(_SortByDateAscending value)? sortByDateAscending,
    TResult? Function(_SortByPriorityDescending value)?
        sortByPriorityDescending,
    TResult? Function(_SortByPriorityAscending value)? sortByPriorityAscending,
  }) {
    return updateFocusedDate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateSelectedTaskTag value)? updateSelectedTaskTag,
    TResult Function(_RemoveSelectedTaskTag value)? removeSelectedTaskTag,
    TResult Function(_UpdateSelectedTaskPriority value)?
        updateSelectedTaskPriority,
    TResult Function(_UpdateSelectedTaskStatus value)? updateSelectedTaskStatus,
    TResult Function(_AddNewTask value)? addNewTask,
    TResult Function(_AddFullTask value)? updateFullTask,
    TResult Function(_AddNewComment value)? addNewComment,
    TResult Function(_Updateomment value)? updateComment,
    TResult Function(_FetchAllComments value)? fetchAllComments,
    TResult Function(_FetchAllTasks value)? fetchAllTasks,
    TResult Function(_SetPickedFileForComment value)? setPickedFileForComment,
    TResult Function(_SyncData value)? syncData,
    TResult Function(_SyncDataInServer value)? syncDataInServer,
    TResult Function(_AddCurrentTimeStampToAllTasksLocally value)?
        addCurrentTimeStampToAllTasksLocally,
    TResult Function(_UpdateCurrentHomeIndex value)? updateCurrentHomeIndex,
    TResult Function(_ResetSelectItems value)? resetSelectItems,
    TResult Function(_UpdateFocusedDate value)? updateFocusedDate,
    TResult Function(_ResetMessage value)? resetMessage,
    TResult Function(_UpdateSection value)? updateSection,
    TResult Function(_UpdateTimer value)? updateTimer,
    TResult Function(_UpdateTimerState value)? updateTimerState,
    TResult Function(_UpdateTimerLocally value)? updateTimerLocally,
    TResult Function(_UpdateTimerStateLocally value)? updateTimerStateLocally,
    TResult Function(_CompleteTask value)? completeTask,
    TResult Function(_ReopenTaskTask value)? reopenTask,
    TResult Function(_StartTask value)? startTask,
    TResult Function(_DeleteTask value)? deleteTask,
    TResult Function(_DeleteAllTask value)? deleteAllTask,
    TResult Function(_DeleteComment value)? deleteComment,
    TResult Function(_SortByDateDescending value)? sortByDateDescending,
    TResult Function(_SortByNameDescending value)? sortByNameDescending,
    TResult Function(_SortByNameAscending value)? sortByNameAscending,
    TResult Function(_SortByDateAscending value)? sortByDateAscending,
    TResult Function(_SortByPriorityDescending value)? sortByPriorityDescending,
    TResult Function(_SortByPriorityAscending value)? sortByPriorityAscending,
    required TResult orElse(),
  }) {
    if (updateFocusedDate != null) {
      return updateFocusedDate(this);
    }
    return orElse();
  }
}

abstract class _UpdateFocusedDate implements HomeEvent {
  const factory _UpdateFocusedDate(
      {required final DateTime focusedDate,
      required final InternetState internetState}) = _$UpdateFocusedDateImpl;

  DateTime get focusedDate;
  InternetState get internetState;
  @JsonKey(ignore: true)
  _$$UpdateFocusedDateImplCopyWith<_$UpdateFocusedDateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ResetMessageImplCopyWith<$Res> {
  factory _$$ResetMessageImplCopyWith(
          _$ResetMessageImpl value, $Res Function(_$ResetMessageImpl) then) =
      __$$ResetMessageImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ResetMessageImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$ResetMessageImpl>
    implements _$$ResetMessageImplCopyWith<$Res> {
  __$$ResetMessageImplCopyWithImpl(
      _$ResetMessageImpl _value, $Res Function(_$ResetMessageImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ResetMessageImpl implements _ResetMessage {
  const _$ResetMessageImpl();

  @override
  String toString() {
    return 'HomeEvent.resetMessage()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ResetMessageImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TasksTags tasksTags) updateSelectedTaskTag,
    required TResult Function(int index) removeSelectedTaskTag,
    required TResult Function(TasksPriority taskPriority)
        updateSelectedTaskPriority,
    required TResult Function(TasksStatus tasksStatus) updateSelectedTaskStatus,
    required TResult Function(
            AppLocalizations appLocalization,
            String dueDate,
            String content,
            String description,
            void Function()? Function() onComplete)
        addNewTask,
    required TResult Function(
            AppLocalizations appLocalization,
            String dueDate,
            String content,
            String taskId,
            String description,
            void Function()? Function() onComplete)
        updateFullTask,
    required TResult Function(AppLocalizations appLocalization, String taskId,
            String content, void Function()? Function() onComplete)
        addNewComment,
    required TResult Function(
            AppLocalizations appLocalization,
            String taskId,
            String commentId,
            String content,
            void Function()? Function() onComplete)
        updateComment,
    required TResult Function(
            String taskId, bool isSyncing, InternetState internetState)
        fetchAllComments,
    required TResult Function(bool requiredReload, InternetState internetState)
        fetchAllTasks,
    required TResult Function(File? file) setPickedFileForComment,
    required TResult Function(BuildContext context) syncData,
    required TResult Function() syncDataInServer,
    required TResult Function(int savedTime)
        addCurrentTimeStampToAllTasksLocally,
    required TResult Function(int index) updateCurrentHomeIndex,
    required TResult Function() resetSelectItems,
    required TResult Function(DateTime focusedDate, InternetState internetState)
        updateFocusedDate,
    required TResult Function() resetMessage,
    required TResult Function(String taskId, String fromSectionId,
            String sectionId, List<String> labels)
        updateSection,
    required TResult Function(String taskId, List<String> labels) updateTimer,
    required TResult Function(String taskId, List<String> labels)
        updateTimerState,
    required TResult Function(String taskId, List<String> labels)
        updateTimerLocally,
    required TResult Function(String taskId, List<String> labels)
        updateTimerStateLocally,
    required TResult Function(String taskId, List<String> labels) completeTask,
    required TResult Function(String taskId, List<String> labels) reopenTask,
    required TResult Function(String taskId, List<String> labels) startTask,
    required TResult Function(String taskId) deleteTask,
    required TResult Function(AppLocalizations appLocalization) deleteAllTask,
    required TResult Function(String commentId, String taskId) deleteComment,
    required TResult Function(String id) sortByDateDescending,
    required TResult Function(String id) sortByNameDescending,
    required TResult Function(String id) sortByNameAscending,
    required TResult Function(String id) sortByDateAscending,
    required TResult Function(String id) sortByPriorityDescending,
    required TResult Function(String id) sortByPriorityAscending,
  }) {
    return resetMessage();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TasksTags tasksTags)? updateSelectedTaskTag,
    TResult? Function(int index)? removeSelectedTaskTag,
    TResult? Function(TasksPriority taskPriority)? updateSelectedTaskPriority,
    TResult? Function(TasksStatus tasksStatus)? updateSelectedTaskStatus,
    TResult? Function(
            AppLocalizations appLocalization,
            String dueDate,
            String content,
            String description,
            void Function()? Function() onComplete)?
        addNewTask,
    TResult? Function(
            AppLocalizations appLocalization,
            String dueDate,
            String content,
            String taskId,
            String description,
            void Function()? Function() onComplete)?
        updateFullTask,
    TResult? Function(AppLocalizations appLocalization, String taskId,
            String content, void Function()? Function() onComplete)?
        addNewComment,
    TResult? Function(
            AppLocalizations appLocalization,
            String taskId,
            String commentId,
            String content,
            void Function()? Function() onComplete)?
        updateComment,
    TResult? Function(
            String taskId, bool isSyncing, InternetState internetState)?
        fetchAllComments,
    TResult? Function(bool requiredReload, InternetState internetState)?
        fetchAllTasks,
    TResult? Function(File? file)? setPickedFileForComment,
    TResult? Function(BuildContext context)? syncData,
    TResult? Function()? syncDataInServer,
    TResult? Function(int savedTime)? addCurrentTimeStampToAllTasksLocally,
    TResult? Function(int index)? updateCurrentHomeIndex,
    TResult? Function()? resetSelectItems,
    TResult? Function(DateTime focusedDate, InternetState internetState)?
        updateFocusedDate,
    TResult? Function()? resetMessage,
    TResult? Function(String taskId, String fromSectionId, String sectionId,
            List<String> labels)?
        updateSection,
    TResult? Function(String taskId, List<String> labels)? updateTimer,
    TResult? Function(String taskId, List<String> labels)? updateTimerState,
    TResult? Function(String taskId, List<String> labels)? updateTimerLocally,
    TResult? Function(String taskId, List<String> labels)?
        updateTimerStateLocally,
    TResult? Function(String taskId, List<String> labels)? completeTask,
    TResult? Function(String taskId, List<String> labels)? reopenTask,
    TResult? Function(String taskId, List<String> labels)? startTask,
    TResult? Function(String taskId)? deleteTask,
    TResult? Function(AppLocalizations appLocalization)? deleteAllTask,
    TResult? Function(String commentId, String taskId)? deleteComment,
    TResult? Function(String id)? sortByDateDescending,
    TResult? Function(String id)? sortByNameDescending,
    TResult? Function(String id)? sortByNameAscending,
    TResult? Function(String id)? sortByDateAscending,
    TResult? Function(String id)? sortByPriorityDescending,
    TResult? Function(String id)? sortByPriorityAscending,
  }) {
    return resetMessage?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TasksTags tasksTags)? updateSelectedTaskTag,
    TResult Function(int index)? removeSelectedTaskTag,
    TResult Function(TasksPriority taskPriority)? updateSelectedTaskPriority,
    TResult Function(TasksStatus tasksStatus)? updateSelectedTaskStatus,
    TResult Function(
            AppLocalizations appLocalization,
            String dueDate,
            String content,
            String description,
            void Function()? Function() onComplete)?
        addNewTask,
    TResult Function(
            AppLocalizations appLocalization,
            String dueDate,
            String content,
            String taskId,
            String description,
            void Function()? Function() onComplete)?
        updateFullTask,
    TResult Function(AppLocalizations appLocalization, String taskId,
            String content, void Function()? Function() onComplete)?
        addNewComment,
    TResult Function(
            AppLocalizations appLocalization,
            String taskId,
            String commentId,
            String content,
            void Function()? Function() onComplete)?
        updateComment,
    TResult Function(
            String taskId, bool isSyncing, InternetState internetState)?
        fetchAllComments,
    TResult Function(bool requiredReload, InternetState internetState)?
        fetchAllTasks,
    TResult Function(File? file)? setPickedFileForComment,
    TResult Function(BuildContext context)? syncData,
    TResult Function()? syncDataInServer,
    TResult Function(int savedTime)? addCurrentTimeStampToAllTasksLocally,
    TResult Function(int index)? updateCurrentHomeIndex,
    TResult Function()? resetSelectItems,
    TResult Function(DateTime focusedDate, InternetState internetState)?
        updateFocusedDate,
    TResult Function()? resetMessage,
    TResult Function(String taskId, String fromSectionId, String sectionId,
            List<String> labels)?
        updateSection,
    TResult Function(String taskId, List<String> labels)? updateTimer,
    TResult Function(String taskId, List<String> labels)? updateTimerState,
    TResult Function(String taskId, List<String> labels)? updateTimerLocally,
    TResult Function(String taskId, List<String> labels)?
        updateTimerStateLocally,
    TResult Function(String taskId, List<String> labels)? completeTask,
    TResult Function(String taskId, List<String> labels)? reopenTask,
    TResult Function(String taskId, List<String> labels)? startTask,
    TResult Function(String taskId)? deleteTask,
    TResult Function(AppLocalizations appLocalization)? deleteAllTask,
    TResult Function(String commentId, String taskId)? deleteComment,
    TResult Function(String id)? sortByDateDescending,
    TResult Function(String id)? sortByNameDescending,
    TResult Function(String id)? sortByNameAscending,
    TResult Function(String id)? sortByDateAscending,
    TResult Function(String id)? sortByPriorityDescending,
    TResult Function(String id)? sortByPriorityAscending,
    required TResult orElse(),
  }) {
    if (resetMessage != null) {
      return resetMessage();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateSelectedTaskTag value)
        updateSelectedTaskTag,
    required TResult Function(_RemoveSelectedTaskTag value)
        removeSelectedTaskTag,
    required TResult Function(_UpdateSelectedTaskPriority value)
        updateSelectedTaskPriority,
    required TResult Function(_UpdateSelectedTaskStatus value)
        updateSelectedTaskStatus,
    required TResult Function(_AddNewTask value) addNewTask,
    required TResult Function(_AddFullTask value) updateFullTask,
    required TResult Function(_AddNewComment value) addNewComment,
    required TResult Function(_Updateomment value) updateComment,
    required TResult Function(_FetchAllComments value) fetchAllComments,
    required TResult Function(_FetchAllTasks value) fetchAllTasks,
    required TResult Function(_SetPickedFileForComment value)
        setPickedFileForComment,
    required TResult Function(_SyncData value) syncData,
    required TResult Function(_SyncDataInServer value) syncDataInServer,
    required TResult Function(_AddCurrentTimeStampToAllTasksLocally value)
        addCurrentTimeStampToAllTasksLocally,
    required TResult Function(_UpdateCurrentHomeIndex value)
        updateCurrentHomeIndex,
    required TResult Function(_ResetSelectItems value) resetSelectItems,
    required TResult Function(_UpdateFocusedDate value) updateFocusedDate,
    required TResult Function(_ResetMessage value) resetMessage,
    required TResult Function(_UpdateSection value) updateSection,
    required TResult Function(_UpdateTimer value) updateTimer,
    required TResult Function(_UpdateTimerState value) updateTimerState,
    required TResult Function(_UpdateTimerLocally value) updateTimerLocally,
    required TResult Function(_UpdateTimerStateLocally value)
        updateTimerStateLocally,
    required TResult Function(_CompleteTask value) completeTask,
    required TResult Function(_ReopenTaskTask value) reopenTask,
    required TResult Function(_StartTask value) startTask,
    required TResult Function(_DeleteTask value) deleteTask,
    required TResult Function(_DeleteAllTask value) deleteAllTask,
    required TResult Function(_DeleteComment value) deleteComment,
    required TResult Function(_SortByDateDescending value) sortByDateDescending,
    required TResult Function(_SortByNameDescending value) sortByNameDescending,
    required TResult Function(_SortByNameAscending value) sortByNameAscending,
    required TResult Function(_SortByDateAscending value) sortByDateAscending,
    required TResult Function(_SortByPriorityDescending value)
        sortByPriorityDescending,
    required TResult Function(_SortByPriorityAscending value)
        sortByPriorityAscending,
  }) {
    return resetMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateSelectedTaskTag value)? updateSelectedTaskTag,
    TResult? Function(_RemoveSelectedTaskTag value)? removeSelectedTaskTag,
    TResult? Function(_UpdateSelectedTaskPriority value)?
        updateSelectedTaskPriority,
    TResult? Function(_UpdateSelectedTaskStatus value)?
        updateSelectedTaskStatus,
    TResult? Function(_AddNewTask value)? addNewTask,
    TResult? Function(_AddFullTask value)? updateFullTask,
    TResult? Function(_AddNewComment value)? addNewComment,
    TResult? Function(_Updateomment value)? updateComment,
    TResult? Function(_FetchAllComments value)? fetchAllComments,
    TResult? Function(_FetchAllTasks value)? fetchAllTasks,
    TResult? Function(_SetPickedFileForComment value)? setPickedFileForComment,
    TResult? Function(_SyncData value)? syncData,
    TResult? Function(_SyncDataInServer value)? syncDataInServer,
    TResult? Function(_AddCurrentTimeStampToAllTasksLocally value)?
        addCurrentTimeStampToAllTasksLocally,
    TResult? Function(_UpdateCurrentHomeIndex value)? updateCurrentHomeIndex,
    TResult? Function(_ResetSelectItems value)? resetSelectItems,
    TResult? Function(_UpdateFocusedDate value)? updateFocusedDate,
    TResult? Function(_ResetMessage value)? resetMessage,
    TResult? Function(_UpdateSection value)? updateSection,
    TResult? Function(_UpdateTimer value)? updateTimer,
    TResult? Function(_UpdateTimerState value)? updateTimerState,
    TResult? Function(_UpdateTimerLocally value)? updateTimerLocally,
    TResult? Function(_UpdateTimerStateLocally value)? updateTimerStateLocally,
    TResult? Function(_CompleteTask value)? completeTask,
    TResult? Function(_ReopenTaskTask value)? reopenTask,
    TResult? Function(_StartTask value)? startTask,
    TResult? Function(_DeleteTask value)? deleteTask,
    TResult? Function(_DeleteAllTask value)? deleteAllTask,
    TResult? Function(_DeleteComment value)? deleteComment,
    TResult? Function(_SortByDateDescending value)? sortByDateDescending,
    TResult? Function(_SortByNameDescending value)? sortByNameDescending,
    TResult? Function(_SortByNameAscending value)? sortByNameAscending,
    TResult? Function(_SortByDateAscending value)? sortByDateAscending,
    TResult? Function(_SortByPriorityDescending value)?
        sortByPriorityDescending,
    TResult? Function(_SortByPriorityAscending value)? sortByPriorityAscending,
  }) {
    return resetMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateSelectedTaskTag value)? updateSelectedTaskTag,
    TResult Function(_RemoveSelectedTaskTag value)? removeSelectedTaskTag,
    TResult Function(_UpdateSelectedTaskPriority value)?
        updateSelectedTaskPriority,
    TResult Function(_UpdateSelectedTaskStatus value)? updateSelectedTaskStatus,
    TResult Function(_AddNewTask value)? addNewTask,
    TResult Function(_AddFullTask value)? updateFullTask,
    TResult Function(_AddNewComment value)? addNewComment,
    TResult Function(_Updateomment value)? updateComment,
    TResult Function(_FetchAllComments value)? fetchAllComments,
    TResult Function(_FetchAllTasks value)? fetchAllTasks,
    TResult Function(_SetPickedFileForComment value)? setPickedFileForComment,
    TResult Function(_SyncData value)? syncData,
    TResult Function(_SyncDataInServer value)? syncDataInServer,
    TResult Function(_AddCurrentTimeStampToAllTasksLocally value)?
        addCurrentTimeStampToAllTasksLocally,
    TResult Function(_UpdateCurrentHomeIndex value)? updateCurrentHomeIndex,
    TResult Function(_ResetSelectItems value)? resetSelectItems,
    TResult Function(_UpdateFocusedDate value)? updateFocusedDate,
    TResult Function(_ResetMessage value)? resetMessage,
    TResult Function(_UpdateSection value)? updateSection,
    TResult Function(_UpdateTimer value)? updateTimer,
    TResult Function(_UpdateTimerState value)? updateTimerState,
    TResult Function(_UpdateTimerLocally value)? updateTimerLocally,
    TResult Function(_UpdateTimerStateLocally value)? updateTimerStateLocally,
    TResult Function(_CompleteTask value)? completeTask,
    TResult Function(_ReopenTaskTask value)? reopenTask,
    TResult Function(_StartTask value)? startTask,
    TResult Function(_DeleteTask value)? deleteTask,
    TResult Function(_DeleteAllTask value)? deleteAllTask,
    TResult Function(_DeleteComment value)? deleteComment,
    TResult Function(_SortByDateDescending value)? sortByDateDescending,
    TResult Function(_SortByNameDescending value)? sortByNameDescending,
    TResult Function(_SortByNameAscending value)? sortByNameAscending,
    TResult Function(_SortByDateAscending value)? sortByDateAscending,
    TResult Function(_SortByPriorityDescending value)? sortByPriorityDescending,
    TResult Function(_SortByPriorityAscending value)? sortByPriorityAscending,
    required TResult orElse(),
  }) {
    if (resetMessage != null) {
      return resetMessage(this);
    }
    return orElse();
  }
}

abstract class _ResetMessage implements HomeEvent {
  const factory _ResetMessage() = _$ResetMessageImpl;
}

/// @nodoc
abstract class _$$UpdateSectionImplCopyWith<$Res> {
  factory _$$UpdateSectionImplCopyWith(
          _$UpdateSectionImpl value, $Res Function(_$UpdateSectionImpl) then) =
      __$$UpdateSectionImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String taskId,
      String fromSectionId,
      String sectionId,
      List<String> labels});
}

/// @nodoc
class __$$UpdateSectionImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$UpdateSectionImpl>
    implements _$$UpdateSectionImplCopyWith<$Res> {
  __$$UpdateSectionImplCopyWithImpl(
      _$UpdateSectionImpl _value, $Res Function(_$UpdateSectionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? taskId = null,
    Object? fromSectionId = null,
    Object? sectionId = null,
    Object? labels = null,
  }) {
    return _then(_$UpdateSectionImpl(
      taskId: null == taskId
          ? _value.taskId
          : taskId // ignore: cast_nullable_to_non_nullable
              as String,
      fromSectionId: null == fromSectionId
          ? _value.fromSectionId
          : fromSectionId // ignore: cast_nullable_to_non_nullable
              as String,
      sectionId: null == sectionId
          ? _value.sectionId
          : sectionId // ignore: cast_nullable_to_non_nullable
              as String,
      labels: null == labels
          ? _value._labels
          : labels // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$UpdateSectionImpl implements _UpdateSection {
  const _$UpdateSectionImpl(
      {required this.taskId,
      required this.fromSectionId,
      required this.sectionId,
      required final List<String> labels})
      : _labels = labels;

  @override
  final String taskId;
  @override
  final String fromSectionId;
  @override
  final String sectionId;
  final List<String> _labels;
  @override
  List<String> get labels {
    if (_labels is EqualUnmodifiableListView) return _labels;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_labels);
  }

  @override
  String toString() {
    return 'HomeEvent.updateSection(taskId: $taskId, fromSectionId: $fromSectionId, sectionId: $sectionId, labels: $labels)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateSectionImpl &&
            (identical(other.taskId, taskId) || other.taskId == taskId) &&
            (identical(other.fromSectionId, fromSectionId) ||
                other.fromSectionId == fromSectionId) &&
            (identical(other.sectionId, sectionId) ||
                other.sectionId == sectionId) &&
            const DeepCollectionEquality().equals(other._labels, _labels));
  }

  @override
  int get hashCode => Object.hash(runtimeType, taskId, fromSectionId, sectionId,
      const DeepCollectionEquality().hash(_labels));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateSectionImplCopyWith<_$UpdateSectionImpl> get copyWith =>
      __$$UpdateSectionImplCopyWithImpl<_$UpdateSectionImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TasksTags tasksTags) updateSelectedTaskTag,
    required TResult Function(int index) removeSelectedTaskTag,
    required TResult Function(TasksPriority taskPriority)
        updateSelectedTaskPriority,
    required TResult Function(TasksStatus tasksStatus) updateSelectedTaskStatus,
    required TResult Function(
            AppLocalizations appLocalization,
            String dueDate,
            String content,
            String description,
            void Function()? Function() onComplete)
        addNewTask,
    required TResult Function(
            AppLocalizations appLocalization,
            String dueDate,
            String content,
            String taskId,
            String description,
            void Function()? Function() onComplete)
        updateFullTask,
    required TResult Function(AppLocalizations appLocalization, String taskId,
            String content, void Function()? Function() onComplete)
        addNewComment,
    required TResult Function(
            AppLocalizations appLocalization,
            String taskId,
            String commentId,
            String content,
            void Function()? Function() onComplete)
        updateComment,
    required TResult Function(
            String taskId, bool isSyncing, InternetState internetState)
        fetchAllComments,
    required TResult Function(bool requiredReload, InternetState internetState)
        fetchAllTasks,
    required TResult Function(File? file) setPickedFileForComment,
    required TResult Function(BuildContext context) syncData,
    required TResult Function() syncDataInServer,
    required TResult Function(int savedTime)
        addCurrentTimeStampToAllTasksLocally,
    required TResult Function(int index) updateCurrentHomeIndex,
    required TResult Function() resetSelectItems,
    required TResult Function(DateTime focusedDate, InternetState internetState)
        updateFocusedDate,
    required TResult Function() resetMessage,
    required TResult Function(String taskId, String fromSectionId,
            String sectionId, List<String> labels)
        updateSection,
    required TResult Function(String taskId, List<String> labels) updateTimer,
    required TResult Function(String taskId, List<String> labels)
        updateTimerState,
    required TResult Function(String taskId, List<String> labels)
        updateTimerLocally,
    required TResult Function(String taskId, List<String> labels)
        updateTimerStateLocally,
    required TResult Function(String taskId, List<String> labels) completeTask,
    required TResult Function(String taskId, List<String> labels) reopenTask,
    required TResult Function(String taskId, List<String> labels) startTask,
    required TResult Function(String taskId) deleteTask,
    required TResult Function(AppLocalizations appLocalization) deleteAllTask,
    required TResult Function(String commentId, String taskId) deleteComment,
    required TResult Function(String id) sortByDateDescending,
    required TResult Function(String id) sortByNameDescending,
    required TResult Function(String id) sortByNameAscending,
    required TResult Function(String id) sortByDateAscending,
    required TResult Function(String id) sortByPriorityDescending,
    required TResult Function(String id) sortByPriorityAscending,
  }) {
    return updateSection(taskId, fromSectionId, sectionId, labels);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TasksTags tasksTags)? updateSelectedTaskTag,
    TResult? Function(int index)? removeSelectedTaskTag,
    TResult? Function(TasksPriority taskPriority)? updateSelectedTaskPriority,
    TResult? Function(TasksStatus tasksStatus)? updateSelectedTaskStatus,
    TResult? Function(
            AppLocalizations appLocalization,
            String dueDate,
            String content,
            String description,
            void Function()? Function() onComplete)?
        addNewTask,
    TResult? Function(
            AppLocalizations appLocalization,
            String dueDate,
            String content,
            String taskId,
            String description,
            void Function()? Function() onComplete)?
        updateFullTask,
    TResult? Function(AppLocalizations appLocalization, String taskId,
            String content, void Function()? Function() onComplete)?
        addNewComment,
    TResult? Function(
            AppLocalizations appLocalization,
            String taskId,
            String commentId,
            String content,
            void Function()? Function() onComplete)?
        updateComment,
    TResult? Function(
            String taskId, bool isSyncing, InternetState internetState)?
        fetchAllComments,
    TResult? Function(bool requiredReload, InternetState internetState)?
        fetchAllTasks,
    TResult? Function(File? file)? setPickedFileForComment,
    TResult? Function(BuildContext context)? syncData,
    TResult? Function()? syncDataInServer,
    TResult? Function(int savedTime)? addCurrentTimeStampToAllTasksLocally,
    TResult? Function(int index)? updateCurrentHomeIndex,
    TResult? Function()? resetSelectItems,
    TResult? Function(DateTime focusedDate, InternetState internetState)?
        updateFocusedDate,
    TResult? Function()? resetMessage,
    TResult? Function(String taskId, String fromSectionId, String sectionId,
            List<String> labels)?
        updateSection,
    TResult? Function(String taskId, List<String> labels)? updateTimer,
    TResult? Function(String taskId, List<String> labels)? updateTimerState,
    TResult? Function(String taskId, List<String> labels)? updateTimerLocally,
    TResult? Function(String taskId, List<String> labels)?
        updateTimerStateLocally,
    TResult? Function(String taskId, List<String> labels)? completeTask,
    TResult? Function(String taskId, List<String> labels)? reopenTask,
    TResult? Function(String taskId, List<String> labels)? startTask,
    TResult? Function(String taskId)? deleteTask,
    TResult? Function(AppLocalizations appLocalization)? deleteAllTask,
    TResult? Function(String commentId, String taskId)? deleteComment,
    TResult? Function(String id)? sortByDateDescending,
    TResult? Function(String id)? sortByNameDescending,
    TResult? Function(String id)? sortByNameAscending,
    TResult? Function(String id)? sortByDateAscending,
    TResult? Function(String id)? sortByPriorityDescending,
    TResult? Function(String id)? sortByPriorityAscending,
  }) {
    return updateSection?.call(taskId, fromSectionId, sectionId, labels);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TasksTags tasksTags)? updateSelectedTaskTag,
    TResult Function(int index)? removeSelectedTaskTag,
    TResult Function(TasksPriority taskPriority)? updateSelectedTaskPriority,
    TResult Function(TasksStatus tasksStatus)? updateSelectedTaskStatus,
    TResult Function(
            AppLocalizations appLocalization,
            String dueDate,
            String content,
            String description,
            void Function()? Function() onComplete)?
        addNewTask,
    TResult Function(
            AppLocalizations appLocalization,
            String dueDate,
            String content,
            String taskId,
            String description,
            void Function()? Function() onComplete)?
        updateFullTask,
    TResult Function(AppLocalizations appLocalization, String taskId,
            String content, void Function()? Function() onComplete)?
        addNewComment,
    TResult Function(
            AppLocalizations appLocalization,
            String taskId,
            String commentId,
            String content,
            void Function()? Function() onComplete)?
        updateComment,
    TResult Function(
            String taskId, bool isSyncing, InternetState internetState)?
        fetchAllComments,
    TResult Function(bool requiredReload, InternetState internetState)?
        fetchAllTasks,
    TResult Function(File? file)? setPickedFileForComment,
    TResult Function(BuildContext context)? syncData,
    TResult Function()? syncDataInServer,
    TResult Function(int savedTime)? addCurrentTimeStampToAllTasksLocally,
    TResult Function(int index)? updateCurrentHomeIndex,
    TResult Function()? resetSelectItems,
    TResult Function(DateTime focusedDate, InternetState internetState)?
        updateFocusedDate,
    TResult Function()? resetMessage,
    TResult Function(String taskId, String fromSectionId, String sectionId,
            List<String> labels)?
        updateSection,
    TResult Function(String taskId, List<String> labels)? updateTimer,
    TResult Function(String taskId, List<String> labels)? updateTimerState,
    TResult Function(String taskId, List<String> labels)? updateTimerLocally,
    TResult Function(String taskId, List<String> labels)?
        updateTimerStateLocally,
    TResult Function(String taskId, List<String> labels)? completeTask,
    TResult Function(String taskId, List<String> labels)? reopenTask,
    TResult Function(String taskId, List<String> labels)? startTask,
    TResult Function(String taskId)? deleteTask,
    TResult Function(AppLocalizations appLocalization)? deleteAllTask,
    TResult Function(String commentId, String taskId)? deleteComment,
    TResult Function(String id)? sortByDateDescending,
    TResult Function(String id)? sortByNameDescending,
    TResult Function(String id)? sortByNameAscending,
    TResult Function(String id)? sortByDateAscending,
    TResult Function(String id)? sortByPriorityDescending,
    TResult Function(String id)? sortByPriorityAscending,
    required TResult orElse(),
  }) {
    if (updateSection != null) {
      return updateSection(taskId, fromSectionId, sectionId, labels);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateSelectedTaskTag value)
        updateSelectedTaskTag,
    required TResult Function(_RemoveSelectedTaskTag value)
        removeSelectedTaskTag,
    required TResult Function(_UpdateSelectedTaskPriority value)
        updateSelectedTaskPriority,
    required TResult Function(_UpdateSelectedTaskStatus value)
        updateSelectedTaskStatus,
    required TResult Function(_AddNewTask value) addNewTask,
    required TResult Function(_AddFullTask value) updateFullTask,
    required TResult Function(_AddNewComment value) addNewComment,
    required TResult Function(_Updateomment value) updateComment,
    required TResult Function(_FetchAllComments value) fetchAllComments,
    required TResult Function(_FetchAllTasks value) fetchAllTasks,
    required TResult Function(_SetPickedFileForComment value)
        setPickedFileForComment,
    required TResult Function(_SyncData value) syncData,
    required TResult Function(_SyncDataInServer value) syncDataInServer,
    required TResult Function(_AddCurrentTimeStampToAllTasksLocally value)
        addCurrentTimeStampToAllTasksLocally,
    required TResult Function(_UpdateCurrentHomeIndex value)
        updateCurrentHomeIndex,
    required TResult Function(_ResetSelectItems value) resetSelectItems,
    required TResult Function(_UpdateFocusedDate value) updateFocusedDate,
    required TResult Function(_ResetMessage value) resetMessage,
    required TResult Function(_UpdateSection value) updateSection,
    required TResult Function(_UpdateTimer value) updateTimer,
    required TResult Function(_UpdateTimerState value) updateTimerState,
    required TResult Function(_UpdateTimerLocally value) updateTimerLocally,
    required TResult Function(_UpdateTimerStateLocally value)
        updateTimerStateLocally,
    required TResult Function(_CompleteTask value) completeTask,
    required TResult Function(_ReopenTaskTask value) reopenTask,
    required TResult Function(_StartTask value) startTask,
    required TResult Function(_DeleteTask value) deleteTask,
    required TResult Function(_DeleteAllTask value) deleteAllTask,
    required TResult Function(_DeleteComment value) deleteComment,
    required TResult Function(_SortByDateDescending value) sortByDateDescending,
    required TResult Function(_SortByNameDescending value) sortByNameDescending,
    required TResult Function(_SortByNameAscending value) sortByNameAscending,
    required TResult Function(_SortByDateAscending value) sortByDateAscending,
    required TResult Function(_SortByPriorityDescending value)
        sortByPriorityDescending,
    required TResult Function(_SortByPriorityAscending value)
        sortByPriorityAscending,
  }) {
    return updateSection(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateSelectedTaskTag value)? updateSelectedTaskTag,
    TResult? Function(_RemoveSelectedTaskTag value)? removeSelectedTaskTag,
    TResult? Function(_UpdateSelectedTaskPriority value)?
        updateSelectedTaskPriority,
    TResult? Function(_UpdateSelectedTaskStatus value)?
        updateSelectedTaskStatus,
    TResult? Function(_AddNewTask value)? addNewTask,
    TResult? Function(_AddFullTask value)? updateFullTask,
    TResult? Function(_AddNewComment value)? addNewComment,
    TResult? Function(_Updateomment value)? updateComment,
    TResult? Function(_FetchAllComments value)? fetchAllComments,
    TResult? Function(_FetchAllTasks value)? fetchAllTasks,
    TResult? Function(_SetPickedFileForComment value)? setPickedFileForComment,
    TResult? Function(_SyncData value)? syncData,
    TResult? Function(_SyncDataInServer value)? syncDataInServer,
    TResult? Function(_AddCurrentTimeStampToAllTasksLocally value)?
        addCurrentTimeStampToAllTasksLocally,
    TResult? Function(_UpdateCurrentHomeIndex value)? updateCurrentHomeIndex,
    TResult? Function(_ResetSelectItems value)? resetSelectItems,
    TResult? Function(_UpdateFocusedDate value)? updateFocusedDate,
    TResult? Function(_ResetMessage value)? resetMessage,
    TResult? Function(_UpdateSection value)? updateSection,
    TResult? Function(_UpdateTimer value)? updateTimer,
    TResult? Function(_UpdateTimerState value)? updateTimerState,
    TResult? Function(_UpdateTimerLocally value)? updateTimerLocally,
    TResult? Function(_UpdateTimerStateLocally value)? updateTimerStateLocally,
    TResult? Function(_CompleteTask value)? completeTask,
    TResult? Function(_ReopenTaskTask value)? reopenTask,
    TResult? Function(_StartTask value)? startTask,
    TResult? Function(_DeleteTask value)? deleteTask,
    TResult? Function(_DeleteAllTask value)? deleteAllTask,
    TResult? Function(_DeleteComment value)? deleteComment,
    TResult? Function(_SortByDateDescending value)? sortByDateDescending,
    TResult? Function(_SortByNameDescending value)? sortByNameDescending,
    TResult? Function(_SortByNameAscending value)? sortByNameAscending,
    TResult? Function(_SortByDateAscending value)? sortByDateAscending,
    TResult? Function(_SortByPriorityDescending value)?
        sortByPriorityDescending,
    TResult? Function(_SortByPriorityAscending value)? sortByPriorityAscending,
  }) {
    return updateSection?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateSelectedTaskTag value)? updateSelectedTaskTag,
    TResult Function(_RemoveSelectedTaskTag value)? removeSelectedTaskTag,
    TResult Function(_UpdateSelectedTaskPriority value)?
        updateSelectedTaskPriority,
    TResult Function(_UpdateSelectedTaskStatus value)? updateSelectedTaskStatus,
    TResult Function(_AddNewTask value)? addNewTask,
    TResult Function(_AddFullTask value)? updateFullTask,
    TResult Function(_AddNewComment value)? addNewComment,
    TResult Function(_Updateomment value)? updateComment,
    TResult Function(_FetchAllComments value)? fetchAllComments,
    TResult Function(_FetchAllTasks value)? fetchAllTasks,
    TResult Function(_SetPickedFileForComment value)? setPickedFileForComment,
    TResult Function(_SyncData value)? syncData,
    TResult Function(_SyncDataInServer value)? syncDataInServer,
    TResult Function(_AddCurrentTimeStampToAllTasksLocally value)?
        addCurrentTimeStampToAllTasksLocally,
    TResult Function(_UpdateCurrentHomeIndex value)? updateCurrentHomeIndex,
    TResult Function(_ResetSelectItems value)? resetSelectItems,
    TResult Function(_UpdateFocusedDate value)? updateFocusedDate,
    TResult Function(_ResetMessage value)? resetMessage,
    TResult Function(_UpdateSection value)? updateSection,
    TResult Function(_UpdateTimer value)? updateTimer,
    TResult Function(_UpdateTimerState value)? updateTimerState,
    TResult Function(_UpdateTimerLocally value)? updateTimerLocally,
    TResult Function(_UpdateTimerStateLocally value)? updateTimerStateLocally,
    TResult Function(_CompleteTask value)? completeTask,
    TResult Function(_ReopenTaskTask value)? reopenTask,
    TResult Function(_StartTask value)? startTask,
    TResult Function(_DeleteTask value)? deleteTask,
    TResult Function(_DeleteAllTask value)? deleteAllTask,
    TResult Function(_DeleteComment value)? deleteComment,
    TResult Function(_SortByDateDescending value)? sortByDateDescending,
    TResult Function(_SortByNameDescending value)? sortByNameDescending,
    TResult Function(_SortByNameAscending value)? sortByNameAscending,
    TResult Function(_SortByDateAscending value)? sortByDateAscending,
    TResult Function(_SortByPriorityDescending value)? sortByPriorityDescending,
    TResult Function(_SortByPriorityAscending value)? sortByPriorityAscending,
    required TResult orElse(),
  }) {
    if (updateSection != null) {
      return updateSection(this);
    }
    return orElse();
  }
}

abstract class _UpdateSection implements HomeEvent {
  const factory _UpdateSection(
      {required final String taskId,
      required final String fromSectionId,
      required final String sectionId,
      required final List<String> labels}) = _$UpdateSectionImpl;

  String get taskId;
  String get fromSectionId;
  String get sectionId;
  List<String> get labels;
  @JsonKey(ignore: true)
  _$$UpdateSectionImplCopyWith<_$UpdateSectionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateTimerImplCopyWith<$Res> {
  factory _$$UpdateTimerImplCopyWith(
          _$UpdateTimerImpl value, $Res Function(_$UpdateTimerImpl) then) =
      __$$UpdateTimerImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String taskId, List<String> labels});
}

/// @nodoc
class __$$UpdateTimerImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$UpdateTimerImpl>
    implements _$$UpdateTimerImplCopyWith<$Res> {
  __$$UpdateTimerImplCopyWithImpl(
      _$UpdateTimerImpl _value, $Res Function(_$UpdateTimerImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? taskId = null,
    Object? labels = null,
  }) {
    return _then(_$UpdateTimerImpl(
      taskId: null == taskId
          ? _value.taskId
          : taskId // ignore: cast_nullable_to_non_nullable
              as String,
      labels: null == labels
          ? _value._labels
          : labels // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$UpdateTimerImpl implements _UpdateTimer {
  const _$UpdateTimerImpl(
      {required this.taskId, required final List<String> labels})
      : _labels = labels;

  @override
  final String taskId;
  final List<String> _labels;
  @override
  List<String> get labels {
    if (_labels is EqualUnmodifiableListView) return _labels;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_labels);
  }

  @override
  String toString() {
    return 'HomeEvent.updateTimer(taskId: $taskId, labels: $labels)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateTimerImpl &&
            (identical(other.taskId, taskId) || other.taskId == taskId) &&
            const DeepCollectionEquality().equals(other._labels, _labels));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, taskId, const DeepCollectionEquality().hash(_labels));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateTimerImplCopyWith<_$UpdateTimerImpl> get copyWith =>
      __$$UpdateTimerImplCopyWithImpl<_$UpdateTimerImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TasksTags tasksTags) updateSelectedTaskTag,
    required TResult Function(int index) removeSelectedTaskTag,
    required TResult Function(TasksPriority taskPriority)
        updateSelectedTaskPriority,
    required TResult Function(TasksStatus tasksStatus) updateSelectedTaskStatus,
    required TResult Function(
            AppLocalizations appLocalization,
            String dueDate,
            String content,
            String description,
            void Function()? Function() onComplete)
        addNewTask,
    required TResult Function(
            AppLocalizations appLocalization,
            String dueDate,
            String content,
            String taskId,
            String description,
            void Function()? Function() onComplete)
        updateFullTask,
    required TResult Function(AppLocalizations appLocalization, String taskId,
            String content, void Function()? Function() onComplete)
        addNewComment,
    required TResult Function(
            AppLocalizations appLocalization,
            String taskId,
            String commentId,
            String content,
            void Function()? Function() onComplete)
        updateComment,
    required TResult Function(
            String taskId, bool isSyncing, InternetState internetState)
        fetchAllComments,
    required TResult Function(bool requiredReload, InternetState internetState)
        fetchAllTasks,
    required TResult Function(File? file) setPickedFileForComment,
    required TResult Function(BuildContext context) syncData,
    required TResult Function() syncDataInServer,
    required TResult Function(int savedTime)
        addCurrentTimeStampToAllTasksLocally,
    required TResult Function(int index) updateCurrentHomeIndex,
    required TResult Function() resetSelectItems,
    required TResult Function(DateTime focusedDate, InternetState internetState)
        updateFocusedDate,
    required TResult Function() resetMessage,
    required TResult Function(String taskId, String fromSectionId,
            String sectionId, List<String> labels)
        updateSection,
    required TResult Function(String taskId, List<String> labels) updateTimer,
    required TResult Function(String taskId, List<String> labels)
        updateTimerState,
    required TResult Function(String taskId, List<String> labels)
        updateTimerLocally,
    required TResult Function(String taskId, List<String> labels)
        updateTimerStateLocally,
    required TResult Function(String taskId, List<String> labels) completeTask,
    required TResult Function(String taskId, List<String> labels) reopenTask,
    required TResult Function(String taskId, List<String> labels) startTask,
    required TResult Function(String taskId) deleteTask,
    required TResult Function(AppLocalizations appLocalization) deleteAllTask,
    required TResult Function(String commentId, String taskId) deleteComment,
    required TResult Function(String id) sortByDateDescending,
    required TResult Function(String id) sortByNameDescending,
    required TResult Function(String id) sortByNameAscending,
    required TResult Function(String id) sortByDateAscending,
    required TResult Function(String id) sortByPriorityDescending,
    required TResult Function(String id) sortByPriorityAscending,
  }) {
    return updateTimer(taskId, labels);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TasksTags tasksTags)? updateSelectedTaskTag,
    TResult? Function(int index)? removeSelectedTaskTag,
    TResult? Function(TasksPriority taskPriority)? updateSelectedTaskPriority,
    TResult? Function(TasksStatus tasksStatus)? updateSelectedTaskStatus,
    TResult? Function(
            AppLocalizations appLocalization,
            String dueDate,
            String content,
            String description,
            void Function()? Function() onComplete)?
        addNewTask,
    TResult? Function(
            AppLocalizations appLocalization,
            String dueDate,
            String content,
            String taskId,
            String description,
            void Function()? Function() onComplete)?
        updateFullTask,
    TResult? Function(AppLocalizations appLocalization, String taskId,
            String content, void Function()? Function() onComplete)?
        addNewComment,
    TResult? Function(
            AppLocalizations appLocalization,
            String taskId,
            String commentId,
            String content,
            void Function()? Function() onComplete)?
        updateComment,
    TResult? Function(
            String taskId, bool isSyncing, InternetState internetState)?
        fetchAllComments,
    TResult? Function(bool requiredReload, InternetState internetState)?
        fetchAllTasks,
    TResult? Function(File? file)? setPickedFileForComment,
    TResult? Function(BuildContext context)? syncData,
    TResult? Function()? syncDataInServer,
    TResult? Function(int savedTime)? addCurrentTimeStampToAllTasksLocally,
    TResult? Function(int index)? updateCurrentHomeIndex,
    TResult? Function()? resetSelectItems,
    TResult? Function(DateTime focusedDate, InternetState internetState)?
        updateFocusedDate,
    TResult? Function()? resetMessage,
    TResult? Function(String taskId, String fromSectionId, String sectionId,
            List<String> labels)?
        updateSection,
    TResult? Function(String taskId, List<String> labels)? updateTimer,
    TResult? Function(String taskId, List<String> labels)? updateTimerState,
    TResult? Function(String taskId, List<String> labels)? updateTimerLocally,
    TResult? Function(String taskId, List<String> labels)?
        updateTimerStateLocally,
    TResult? Function(String taskId, List<String> labels)? completeTask,
    TResult? Function(String taskId, List<String> labels)? reopenTask,
    TResult? Function(String taskId, List<String> labels)? startTask,
    TResult? Function(String taskId)? deleteTask,
    TResult? Function(AppLocalizations appLocalization)? deleteAllTask,
    TResult? Function(String commentId, String taskId)? deleteComment,
    TResult? Function(String id)? sortByDateDescending,
    TResult? Function(String id)? sortByNameDescending,
    TResult? Function(String id)? sortByNameAscending,
    TResult? Function(String id)? sortByDateAscending,
    TResult? Function(String id)? sortByPriorityDescending,
    TResult? Function(String id)? sortByPriorityAscending,
  }) {
    return updateTimer?.call(taskId, labels);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TasksTags tasksTags)? updateSelectedTaskTag,
    TResult Function(int index)? removeSelectedTaskTag,
    TResult Function(TasksPriority taskPriority)? updateSelectedTaskPriority,
    TResult Function(TasksStatus tasksStatus)? updateSelectedTaskStatus,
    TResult Function(
            AppLocalizations appLocalization,
            String dueDate,
            String content,
            String description,
            void Function()? Function() onComplete)?
        addNewTask,
    TResult Function(
            AppLocalizations appLocalization,
            String dueDate,
            String content,
            String taskId,
            String description,
            void Function()? Function() onComplete)?
        updateFullTask,
    TResult Function(AppLocalizations appLocalization, String taskId,
            String content, void Function()? Function() onComplete)?
        addNewComment,
    TResult Function(
            AppLocalizations appLocalization,
            String taskId,
            String commentId,
            String content,
            void Function()? Function() onComplete)?
        updateComment,
    TResult Function(
            String taskId, bool isSyncing, InternetState internetState)?
        fetchAllComments,
    TResult Function(bool requiredReload, InternetState internetState)?
        fetchAllTasks,
    TResult Function(File? file)? setPickedFileForComment,
    TResult Function(BuildContext context)? syncData,
    TResult Function()? syncDataInServer,
    TResult Function(int savedTime)? addCurrentTimeStampToAllTasksLocally,
    TResult Function(int index)? updateCurrentHomeIndex,
    TResult Function()? resetSelectItems,
    TResult Function(DateTime focusedDate, InternetState internetState)?
        updateFocusedDate,
    TResult Function()? resetMessage,
    TResult Function(String taskId, String fromSectionId, String sectionId,
            List<String> labels)?
        updateSection,
    TResult Function(String taskId, List<String> labels)? updateTimer,
    TResult Function(String taskId, List<String> labels)? updateTimerState,
    TResult Function(String taskId, List<String> labels)? updateTimerLocally,
    TResult Function(String taskId, List<String> labels)?
        updateTimerStateLocally,
    TResult Function(String taskId, List<String> labels)? completeTask,
    TResult Function(String taskId, List<String> labels)? reopenTask,
    TResult Function(String taskId, List<String> labels)? startTask,
    TResult Function(String taskId)? deleteTask,
    TResult Function(AppLocalizations appLocalization)? deleteAllTask,
    TResult Function(String commentId, String taskId)? deleteComment,
    TResult Function(String id)? sortByDateDescending,
    TResult Function(String id)? sortByNameDescending,
    TResult Function(String id)? sortByNameAscending,
    TResult Function(String id)? sortByDateAscending,
    TResult Function(String id)? sortByPriorityDescending,
    TResult Function(String id)? sortByPriorityAscending,
    required TResult orElse(),
  }) {
    if (updateTimer != null) {
      return updateTimer(taskId, labels);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateSelectedTaskTag value)
        updateSelectedTaskTag,
    required TResult Function(_RemoveSelectedTaskTag value)
        removeSelectedTaskTag,
    required TResult Function(_UpdateSelectedTaskPriority value)
        updateSelectedTaskPriority,
    required TResult Function(_UpdateSelectedTaskStatus value)
        updateSelectedTaskStatus,
    required TResult Function(_AddNewTask value) addNewTask,
    required TResult Function(_AddFullTask value) updateFullTask,
    required TResult Function(_AddNewComment value) addNewComment,
    required TResult Function(_Updateomment value) updateComment,
    required TResult Function(_FetchAllComments value) fetchAllComments,
    required TResult Function(_FetchAllTasks value) fetchAllTasks,
    required TResult Function(_SetPickedFileForComment value)
        setPickedFileForComment,
    required TResult Function(_SyncData value) syncData,
    required TResult Function(_SyncDataInServer value) syncDataInServer,
    required TResult Function(_AddCurrentTimeStampToAllTasksLocally value)
        addCurrentTimeStampToAllTasksLocally,
    required TResult Function(_UpdateCurrentHomeIndex value)
        updateCurrentHomeIndex,
    required TResult Function(_ResetSelectItems value) resetSelectItems,
    required TResult Function(_UpdateFocusedDate value) updateFocusedDate,
    required TResult Function(_ResetMessage value) resetMessage,
    required TResult Function(_UpdateSection value) updateSection,
    required TResult Function(_UpdateTimer value) updateTimer,
    required TResult Function(_UpdateTimerState value) updateTimerState,
    required TResult Function(_UpdateTimerLocally value) updateTimerLocally,
    required TResult Function(_UpdateTimerStateLocally value)
        updateTimerStateLocally,
    required TResult Function(_CompleteTask value) completeTask,
    required TResult Function(_ReopenTaskTask value) reopenTask,
    required TResult Function(_StartTask value) startTask,
    required TResult Function(_DeleteTask value) deleteTask,
    required TResult Function(_DeleteAllTask value) deleteAllTask,
    required TResult Function(_DeleteComment value) deleteComment,
    required TResult Function(_SortByDateDescending value) sortByDateDescending,
    required TResult Function(_SortByNameDescending value) sortByNameDescending,
    required TResult Function(_SortByNameAscending value) sortByNameAscending,
    required TResult Function(_SortByDateAscending value) sortByDateAscending,
    required TResult Function(_SortByPriorityDescending value)
        sortByPriorityDescending,
    required TResult Function(_SortByPriorityAscending value)
        sortByPriorityAscending,
  }) {
    return updateTimer(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateSelectedTaskTag value)? updateSelectedTaskTag,
    TResult? Function(_RemoveSelectedTaskTag value)? removeSelectedTaskTag,
    TResult? Function(_UpdateSelectedTaskPriority value)?
        updateSelectedTaskPriority,
    TResult? Function(_UpdateSelectedTaskStatus value)?
        updateSelectedTaskStatus,
    TResult? Function(_AddNewTask value)? addNewTask,
    TResult? Function(_AddFullTask value)? updateFullTask,
    TResult? Function(_AddNewComment value)? addNewComment,
    TResult? Function(_Updateomment value)? updateComment,
    TResult? Function(_FetchAllComments value)? fetchAllComments,
    TResult? Function(_FetchAllTasks value)? fetchAllTasks,
    TResult? Function(_SetPickedFileForComment value)? setPickedFileForComment,
    TResult? Function(_SyncData value)? syncData,
    TResult? Function(_SyncDataInServer value)? syncDataInServer,
    TResult? Function(_AddCurrentTimeStampToAllTasksLocally value)?
        addCurrentTimeStampToAllTasksLocally,
    TResult? Function(_UpdateCurrentHomeIndex value)? updateCurrentHomeIndex,
    TResult? Function(_ResetSelectItems value)? resetSelectItems,
    TResult? Function(_UpdateFocusedDate value)? updateFocusedDate,
    TResult? Function(_ResetMessage value)? resetMessage,
    TResult? Function(_UpdateSection value)? updateSection,
    TResult? Function(_UpdateTimer value)? updateTimer,
    TResult? Function(_UpdateTimerState value)? updateTimerState,
    TResult? Function(_UpdateTimerLocally value)? updateTimerLocally,
    TResult? Function(_UpdateTimerStateLocally value)? updateTimerStateLocally,
    TResult? Function(_CompleteTask value)? completeTask,
    TResult? Function(_ReopenTaskTask value)? reopenTask,
    TResult? Function(_StartTask value)? startTask,
    TResult? Function(_DeleteTask value)? deleteTask,
    TResult? Function(_DeleteAllTask value)? deleteAllTask,
    TResult? Function(_DeleteComment value)? deleteComment,
    TResult? Function(_SortByDateDescending value)? sortByDateDescending,
    TResult? Function(_SortByNameDescending value)? sortByNameDescending,
    TResult? Function(_SortByNameAscending value)? sortByNameAscending,
    TResult? Function(_SortByDateAscending value)? sortByDateAscending,
    TResult? Function(_SortByPriorityDescending value)?
        sortByPriorityDescending,
    TResult? Function(_SortByPriorityAscending value)? sortByPriorityAscending,
  }) {
    return updateTimer?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateSelectedTaskTag value)? updateSelectedTaskTag,
    TResult Function(_RemoveSelectedTaskTag value)? removeSelectedTaskTag,
    TResult Function(_UpdateSelectedTaskPriority value)?
        updateSelectedTaskPriority,
    TResult Function(_UpdateSelectedTaskStatus value)? updateSelectedTaskStatus,
    TResult Function(_AddNewTask value)? addNewTask,
    TResult Function(_AddFullTask value)? updateFullTask,
    TResult Function(_AddNewComment value)? addNewComment,
    TResult Function(_Updateomment value)? updateComment,
    TResult Function(_FetchAllComments value)? fetchAllComments,
    TResult Function(_FetchAllTasks value)? fetchAllTasks,
    TResult Function(_SetPickedFileForComment value)? setPickedFileForComment,
    TResult Function(_SyncData value)? syncData,
    TResult Function(_SyncDataInServer value)? syncDataInServer,
    TResult Function(_AddCurrentTimeStampToAllTasksLocally value)?
        addCurrentTimeStampToAllTasksLocally,
    TResult Function(_UpdateCurrentHomeIndex value)? updateCurrentHomeIndex,
    TResult Function(_ResetSelectItems value)? resetSelectItems,
    TResult Function(_UpdateFocusedDate value)? updateFocusedDate,
    TResult Function(_ResetMessage value)? resetMessage,
    TResult Function(_UpdateSection value)? updateSection,
    TResult Function(_UpdateTimer value)? updateTimer,
    TResult Function(_UpdateTimerState value)? updateTimerState,
    TResult Function(_UpdateTimerLocally value)? updateTimerLocally,
    TResult Function(_UpdateTimerStateLocally value)? updateTimerStateLocally,
    TResult Function(_CompleteTask value)? completeTask,
    TResult Function(_ReopenTaskTask value)? reopenTask,
    TResult Function(_StartTask value)? startTask,
    TResult Function(_DeleteTask value)? deleteTask,
    TResult Function(_DeleteAllTask value)? deleteAllTask,
    TResult Function(_DeleteComment value)? deleteComment,
    TResult Function(_SortByDateDescending value)? sortByDateDescending,
    TResult Function(_SortByNameDescending value)? sortByNameDescending,
    TResult Function(_SortByNameAscending value)? sortByNameAscending,
    TResult Function(_SortByDateAscending value)? sortByDateAscending,
    TResult Function(_SortByPriorityDescending value)? sortByPriorityDescending,
    TResult Function(_SortByPriorityAscending value)? sortByPriorityAscending,
    required TResult orElse(),
  }) {
    if (updateTimer != null) {
      return updateTimer(this);
    }
    return orElse();
  }
}

abstract class _UpdateTimer implements HomeEvent {
  const factory _UpdateTimer(
      {required final String taskId,
      required final List<String> labels}) = _$UpdateTimerImpl;

  String get taskId;
  List<String> get labels;
  @JsonKey(ignore: true)
  _$$UpdateTimerImplCopyWith<_$UpdateTimerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateTimerStateImplCopyWith<$Res> {
  factory _$$UpdateTimerStateImplCopyWith(_$UpdateTimerStateImpl value,
          $Res Function(_$UpdateTimerStateImpl) then) =
      __$$UpdateTimerStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String taskId, List<String> labels});
}

/// @nodoc
class __$$UpdateTimerStateImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$UpdateTimerStateImpl>
    implements _$$UpdateTimerStateImplCopyWith<$Res> {
  __$$UpdateTimerStateImplCopyWithImpl(_$UpdateTimerStateImpl _value,
      $Res Function(_$UpdateTimerStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? taskId = null,
    Object? labels = null,
  }) {
    return _then(_$UpdateTimerStateImpl(
      taskId: null == taskId
          ? _value.taskId
          : taskId // ignore: cast_nullable_to_non_nullable
              as String,
      labels: null == labels
          ? _value._labels
          : labels // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$UpdateTimerStateImpl implements _UpdateTimerState {
  const _$UpdateTimerStateImpl(
      {required this.taskId, required final List<String> labels})
      : _labels = labels;

  @override
  final String taskId;
  final List<String> _labels;
  @override
  List<String> get labels {
    if (_labels is EqualUnmodifiableListView) return _labels;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_labels);
  }

  @override
  String toString() {
    return 'HomeEvent.updateTimerState(taskId: $taskId, labels: $labels)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateTimerStateImpl &&
            (identical(other.taskId, taskId) || other.taskId == taskId) &&
            const DeepCollectionEquality().equals(other._labels, _labels));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, taskId, const DeepCollectionEquality().hash(_labels));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateTimerStateImplCopyWith<_$UpdateTimerStateImpl> get copyWith =>
      __$$UpdateTimerStateImplCopyWithImpl<_$UpdateTimerStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TasksTags tasksTags) updateSelectedTaskTag,
    required TResult Function(int index) removeSelectedTaskTag,
    required TResult Function(TasksPriority taskPriority)
        updateSelectedTaskPriority,
    required TResult Function(TasksStatus tasksStatus) updateSelectedTaskStatus,
    required TResult Function(
            AppLocalizations appLocalization,
            String dueDate,
            String content,
            String description,
            void Function()? Function() onComplete)
        addNewTask,
    required TResult Function(
            AppLocalizations appLocalization,
            String dueDate,
            String content,
            String taskId,
            String description,
            void Function()? Function() onComplete)
        updateFullTask,
    required TResult Function(AppLocalizations appLocalization, String taskId,
            String content, void Function()? Function() onComplete)
        addNewComment,
    required TResult Function(
            AppLocalizations appLocalization,
            String taskId,
            String commentId,
            String content,
            void Function()? Function() onComplete)
        updateComment,
    required TResult Function(
            String taskId, bool isSyncing, InternetState internetState)
        fetchAllComments,
    required TResult Function(bool requiredReload, InternetState internetState)
        fetchAllTasks,
    required TResult Function(File? file) setPickedFileForComment,
    required TResult Function(BuildContext context) syncData,
    required TResult Function() syncDataInServer,
    required TResult Function(int savedTime)
        addCurrentTimeStampToAllTasksLocally,
    required TResult Function(int index) updateCurrentHomeIndex,
    required TResult Function() resetSelectItems,
    required TResult Function(DateTime focusedDate, InternetState internetState)
        updateFocusedDate,
    required TResult Function() resetMessage,
    required TResult Function(String taskId, String fromSectionId,
            String sectionId, List<String> labels)
        updateSection,
    required TResult Function(String taskId, List<String> labels) updateTimer,
    required TResult Function(String taskId, List<String> labels)
        updateTimerState,
    required TResult Function(String taskId, List<String> labels)
        updateTimerLocally,
    required TResult Function(String taskId, List<String> labels)
        updateTimerStateLocally,
    required TResult Function(String taskId, List<String> labels) completeTask,
    required TResult Function(String taskId, List<String> labels) reopenTask,
    required TResult Function(String taskId, List<String> labels) startTask,
    required TResult Function(String taskId) deleteTask,
    required TResult Function(AppLocalizations appLocalization) deleteAllTask,
    required TResult Function(String commentId, String taskId) deleteComment,
    required TResult Function(String id) sortByDateDescending,
    required TResult Function(String id) sortByNameDescending,
    required TResult Function(String id) sortByNameAscending,
    required TResult Function(String id) sortByDateAscending,
    required TResult Function(String id) sortByPriorityDescending,
    required TResult Function(String id) sortByPriorityAscending,
  }) {
    return updateTimerState(taskId, labels);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TasksTags tasksTags)? updateSelectedTaskTag,
    TResult? Function(int index)? removeSelectedTaskTag,
    TResult? Function(TasksPriority taskPriority)? updateSelectedTaskPriority,
    TResult? Function(TasksStatus tasksStatus)? updateSelectedTaskStatus,
    TResult? Function(
            AppLocalizations appLocalization,
            String dueDate,
            String content,
            String description,
            void Function()? Function() onComplete)?
        addNewTask,
    TResult? Function(
            AppLocalizations appLocalization,
            String dueDate,
            String content,
            String taskId,
            String description,
            void Function()? Function() onComplete)?
        updateFullTask,
    TResult? Function(AppLocalizations appLocalization, String taskId,
            String content, void Function()? Function() onComplete)?
        addNewComment,
    TResult? Function(
            AppLocalizations appLocalization,
            String taskId,
            String commentId,
            String content,
            void Function()? Function() onComplete)?
        updateComment,
    TResult? Function(
            String taskId, bool isSyncing, InternetState internetState)?
        fetchAllComments,
    TResult? Function(bool requiredReload, InternetState internetState)?
        fetchAllTasks,
    TResult? Function(File? file)? setPickedFileForComment,
    TResult? Function(BuildContext context)? syncData,
    TResult? Function()? syncDataInServer,
    TResult? Function(int savedTime)? addCurrentTimeStampToAllTasksLocally,
    TResult? Function(int index)? updateCurrentHomeIndex,
    TResult? Function()? resetSelectItems,
    TResult? Function(DateTime focusedDate, InternetState internetState)?
        updateFocusedDate,
    TResult? Function()? resetMessage,
    TResult? Function(String taskId, String fromSectionId, String sectionId,
            List<String> labels)?
        updateSection,
    TResult? Function(String taskId, List<String> labels)? updateTimer,
    TResult? Function(String taskId, List<String> labels)? updateTimerState,
    TResult? Function(String taskId, List<String> labels)? updateTimerLocally,
    TResult? Function(String taskId, List<String> labels)?
        updateTimerStateLocally,
    TResult? Function(String taskId, List<String> labels)? completeTask,
    TResult? Function(String taskId, List<String> labels)? reopenTask,
    TResult? Function(String taskId, List<String> labels)? startTask,
    TResult? Function(String taskId)? deleteTask,
    TResult? Function(AppLocalizations appLocalization)? deleteAllTask,
    TResult? Function(String commentId, String taskId)? deleteComment,
    TResult? Function(String id)? sortByDateDescending,
    TResult? Function(String id)? sortByNameDescending,
    TResult? Function(String id)? sortByNameAscending,
    TResult? Function(String id)? sortByDateAscending,
    TResult? Function(String id)? sortByPriorityDescending,
    TResult? Function(String id)? sortByPriorityAscending,
  }) {
    return updateTimerState?.call(taskId, labels);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TasksTags tasksTags)? updateSelectedTaskTag,
    TResult Function(int index)? removeSelectedTaskTag,
    TResult Function(TasksPriority taskPriority)? updateSelectedTaskPriority,
    TResult Function(TasksStatus tasksStatus)? updateSelectedTaskStatus,
    TResult Function(
            AppLocalizations appLocalization,
            String dueDate,
            String content,
            String description,
            void Function()? Function() onComplete)?
        addNewTask,
    TResult Function(
            AppLocalizations appLocalization,
            String dueDate,
            String content,
            String taskId,
            String description,
            void Function()? Function() onComplete)?
        updateFullTask,
    TResult Function(AppLocalizations appLocalization, String taskId,
            String content, void Function()? Function() onComplete)?
        addNewComment,
    TResult Function(
            AppLocalizations appLocalization,
            String taskId,
            String commentId,
            String content,
            void Function()? Function() onComplete)?
        updateComment,
    TResult Function(
            String taskId, bool isSyncing, InternetState internetState)?
        fetchAllComments,
    TResult Function(bool requiredReload, InternetState internetState)?
        fetchAllTasks,
    TResult Function(File? file)? setPickedFileForComment,
    TResult Function(BuildContext context)? syncData,
    TResult Function()? syncDataInServer,
    TResult Function(int savedTime)? addCurrentTimeStampToAllTasksLocally,
    TResult Function(int index)? updateCurrentHomeIndex,
    TResult Function()? resetSelectItems,
    TResult Function(DateTime focusedDate, InternetState internetState)?
        updateFocusedDate,
    TResult Function()? resetMessage,
    TResult Function(String taskId, String fromSectionId, String sectionId,
            List<String> labels)?
        updateSection,
    TResult Function(String taskId, List<String> labels)? updateTimer,
    TResult Function(String taskId, List<String> labels)? updateTimerState,
    TResult Function(String taskId, List<String> labels)? updateTimerLocally,
    TResult Function(String taskId, List<String> labels)?
        updateTimerStateLocally,
    TResult Function(String taskId, List<String> labels)? completeTask,
    TResult Function(String taskId, List<String> labels)? reopenTask,
    TResult Function(String taskId, List<String> labels)? startTask,
    TResult Function(String taskId)? deleteTask,
    TResult Function(AppLocalizations appLocalization)? deleteAllTask,
    TResult Function(String commentId, String taskId)? deleteComment,
    TResult Function(String id)? sortByDateDescending,
    TResult Function(String id)? sortByNameDescending,
    TResult Function(String id)? sortByNameAscending,
    TResult Function(String id)? sortByDateAscending,
    TResult Function(String id)? sortByPriorityDescending,
    TResult Function(String id)? sortByPriorityAscending,
    required TResult orElse(),
  }) {
    if (updateTimerState != null) {
      return updateTimerState(taskId, labels);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateSelectedTaskTag value)
        updateSelectedTaskTag,
    required TResult Function(_RemoveSelectedTaskTag value)
        removeSelectedTaskTag,
    required TResult Function(_UpdateSelectedTaskPriority value)
        updateSelectedTaskPriority,
    required TResult Function(_UpdateSelectedTaskStatus value)
        updateSelectedTaskStatus,
    required TResult Function(_AddNewTask value) addNewTask,
    required TResult Function(_AddFullTask value) updateFullTask,
    required TResult Function(_AddNewComment value) addNewComment,
    required TResult Function(_Updateomment value) updateComment,
    required TResult Function(_FetchAllComments value) fetchAllComments,
    required TResult Function(_FetchAllTasks value) fetchAllTasks,
    required TResult Function(_SetPickedFileForComment value)
        setPickedFileForComment,
    required TResult Function(_SyncData value) syncData,
    required TResult Function(_SyncDataInServer value) syncDataInServer,
    required TResult Function(_AddCurrentTimeStampToAllTasksLocally value)
        addCurrentTimeStampToAllTasksLocally,
    required TResult Function(_UpdateCurrentHomeIndex value)
        updateCurrentHomeIndex,
    required TResult Function(_ResetSelectItems value) resetSelectItems,
    required TResult Function(_UpdateFocusedDate value) updateFocusedDate,
    required TResult Function(_ResetMessage value) resetMessage,
    required TResult Function(_UpdateSection value) updateSection,
    required TResult Function(_UpdateTimer value) updateTimer,
    required TResult Function(_UpdateTimerState value) updateTimerState,
    required TResult Function(_UpdateTimerLocally value) updateTimerLocally,
    required TResult Function(_UpdateTimerStateLocally value)
        updateTimerStateLocally,
    required TResult Function(_CompleteTask value) completeTask,
    required TResult Function(_ReopenTaskTask value) reopenTask,
    required TResult Function(_StartTask value) startTask,
    required TResult Function(_DeleteTask value) deleteTask,
    required TResult Function(_DeleteAllTask value) deleteAllTask,
    required TResult Function(_DeleteComment value) deleteComment,
    required TResult Function(_SortByDateDescending value) sortByDateDescending,
    required TResult Function(_SortByNameDescending value) sortByNameDescending,
    required TResult Function(_SortByNameAscending value) sortByNameAscending,
    required TResult Function(_SortByDateAscending value) sortByDateAscending,
    required TResult Function(_SortByPriorityDescending value)
        sortByPriorityDescending,
    required TResult Function(_SortByPriorityAscending value)
        sortByPriorityAscending,
  }) {
    return updateTimerState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateSelectedTaskTag value)? updateSelectedTaskTag,
    TResult? Function(_RemoveSelectedTaskTag value)? removeSelectedTaskTag,
    TResult? Function(_UpdateSelectedTaskPriority value)?
        updateSelectedTaskPriority,
    TResult? Function(_UpdateSelectedTaskStatus value)?
        updateSelectedTaskStatus,
    TResult? Function(_AddNewTask value)? addNewTask,
    TResult? Function(_AddFullTask value)? updateFullTask,
    TResult? Function(_AddNewComment value)? addNewComment,
    TResult? Function(_Updateomment value)? updateComment,
    TResult? Function(_FetchAllComments value)? fetchAllComments,
    TResult? Function(_FetchAllTasks value)? fetchAllTasks,
    TResult? Function(_SetPickedFileForComment value)? setPickedFileForComment,
    TResult? Function(_SyncData value)? syncData,
    TResult? Function(_SyncDataInServer value)? syncDataInServer,
    TResult? Function(_AddCurrentTimeStampToAllTasksLocally value)?
        addCurrentTimeStampToAllTasksLocally,
    TResult? Function(_UpdateCurrentHomeIndex value)? updateCurrentHomeIndex,
    TResult? Function(_ResetSelectItems value)? resetSelectItems,
    TResult? Function(_UpdateFocusedDate value)? updateFocusedDate,
    TResult? Function(_ResetMessage value)? resetMessage,
    TResult? Function(_UpdateSection value)? updateSection,
    TResult? Function(_UpdateTimer value)? updateTimer,
    TResult? Function(_UpdateTimerState value)? updateTimerState,
    TResult? Function(_UpdateTimerLocally value)? updateTimerLocally,
    TResult? Function(_UpdateTimerStateLocally value)? updateTimerStateLocally,
    TResult? Function(_CompleteTask value)? completeTask,
    TResult? Function(_ReopenTaskTask value)? reopenTask,
    TResult? Function(_StartTask value)? startTask,
    TResult? Function(_DeleteTask value)? deleteTask,
    TResult? Function(_DeleteAllTask value)? deleteAllTask,
    TResult? Function(_DeleteComment value)? deleteComment,
    TResult? Function(_SortByDateDescending value)? sortByDateDescending,
    TResult? Function(_SortByNameDescending value)? sortByNameDescending,
    TResult? Function(_SortByNameAscending value)? sortByNameAscending,
    TResult? Function(_SortByDateAscending value)? sortByDateAscending,
    TResult? Function(_SortByPriorityDescending value)?
        sortByPriorityDescending,
    TResult? Function(_SortByPriorityAscending value)? sortByPriorityAscending,
  }) {
    return updateTimerState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateSelectedTaskTag value)? updateSelectedTaskTag,
    TResult Function(_RemoveSelectedTaskTag value)? removeSelectedTaskTag,
    TResult Function(_UpdateSelectedTaskPriority value)?
        updateSelectedTaskPriority,
    TResult Function(_UpdateSelectedTaskStatus value)? updateSelectedTaskStatus,
    TResult Function(_AddNewTask value)? addNewTask,
    TResult Function(_AddFullTask value)? updateFullTask,
    TResult Function(_AddNewComment value)? addNewComment,
    TResult Function(_Updateomment value)? updateComment,
    TResult Function(_FetchAllComments value)? fetchAllComments,
    TResult Function(_FetchAllTasks value)? fetchAllTasks,
    TResult Function(_SetPickedFileForComment value)? setPickedFileForComment,
    TResult Function(_SyncData value)? syncData,
    TResult Function(_SyncDataInServer value)? syncDataInServer,
    TResult Function(_AddCurrentTimeStampToAllTasksLocally value)?
        addCurrentTimeStampToAllTasksLocally,
    TResult Function(_UpdateCurrentHomeIndex value)? updateCurrentHomeIndex,
    TResult Function(_ResetSelectItems value)? resetSelectItems,
    TResult Function(_UpdateFocusedDate value)? updateFocusedDate,
    TResult Function(_ResetMessage value)? resetMessage,
    TResult Function(_UpdateSection value)? updateSection,
    TResult Function(_UpdateTimer value)? updateTimer,
    TResult Function(_UpdateTimerState value)? updateTimerState,
    TResult Function(_UpdateTimerLocally value)? updateTimerLocally,
    TResult Function(_UpdateTimerStateLocally value)? updateTimerStateLocally,
    TResult Function(_CompleteTask value)? completeTask,
    TResult Function(_ReopenTaskTask value)? reopenTask,
    TResult Function(_StartTask value)? startTask,
    TResult Function(_DeleteTask value)? deleteTask,
    TResult Function(_DeleteAllTask value)? deleteAllTask,
    TResult Function(_DeleteComment value)? deleteComment,
    TResult Function(_SortByDateDescending value)? sortByDateDescending,
    TResult Function(_SortByNameDescending value)? sortByNameDescending,
    TResult Function(_SortByNameAscending value)? sortByNameAscending,
    TResult Function(_SortByDateAscending value)? sortByDateAscending,
    TResult Function(_SortByPriorityDescending value)? sortByPriorityDescending,
    TResult Function(_SortByPriorityAscending value)? sortByPriorityAscending,
    required TResult orElse(),
  }) {
    if (updateTimerState != null) {
      return updateTimerState(this);
    }
    return orElse();
  }
}

abstract class _UpdateTimerState implements HomeEvent {
  const factory _UpdateTimerState(
      {required final String taskId,
      required final List<String> labels}) = _$UpdateTimerStateImpl;

  String get taskId;
  List<String> get labels;
  @JsonKey(ignore: true)
  _$$UpdateTimerStateImplCopyWith<_$UpdateTimerStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateTimerLocallyImplCopyWith<$Res> {
  factory _$$UpdateTimerLocallyImplCopyWith(_$UpdateTimerLocallyImpl value,
          $Res Function(_$UpdateTimerLocallyImpl) then) =
      __$$UpdateTimerLocallyImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String taskId, List<String> labels});
}

/// @nodoc
class __$$UpdateTimerLocallyImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$UpdateTimerLocallyImpl>
    implements _$$UpdateTimerLocallyImplCopyWith<$Res> {
  __$$UpdateTimerLocallyImplCopyWithImpl(_$UpdateTimerLocallyImpl _value,
      $Res Function(_$UpdateTimerLocallyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? taskId = null,
    Object? labels = null,
  }) {
    return _then(_$UpdateTimerLocallyImpl(
      taskId: null == taskId
          ? _value.taskId
          : taskId // ignore: cast_nullable_to_non_nullable
              as String,
      labels: null == labels
          ? _value._labels
          : labels // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$UpdateTimerLocallyImpl implements _UpdateTimerLocally {
  const _$UpdateTimerLocallyImpl(
      {required this.taskId, required final List<String> labels})
      : _labels = labels;

  @override
  final String taskId;
  final List<String> _labels;
  @override
  List<String> get labels {
    if (_labels is EqualUnmodifiableListView) return _labels;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_labels);
  }

  @override
  String toString() {
    return 'HomeEvent.updateTimerLocally(taskId: $taskId, labels: $labels)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateTimerLocallyImpl &&
            (identical(other.taskId, taskId) || other.taskId == taskId) &&
            const DeepCollectionEquality().equals(other._labels, _labels));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, taskId, const DeepCollectionEquality().hash(_labels));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateTimerLocallyImplCopyWith<_$UpdateTimerLocallyImpl> get copyWith =>
      __$$UpdateTimerLocallyImplCopyWithImpl<_$UpdateTimerLocallyImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TasksTags tasksTags) updateSelectedTaskTag,
    required TResult Function(int index) removeSelectedTaskTag,
    required TResult Function(TasksPriority taskPriority)
        updateSelectedTaskPriority,
    required TResult Function(TasksStatus tasksStatus) updateSelectedTaskStatus,
    required TResult Function(
            AppLocalizations appLocalization,
            String dueDate,
            String content,
            String description,
            void Function()? Function() onComplete)
        addNewTask,
    required TResult Function(
            AppLocalizations appLocalization,
            String dueDate,
            String content,
            String taskId,
            String description,
            void Function()? Function() onComplete)
        updateFullTask,
    required TResult Function(AppLocalizations appLocalization, String taskId,
            String content, void Function()? Function() onComplete)
        addNewComment,
    required TResult Function(
            AppLocalizations appLocalization,
            String taskId,
            String commentId,
            String content,
            void Function()? Function() onComplete)
        updateComment,
    required TResult Function(
            String taskId, bool isSyncing, InternetState internetState)
        fetchAllComments,
    required TResult Function(bool requiredReload, InternetState internetState)
        fetchAllTasks,
    required TResult Function(File? file) setPickedFileForComment,
    required TResult Function(BuildContext context) syncData,
    required TResult Function() syncDataInServer,
    required TResult Function(int savedTime)
        addCurrentTimeStampToAllTasksLocally,
    required TResult Function(int index) updateCurrentHomeIndex,
    required TResult Function() resetSelectItems,
    required TResult Function(DateTime focusedDate, InternetState internetState)
        updateFocusedDate,
    required TResult Function() resetMessage,
    required TResult Function(String taskId, String fromSectionId,
            String sectionId, List<String> labels)
        updateSection,
    required TResult Function(String taskId, List<String> labels) updateTimer,
    required TResult Function(String taskId, List<String> labels)
        updateTimerState,
    required TResult Function(String taskId, List<String> labels)
        updateTimerLocally,
    required TResult Function(String taskId, List<String> labels)
        updateTimerStateLocally,
    required TResult Function(String taskId, List<String> labels) completeTask,
    required TResult Function(String taskId, List<String> labels) reopenTask,
    required TResult Function(String taskId, List<String> labels) startTask,
    required TResult Function(String taskId) deleteTask,
    required TResult Function(AppLocalizations appLocalization) deleteAllTask,
    required TResult Function(String commentId, String taskId) deleteComment,
    required TResult Function(String id) sortByDateDescending,
    required TResult Function(String id) sortByNameDescending,
    required TResult Function(String id) sortByNameAscending,
    required TResult Function(String id) sortByDateAscending,
    required TResult Function(String id) sortByPriorityDescending,
    required TResult Function(String id) sortByPriorityAscending,
  }) {
    return updateTimerLocally(taskId, labels);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TasksTags tasksTags)? updateSelectedTaskTag,
    TResult? Function(int index)? removeSelectedTaskTag,
    TResult? Function(TasksPriority taskPriority)? updateSelectedTaskPriority,
    TResult? Function(TasksStatus tasksStatus)? updateSelectedTaskStatus,
    TResult? Function(
            AppLocalizations appLocalization,
            String dueDate,
            String content,
            String description,
            void Function()? Function() onComplete)?
        addNewTask,
    TResult? Function(
            AppLocalizations appLocalization,
            String dueDate,
            String content,
            String taskId,
            String description,
            void Function()? Function() onComplete)?
        updateFullTask,
    TResult? Function(AppLocalizations appLocalization, String taskId,
            String content, void Function()? Function() onComplete)?
        addNewComment,
    TResult? Function(
            AppLocalizations appLocalization,
            String taskId,
            String commentId,
            String content,
            void Function()? Function() onComplete)?
        updateComment,
    TResult? Function(
            String taskId, bool isSyncing, InternetState internetState)?
        fetchAllComments,
    TResult? Function(bool requiredReload, InternetState internetState)?
        fetchAllTasks,
    TResult? Function(File? file)? setPickedFileForComment,
    TResult? Function(BuildContext context)? syncData,
    TResult? Function()? syncDataInServer,
    TResult? Function(int savedTime)? addCurrentTimeStampToAllTasksLocally,
    TResult? Function(int index)? updateCurrentHomeIndex,
    TResult? Function()? resetSelectItems,
    TResult? Function(DateTime focusedDate, InternetState internetState)?
        updateFocusedDate,
    TResult? Function()? resetMessage,
    TResult? Function(String taskId, String fromSectionId, String sectionId,
            List<String> labels)?
        updateSection,
    TResult? Function(String taskId, List<String> labels)? updateTimer,
    TResult? Function(String taskId, List<String> labels)? updateTimerState,
    TResult? Function(String taskId, List<String> labels)? updateTimerLocally,
    TResult? Function(String taskId, List<String> labels)?
        updateTimerStateLocally,
    TResult? Function(String taskId, List<String> labels)? completeTask,
    TResult? Function(String taskId, List<String> labels)? reopenTask,
    TResult? Function(String taskId, List<String> labels)? startTask,
    TResult? Function(String taskId)? deleteTask,
    TResult? Function(AppLocalizations appLocalization)? deleteAllTask,
    TResult? Function(String commentId, String taskId)? deleteComment,
    TResult? Function(String id)? sortByDateDescending,
    TResult? Function(String id)? sortByNameDescending,
    TResult? Function(String id)? sortByNameAscending,
    TResult? Function(String id)? sortByDateAscending,
    TResult? Function(String id)? sortByPriorityDescending,
    TResult? Function(String id)? sortByPriorityAscending,
  }) {
    return updateTimerLocally?.call(taskId, labels);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TasksTags tasksTags)? updateSelectedTaskTag,
    TResult Function(int index)? removeSelectedTaskTag,
    TResult Function(TasksPriority taskPriority)? updateSelectedTaskPriority,
    TResult Function(TasksStatus tasksStatus)? updateSelectedTaskStatus,
    TResult Function(
            AppLocalizations appLocalization,
            String dueDate,
            String content,
            String description,
            void Function()? Function() onComplete)?
        addNewTask,
    TResult Function(
            AppLocalizations appLocalization,
            String dueDate,
            String content,
            String taskId,
            String description,
            void Function()? Function() onComplete)?
        updateFullTask,
    TResult Function(AppLocalizations appLocalization, String taskId,
            String content, void Function()? Function() onComplete)?
        addNewComment,
    TResult Function(
            AppLocalizations appLocalization,
            String taskId,
            String commentId,
            String content,
            void Function()? Function() onComplete)?
        updateComment,
    TResult Function(
            String taskId, bool isSyncing, InternetState internetState)?
        fetchAllComments,
    TResult Function(bool requiredReload, InternetState internetState)?
        fetchAllTasks,
    TResult Function(File? file)? setPickedFileForComment,
    TResult Function(BuildContext context)? syncData,
    TResult Function()? syncDataInServer,
    TResult Function(int savedTime)? addCurrentTimeStampToAllTasksLocally,
    TResult Function(int index)? updateCurrentHomeIndex,
    TResult Function()? resetSelectItems,
    TResult Function(DateTime focusedDate, InternetState internetState)?
        updateFocusedDate,
    TResult Function()? resetMessage,
    TResult Function(String taskId, String fromSectionId, String sectionId,
            List<String> labels)?
        updateSection,
    TResult Function(String taskId, List<String> labels)? updateTimer,
    TResult Function(String taskId, List<String> labels)? updateTimerState,
    TResult Function(String taskId, List<String> labels)? updateTimerLocally,
    TResult Function(String taskId, List<String> labels)?
        updateTimerStateLocally,
    TResult Function(String taskId, List<String> labels)? completeTask,
    TResult Function(String taskId, List<String> labels)? reopenTask,
    TResult Function(String taskId, List<String> labels)? startTask,
    TResult Function(String taskId)? deleteTask,
    TResult Function(AppLocalizations appLocalization)? deleteAllTask,
    TResult Function(String commentId, String taskId)? deleteComment,
    TResult Function(String id)? sortByDateDescending,
    TResult Function(String id)? sortByNameDescending,
    TResult Function(String id)? sortByNameAscending,
    TResult Function(String id)? sortByDateAscending,
    TResult Function(String id)? sortByPriorityDescending,
    TResult Function(String id)? sortByPriorityAscending,
    required TResult orElse(),
  }) {
    if (updateTimerLocally != null) {
      return updateTimerLocally(taskId, labels);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateSelectedTaskTag value)
        updateSelectedTaskTag,
    required TResult Function(_RemoveSelectedTaskTag value)
        removeSelectedTaskTag,
    required TResult Function(_UpdateSelectedTaskPriority value)
        updateSelectedTaskPriority,
    required TResult Function(_UpdateSelectedTaskStatus value)
        updateSelectedTaskStatus,
    required TResult Function(_AddNewTask value) addNewTask,
    required TResult Function(_AddFullTask value) updateFullTask,
    required TResult Function(_AddNewComment value) addNewComment,
    required TResult Function(_Updateomment value) updateComment,
    required TResult Function(_FetchAllComments value) fetchAllComments,
    required TResult Function(_FetchAllTasks value) fetchAllTasks,
    required TResult Function(_SetPickedFileForComment value)
        setPickedFileForComment,
    required TResult Function(_SyncData value) syncData,
    required TResult Function(_SyncDataInServer value) syncDataInServer,
    required TResult Function(_AddCurrentTimeStampToAllTasksLocally value)
        addCurrentTimeStampToAllTasksLocally,
    required TResult Function(_UpdateCurrentHomeIndex value)
        updateCurrentHomeIndex,
    required TResult Function(_ResetSelectItems value) resetSelectItems,
    required TResult Function(_UpdateFocusedDate value) updateFocusedDate,
    required TResult Function(_ResetMessage value) resetMessage,
    required TResult Function(_UpdateSection value) updateSection,
    required TResult Function(_UpdateTimer value) updateTimer,
    required TResult Function(_UpdateTimerState value) updateTimerState,
    required TResult Function(_UpdateTimerLocally value) updateTimerLocally,
    required TResult Function(_UpdateTimerStateLocally value)
        updateTimerStateLocally,
    required TResult Function(_CompleteTask value) completeTask,
    required TResult Function(_ReopenTaskTask value) reopenTask,
    required TResult Function(_StartTask value) startTask,
    required TResult Function(_DeleteTask value) deleteTask,
    required TResult Function(_DeleteAllTask value) deleteAllTask,
    required TResult Function(_DeleteComment value) deleteComment,
    required TResult Function(_SortByDateDescending value) sortByDateDescending,
    required TResult Function(_SortByNameDescending value) sortByNameDescending,
    required TResult Function(_SortByNameAscending value) sortByNameAscending,
    required TResult Function(_SortByDateAscending value) sortByDateAscending,
    required TResult Function(_SortByPriorityDescending value)
        sortByPriorityDescending,
    required TResult Function(_SortByPriorityAscending value)
        sortByPriorityAscending,
  }) {
    return updateTimerLocally(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateSelectedTaskTag value)? updateSelectedTaskTag,
    TResult? Function(_RemoveSelectedTaskTag value)? removeSelectedTaskTag,
    TResult? Function(_UpdateSelectedTaskPriority value)?
        updateSelectedTaskPriority,
    TResult? Function(_UpdateSelectedTaskStatus value)?
        updateSelectedTaskStatus,
    TResult? Function(_AddNewTask value)? addNewTask,
    TResult? Function(_AddFullTask value)? updateFullTask,
    TResult? Function(_AddNewComment value)? addNewComment,
    TResult? Function(_Updateomment value)? updateComment,
    TResult? Function(_FetchAllComments value)? fetchAllComments,
    TResult? Function(_FetchAllTasks value)? fetchAllTasks,
    TResult? Function(_SetPickedFileForComment value)? setPickedFileForComment,
    TResult? Function(_SyncData value)? syncData,
    TResult? Function(_SyncDataInServer value)? syncDataInServer,
    TResult? Function(_AddCurrentTimeStampToAllTasksLocally value)?
        addCurrentTimeStampToAllTasksLocally,
    TResult? Function(_UpdateCurrentHomeIndex value)? updateCurrentHomeIndex,
    TResult? Function(_ResetSelectItems value)? resetSelectItems,
    TResult? Function(_UpdateFocusedDate value)? updateFocusedDate,
    TResult? Function(_ResetMessage value)? resetMessage,
    TResult? Function(_UpdateSection value)? updateSection,
    TResult? Function(_UpdateTimer value)? updateTimer,
    TResult? Function(_UpdateTimerState value)? updateTimerState,
    TResult? Function(_UpdateTimerLocally value)? updateTimerLocally,
    TResult? Function(_UpdateTimerStateLocally value)? updateTimerStateLocally,
    TResult? Function(_CompleteTask value)? completeTask,
    TResult? Function(_ReopenTaskTask value)? reopenTask,
    TResult? Function(_StartTask value)? startTask,
    TResult? Function(_DeleteTask value)? deleteTask,
    TResult? Function(_DeleteAllTask value)? deleteAllTask,
    TResult? Function(_DeleteComment value)? deleteComment,
    TResult? Function(_SortByDateDescending value)? sortByDateDescending,
    TResult? Function(_SortByNameDescending value)? sortByNameDescending,
    TResult? Function(_SortByNameAscending value)? sortByNameAscending,
    TResult? Function(_SortByDateAscending value)? sortByDateAscending,
    TResult? Function(_SortByPriorityDescending value)?
        sortByPriorityDescending,
    TResult? Function(_SortByPriorityAscending value)? sortByPriorityAscending,
  }) {
    return updateTimerLocally?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateSelectedTaskTag value)? updateSelectedTaskTag,
    TResult Function(_RemoveSelectedTaskTag value)? removeSelectedTaskTag,
    TResult Function(_UpdateSelectedTaskPriority value)?
        updateSelectedTaskPriority,
    TResult Function(_UpdateSelectedTaskStatus value)? updateSelectedTaskStatus,
    TResult Function(_AddNewTask value)? addNewTask,
    TResult Function(_AddFullTask value)? updateFullTask,
    TResult Function(_AddNewComment value)? addNewComment,
    TResult Function(_Updateomment value)? updateComment,
    TResult Function(_FetchAllComments value)? fetchAllComments,
    TResult Function(_FetchAllTasks value)? fetchAllTasks,
    TResult Function(_SetPickedFileForComment value)? setPickedFileForComment,
    TResult Function(_SyncData value)? syncData,
    TResult Function(_SyncDataInServer value)? syncDataInServer,
    TResult Function(_AddCurrentTimeStampToAllTasksLocally value)?
        addCurrentTimeStampToAllTasksLocally,
    TResult Function(_UpdateCurrentHomeIndex value)? updateCurrentHomeIndex,
    TResult Function(_ResetSelectItems value)? resetSelectItems,
    TResult Function(_UpdateFocusedDate value)? updateFocusedDate,
    TResult Function(_ResetMessage value)? resetMessage,
    TResult Function(_UpdateSection value)? updateSection,
    TResult Function(_UpdateTimer value)? updateTimer,
    TResult Function(_UpdateTimerState value)? updateTimerState,
    TResult Function(_UpdateTimerLocally value)? updateTimerLocally,
    TResult Function(_UpdateTimerStateLocally value)? updateTimerStateLocally,
    TResult Function(_CompleteTask value)? completeTask,
    TResult Function(_ReopenTaskTask value)? reopenTask,
    TResult Function(_StartTask value)? startTask,
    TResult Function(_DeleteTask value)? deleteTask,
    TResult Function(_DeleteAllTask value)? deleteAllTask,
    TResult Function(_DeleteComment value)? deleteComment,
    TResult Function(_SortByDateDescending value)? sortByDateDescending,
    TResult Function(_SortByNameDescending value)? sortByNameDescending,
    TResult Function(_SortByNameAscending value)? sortByNameAscending,
    TResult Function(_SortByDateAscending value)? sortByDateAscending,
    TResult Function(_SortByPriorityDescending value)? sortByPriorityDescending,
    TResult Function(_SortByPriorityAscending value)? sortByPriorityAscending,
    required TResult orElse(),
  }) {
    if (updateTimerLocally != null) {
      return updateTimerLocally(this);
    }
    return orElse();
  }
}

abstract class _UpdateTimerLocally implements HomeEvent {
  const factory _UpdateTimerLocally(
      {required final String taskId,
      required final List<String> labels}) = _$UpdateTimerLocallyImpl;

  String get taskId;
  List<String> get labels;
  @JsonKey(ignore: true)
  _$$UpdateTimerLocallyImplCopyWith<_$UpdateTimerLocallyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateTimerStateLocallyImplCopyWith<$Res> {
  factory _$$UpdateTimerStateLocallyImplCopyWith(
          _$UpdateTimerStateLocallyImpl value,
          $Res Function(_$UpdateTimerStateLocallyImpl) then) =
      __$$UpdateTimerStateLocallyImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String taskId, List<String> labels});
}

/// @nodoc
class __$$UpdateTimerStateLocallyImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$UpdateTimerStateLocallyImpl>
    implements _$$UpdateTimerStateLocallyImplCopyWith<$Res> {
  __$$UpdateTimerStateLocallyImplCopyWithImpl(
      _$UpdateTimerStateLocallyImpl _value,
      $Res Function(_$UpdateTimerStateLocallyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? taskId = null,
    Object? labels = null,
  }) {
    return _then(_$UpdateTimerStateLocallyImpl(
      taskId: null == taskId
          ? _value.taskId
          : taskId // ignore: cast_nullable_to_non_nullable
              as String,
      labels: null == labels
          ? _value._labels
          : labels // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$UpdateTimerStateLocallyImpl implements _UpdateTimerStateLocally {
  const _$UpdateTimerStateLocallyImpl(
      {required this.taskId, required final List<String> labels})
      : _labels = labels;

  @override
  final String taskId;
  final List<String> _labels;
  @override
  List<String> get labels {
    if (_labels is EqualUnmodifiableListView) return _labels;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_labels);
  }

  @override
  String toString() {
    return 'HomeEvent.updateTimerStateLocally(taskId: $taskId, labels: $labels)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateTimerStateLocallyImpl &&
            (identical(other.taskId, taskId) || other.taskId == taskId) &&
            const DeepCollectionEquality().equals(other._labels, _labels));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, taskId, const DeepCollectionEquality().hash(_labels));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateTimerStateLocallyImplCopyWith<_$UpdateTimerStateLocallyImpl>
      get copyWith => __$$UpdateTimerStateLocallyImplCopyWithImpl<
          _$UpdateTimerStateLocallyImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TasksTags tasksTags) updateSelectedTaskTag,
    required TResult Function(int index) removeSelectedTaskTag,
    required TResult Function(TasksPriority taskPriority)
        updateSelectedTaskPriority,
    required TResult Function(TasksStatus tasksStatus) updateSelectedTaskStatus,
    required TResult Function(
            AppLocalizations appLocalization,
            String dueDate,
            String content,
            String description,
            void Function()? Function() onComplete)
        addNewTask,
    required TResult Function(
            AppLocalizations appLocalization,
            String dueDate,
            String content,
            String taskId,
            String description,
            void Function()? Function() onComplete)
        updateFullTask,
    required TResult Function(AppLocalizations appLocalization, String taskId,
            String content, void Function()? Function() onComplete)
        addNewComment,
    required TResult Function(
            AppLocalizations appLocalization,
            String taskId,
            String commentId,
            String content,
            void Function()? Function() onComplete)
        updateComment,
    required TResult Function(
            String taskId, bool isSyncing, InternetState internetState)
        fetchAllComments,
    required TResult Function(bool requiredReload, InternetState internetState)
        fetchAllTasks,
    required TResult Function(File? file) setPickedFileForComment,
    required TResult Function(BuildContext context) syncData,
    required TResult Function() syncDataInServer,
    required TResult Function(int savedTime)
        addCurrentTimeStampToAllTasksLocally,
    required TResult Function(int index) updateCurrentHomeIndex,
    required TResult Function() resetSelectItems,
    required TResult Function(DateTime focusedDate, InternetState internetState)
        updateFocusedDate,
    required TResult Function() resetMessage,
    required TResult Function(String taskId, String fromSectionId,
            String sectionId, List<String> labels)
        updateSection,
    required TResult Function(String taskId, List<String> labels) updateTimer,
    required TResult Function(String taskId, List<String> labels)
        updateTimerState,
    required TResult Function(String taskId, List<String> labels)
        updateTimerLocally,
    required TResult Function(String taskId, List<String> labels)
        updateTimerStateLocally,
    required TResult Function(String taskId, List<String> labels) completeTask,
    required TResult Function(String taskId, List<String> labels) reopenTask,
    required TResult Function(String taskId, List<String> labels) startTask,
    required TResult Function(String taskId) deleteTask,
    required TResult Function(AppLocalizations appLocalization) deleteAllTask,
    required TResult Function(String commentId, String taskId) deleteComment,
    required TResult Function(String id) sortByDateDescending,
    required TResult Function(String id) sortByNameDescending,
    required TResult Function(String id) sortByNameAscending,
    required TResult Function(String id) sortByDateAscending,
    required TResult Function(String id) sortByPriorityDescending,
    required TResult Function(String id) sortByPriorityAscending,
  }) {
    return updateTimerStateLocally(taskId, labels);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TasksTags tasksTags)? updateSelectedTaskTag,
    TResult? Function(int index)? removeSelectedTaskTag,
    TResult? Function(TasksPriority taskPriority)? updateSelectedTaskPriority,
    TResult? Function(TasksStatus tasksStatus)? updateSelectedTaskStatus,
    TResult? Function(
            AppLocalizations appLocalization,
            String dueDate,
            String content,
            String description,
            void Function()? Function() onComplete)?
        addNewTask,
    TResult? Function(
            AppLocalizations appLocalization,
            String dueDate,
            String content,
            String taskId,
            String description,
            void Function()? Function() onComplete)?
        updateFullTask,
    TResult? Function(AppLocalizations appLocalization, String taskId,
            String content, void Function()? Function() onComplete)?
        addNewComment,
    TResult? Function(
            AppLocalizations appLocalization,
            String taskId,
            String commentId,
            String content,
            void Function()? Function() onComplete)?
        updateComment,
    TResult? Function(
            String taskId, bool isSyncing, InternetState internetState)?
        fetchAllComments,
    TResult? Function(bool requiredReload, InternetState internetState)?
        fetchAllTasks,
    TResult? Function(File? file)? setPickedFileForComment,
    TResult? Function(BuildContext context)? syncData,
    TResult? Function()? syncDataInServer,
    TResult? Function(int savedTime)? addCurrentTimeStampToAllTasksLocally,
    TResult? Function(int index)? updateCurrentHomeIndex,
    TResult? Function()? resetSelectItems,
    TResult? Function(DateTime focusedDate, InternetState internetState)?
        updateFocusedDate,
    TResult? Function()? resetMessage,
    TResult? Function(String taskId, String fromSectionId, String sectionId,
            List<String> labels)?
        updateSection,
    TResult? Function(String taskId, List<String> labels)? updateTimer,
    TResult? Function(String taskId, List<String> labels)? updateTimerState,
    TResult? Function(String taskId, List<String> labels)? updateTimerLocally,
    TResult? Function(String taskId, List<String> labels)?
        updateTimerStateLocally,
    TResult? Function(String taskId, List<String> labels)? completeTask,
    TResult? Function(String taskId, List<String> labels)? reopenTask,
    TResult? Function(String taskId, List<String> labels)? startTask,
    TResult? Function(String taskId)? deleteTask,
    TResult? Function(AppLocalizations appLocalization)? deleteAllTask,
    TResult? Function(String commentId, String taskId)? deleteComment,
    TResult? Function(String id)? sortByDateDescending,
    TResult? Function(String id)? sortByNameDescending,
    TResult? Function(String id)? sortByNameAscending,
    TResult? Function(String id)? sortByDateAscending,
    TResult? Function(String id)? sortByPriorityDescending,
    TResult? Function(String id)? sortByPriorityAscending,
  }) {
    return updateTimerStateLocally?.call(taskId, labels);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TasksTags tasksTags)? updateSelectedTaskTag,
    TResult Function(int index)? removeSelectedTaskTag,
    TResult Function(TasksPriority taskPriority)? updateSelectedTaskPriority,
    TResult Function(TasksStatus tasksStatus)? updateSelectedTaskStatus,
    TResult Function(
            AppLocalizations appLocalization,
            String dueDate,
            String content,
            String description,
            void Function()? Function() onComplete)?
        addNewTask,
    TResult Function(
            AppLocalizations appLocalization,
            String dueDate,
            String content,
            String taskId,
            String description,
            void Function()? Function() onComplete)?
        updateFullTask,
    TResult Function(AppLocalizations appLocalization, String taskId,
            String content, void Function()? Function() onComplete)?
        addNewComment,
    TResult Function(
            AppLocalizations appLocalization,
            String taskId,
            String commentId,
            String content,
            void Function()? Function() onComplete)?
        updateComment,
    TResult Function(
            String taskId, bool isSyncing, InternetState internetState)?
        fetchAllComments,
    TResult Function(bool requiredReload, InternetState internetState)?
        fetchAllTasks,
    TResult Function(File? file)? setPickedFileForComment,
    TResult Function(BuildContext context)? syncData,
    TResult Function()? syncDataInServer,
    TResult Function(int savedTime)? addCurrentTimeStampToAllTasksLocally,
    TResult Function(int index)? updateCurrentHomeIndex,
    TResult Function()? resetSelectItems,
    TResult Function(DateTime focusedDate, InternetState internetState)?
        updateFocusedDate,
    TResult Function()? resetMessage,
    TResult Function(String taskId, String fromSectionId, String sectionId,
            List<String> labels)?
        updateSection,
    TResult Function(String taskId, List<String> labels)? updateTimer,
    TResult Function(String taskId, List<String> labels)? updateTimerState,
    TResult Function(String taskId, List<String> labels)? updateTimerLocally,
    TResult Function(String taskId, List<String> labels)?
        updateTimerStateLocally,
    TResult Function(String taskId, List<String> labels)? completeTask,
    TResult Function(String taskId, List<String> labels)? reopenTask,
    TResult Function(String taskId, List<String> labels)? startTask,
    TResult Function(String taskId)? deleteTask,
    TResult Function(AppLocalizations appLocalization)? deleteAllTask,
    TResult Function(String commentId, String taskId)? deleteComment,
    TResult Function(String id)? sortByDateDescending,
    TResult Function(String id)? sortByNameDescending,
    TResult Function(String id)? sortByNameAscending,
    TResult Function(String id)? sortByDateAscending,
    TResult Function(String id)? sortByPriorityDescending,
    TResult Function(String id)? sortByPriorityAscending,
    required TResult orElse(),
  }) {
    if (updateTimerStateLocally != null) {
      return updateTimerStateLocally(taskId, labels);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateSelectedTaskTag value)
        updateSelectedTaskTag,
    required TResult Function(_RemoveSelectedTaskTag value)
        removeSelectedTaskTag,
    required TResult Function(_UpdateSelectedTaskPriority value)
        updateSelectedTaskPriority,
    required TResult Function(_UpdateSelectedTaskStatus value)
        updateSelectedTaskStatus,
    required TResult Function(_AddNewTask value) addNewTask,
    required TResult Function(_AddFullTask value) updateFullTask,
    required TResult Function(_AddNewComment value) addNewComment,
    required TResult Function(_Updateomment value) updateComment,
    required TResult Function(_FetchAllComments value) fetchAllComments,
    required TResult Function(_FetchAllTasks value) fetchAllTasks,
    required TResult Function(_SetPickedFileForComment value)
        setPickedFileForComment,
    required TResult Function(_SyncData value) syncData,
    required TResult Function(_SyncDataInServer value) syncDataInServer,
    required TResult Function(_AddCurrentTimeStampToAllTasksLocally value)
        addCurrentTimeStampToAllTasksLocally,
    required TResult Function(_UpdateCurrentHomeIndex value)
        updateCurrentHomeIndex,
    required TResult Function(_ResetSelectItems value) resetSelectItems,
    required TResult Function(_UpdateFocusedDate value) updateFocusedDate,
    required TResult Function(_ResetMessage value) resetMessage,
    required TResult Function(_UpdateSection value) updateSection,
    required TResult Function(_UpdateTimer value) updateTimer,
    required TResult Function(_UpdateTimerState value) updateTimerState,
    required TResult Function(_UpdateTimerLocally value) updateTimerLocally,
    required TResult Function(_UpdateTimerStateLocally value)
        updateTimerStateLocally,
    required TResult Function(_CompleteTask value) completeTask,
    required TResult Function(_ReopenTaskTask value) reopenTask,
    required TResult Function(_StartTask value) startTask,
    required TResult Function(_DeleteTask value) deleteTask,
    required TResult Function(_DeleteAllTask value) deleteAllTask,
    required TResult Function(_DeleteComment value) deleteComment,
    required TResult Function(_SortByDateDescending value) sortByDateDescending,
    required TResult Function(_SortByNameDescending value) sortByNameDescending,
    required TResult Function(_SortByNameAscending value) sortByNameAscending,
    required TResult Function(_SortByDateAscending value) sortByDateAscending,
    required TResult Function(_SortByPriorityDescending value)
        sortByPriorityDescending,
    required TResult Function(_SortByPriorityAscending value)
        sortByPriorityAscending,
  }) {
    return updateTimerStateLocally(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateSelectedTaskTag value)? updateSelectedTaskTag,
    TResult? Function(_RemoveSelectedTaskTag value)? removeSelectedTaskTag,
    TResult? Function(_UpdateSelectedTaskPriority value)?
        updateSelectedTaskPriority,
    TResult? Function(_UpdateSelectedTaskStatus value)?
        updateSelectedTaskStatus,
    TResult? Function(_AddNewTask value)? addNewTask,
    TResult? Function(_AddFullTask value)? updateFullTask,
    TResult? Function(_AddNewComment value)? addNewComment,
    TResult? Function(_Updateomment value)? updateComment,
    TResult? Function(_FetchAllComments value)? fetchAllComments,
    TResult? Function(_FetchAllTasks value)? fetchAllTasks,
    TResult? Function(_SetPickedFileForComment value)? setPickedFileForComment,
    TResult? Function(_SyncData value)? syncData,
    TResult? Function(_SyncDataInServer value)? syncDataInServer,
    TResult? Function(_AddCurrentTimeStampToAllTasksLocally value)?
        addCurrentTimeStampToAllTasksLocally,
    TResult? Function(_UpdateCurrentHomeIndex value)? updateCurrentHomeIndex,
    TResult? Function(_ResetSelectItems value)? resetSelectItems,
    TResult? Function(_UpdateFocusedDate value)? updateFocusedDate,
    TResult? Function(_ResetMessage value)? resetMessage,
    TResult? Function(_UpdateSection value)? updateSection,
    TResult? Function(_UpdateTimer value)? updateTimer,
    TResult? Function(_UpdateTimerState value)? updateTimerState,
    TResult? Function(_UpdateTimerLocally value)? updateTimerLocally,
    TResult? Function(_UpdateTimerStateLocally value)? updateTimerStateLocally,
    TResult? Function(_CompleteTask value)? completeTask,
    TResult? Function(_ReopenTaskTask value)? reopenTask,
    TResult? Function(_StartTask value)? startTask,
    TResult? Function(_DeleteTask value)? deleteTask,
    TResult? Function(_DeleteAllTask value)? deleteAllTask,
    TResult? Function(_DeleteComment value)? deleteComment,
    TResult? Function(_SortByDateDescending value)? sortByDateDescending,
    TResult? Function(_SortByNameDescending value)? sortByNameDescending,
    TResult? Function(_SortByNameAscending value)? sortByNameAscending,
    TResult? Function(_SortByDateAscending value)? sortByDateAscending,
    TResult? Function(_SortByPriorityDescending value)?
        sortByPriorityDescending,
    TResult? Function(_SortByPriorityAscending value)? sortByPriorityAscending,
  }) {
    return updateTimerStateLocally?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateSelectedTaskTag value)? updateSelectedTaskTag,
    TResult Function(_RemoveSelectedTaskTag value)? removeSelectedTaskTag,
    TResult Function(_UpdateSelectedTaskPriority value)?
        updateSelectedTaskPriority,
    TResult Function(_UpdateSelectedTaskStatus value)? updateSelectedTaskStatus,
    TResult Function(_AddNewTask value)? addNewTask,
    TResult Function(_AddFullTask value)? updateFullTask,
    TResult Function(_AddNewComment value)? addNewComment,
    TResult Function(_Updateomment value)? updateComment,
    TResult Function(_FetchAllComments value)? fetchAllComments,
    TResult Function(_FetchAllTasks value)? fetchAllTasks,
    TResult Function(_SetPickedFileForComment value)? setPickedFileForComment,
    TResult Function(_SyncData value)? syncData,
    TResult Function(_SyncDataInServer value)? syncDataInServer,
    TResult Function(_AddCurrentTimeStampToAllTasksLocally value)?
        addCurrentTimeStampToAllTasksLocally,
    TResult Function(_UpdateCurrentHomeIndex value)? updateCurrentHomeIndex,
    TResult Function(_ResetSelectItems value)? resetSelectItems,
    TResult Function(_UpdateFocusedDate value)? updateFocusedDate,
    TResult Function(_ResetMessage value)? resetMessage,
    TResult Function(_UpdateSection value)? updateSection,
    TResult Function(_UpdateTimer value)? updateTimer,
    TResult Function(_UpdateTimerState value)? updateTimerState,
    TResult Function(_UpdateTimerLocally value)? updateTimerLocally,
    TResult Function(_UpdateTimerStateLocally value)? updateTimerStateLocally,
    TResult Function(_CompleteTask value)? completeTask,
    TResult Function(_ReopenTaskTask value)? reopenTask,
    TResult Function(_StartTask value)? startTask,
    TResult Function(_DeleteTask value)? deleteTask,
    TResult Function(_DeleteAllTask value)? deleteAllTask,
    TResult Function(_DeleteComment value)? deleteComment,
    TResult Function(_SortByDateDescending value)? sortByDateDescending,
    TResult Function(_SortByNameDescending value)? sortByNameDescending,
    TResult Function(_SortByNameAscending value)? sortByNameAscending,
    TResult Function(_SortByDateAscending value)? sortByDateAscending,
    TResult Function(_SortByPriorityDescending value)? sortByPriorityDescending,
    TResult Function(_SortByPriorityAscending value)? sortByPriorityAscending,
    required TResult orElse(),
  }) {
    if (updateTimerStateLocally != null) {
      return updateTimerStateLocally(this);
    }
    return orElse();
  }
}

abstract class _UpdateTimerStateLocally implements HomeEvent {
  const factory _UpdateTimerStateLocally(
      {required final String taskId,
      required final List<String> labels}) = _$UpdateTimerStateLocallyImpl;

  String get taskId;
  List<String> get labels;
  @JsonKey(ignore: true)
  _$$UpdateTimerStateLocallyImplCopyWith<_$UpdateTimerStateLocallyImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CompleteTaskImplCopyWith<$Res> {
  factory _$$CompleteTaskImplCopyWith(
          _$CompleteTaskImpl value, $Res Function(_$CompleteTaskImpl) then) =
      __$$CompleteTaskImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String taskId, List<String> labels});
}

/// @nodoc
class __$$CompleteTaskImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$CompleteTaskImpl>
    implements _$$CompleteTaskImplCopyWith<$Res> {
  __$$CompleteTaskImplCopyWithImpl(
      _$CompleteTaskImpl _value, $Res Function(_$CompleteTaskImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? taskId = null,
    Object? labels = null,
  }) {
    return _then(_$CompleteTaskImpl(
      taskId: null == taskId
          ? _value.taskId
          : taskId // ignore: cast_nullable_to_non_nullable
              as String,
      labels: null == labels
          ? _value._labels
          : labels // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$CompleteTaskImpl implements _CompleteTask {
  const _$CompleteTaskImpl(
      {required this.taskId, required final List<String> labels})
      : _labels = labels;

  @override
  final String taskId;
  final List<String> _labels;
  @override
  List<String> get labels {
    if (_labels is EqualUnmodifiableListView) return _labels;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_labels);
  }

  @override
  String toString() {
    return 'HomeEvent.completeTask(taskId: $taskId, labels: $labels)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CompleteTaskImpl &&
            (identical(other.taskId, taskId) || other.taskId == taskId) &&
            const DeepCollectionEquality().equals(other._labels, _labels));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, taskId, const DeepCollectionEquality().hash(_labels));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CompleteTaskImplCopyWith<_$CompleteTaskImpl> get copyWith =>
      __$$CompleteTaskImplCopyWithImpl<_$CompleteTaskImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TasksTags tasksTags) updateSelectedTaskTag,
    required TResult Function(int index) removeSelectedTaskTag,
    required TResult Function(TasksPriority taskPriority)
        updateSelectedTaskPriority,
    required TResult Function(TasksStatus tasksStatus) updateSelectedTaskStatus,
    required TResult Function(
            AppLocalizations appLocalization,
            String dueDate,
            String content,
            String description,
            void Function()? Function() onComplete)
        addNewTask,
    required TResult Function(
            AppLocalizations appLocalization,
            String dueDate,
            String content,
            String taskId,
            String description,
            void Function()? Function() onComplete)
        updateFullTask,
    required TResult Function(AppLocalizations appLocalization, String taskId,
            String content, void Function()? Function() onComplete)
        addNewComment,
    required TResult Function(
            AppLocalizations appLocalization,
            String taskId,
            String commentId,
            String content,
            void Function()? Function() onComplete)
        updateComment,
    required TResult Function(
            String taskId, bool isSyncing, InternetState internetState)
        fetchAllComments,
    required TResult Function(bool requiredReload, InternetState internetState)
        fetchAllTasks,
    required TResult Function(File? file) setPickedFileForComment,
    required TResult Function(BuildContext context) syncData,
    required TResult Function() syncDataInServer,
    required TResult Function(int savedTime)
        addCurrentTimeStampToAllTasksLocally,
    required TResult Function(int index) updateCurrentHomeIndex,
    required TResult Function() resetSelectItems,
    required TResult Function(DateTime focusedDate, InternetState internetState)
        updateFocusedDate,
    required TResult Function() resetMessage,
    required TResult Function(String taskId, String fromSectionId,
            String sectionId, List<String> labels)
        updateSection,
    required TResult Function(String taskId, List<String> labels) updateTimer,
    required TResult Function(String taskId, List<String> labels)
        updateTimerState,
    required TResult Function(String taskId, List<String> labels)
        updateTimerLocally,
    required TResult Function(String taskId, List<String> labels)
        updateTimerStateLocally,
    required TResult Function(String taskId, List<String> labels) completeTask,
    required TResult Function(String taskId, List<String> labels) reopenTask,
    required TResult Function(String taskId, List<String> labels) startTask,
    required TResult Function(String taskId) deleteTask,
    required TResult Function(AppLocalizations appLocalization) deleteAllTask,
    required TResult Function(String commentId, String taskId) deleteComment,
    required TResult Function(String id) sortByDateDescending,
    required TResult Function(String id) sortByNameDescending,
    required TResult Function(String id) sortByNameAscending,
    required TResult Function(String id) sortByDateAscending,
    required TResult Function(String id) sortByPriorityDescending,
    required TResult Function(String id) sortByPriorityAscending,
  }) {
    return completeTask(taskId, labels);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TasksTags tasksTags)? updateSelectedTaskTag,
    TResult? Function(int index)? removeSelectedTaskTag,
    TResult? Function(TasksPriority taskPriority)? updateSelectedTaskPriority,
    TResult? Function(TasksStatus tasksStatus)? updateSelectedTaskStatus,
    TResult? Function(
            AppLocalizations appLocalization,
            String dueDate,
            String content,
            String description,
            void Function()? Function() onComplete)?
        addNewTask,
    TResult? Function(
            AppLocalizations appLocalization,
            String dueDate,
            String content,
            String taskId,
            String description,
            void Function()? Function() onComplete)?
        updateFullTask,
    TResult? Function(AppLocalizations appLocalization, String taskId,
            String content, void Function()? Function() onComplete)?
        addNewComment,
    TResult? Function(
            AppLocalizations appLocalization,
            String taskId,
            String commentId,
            String content,
            void Function()? Function() onComplete)?
        updateComment,
    TResult? Function(
            String taskId, bool isSyncing, InternetState internetState)?
        fetchAllComments,
    TResult? Function(bool requiredReload, InternetState internetState)?
        fetchAllTasks,
    TResult? Function(File? file)? setPickedFileForComment,
    TResult? Function(BuildContext context)? syncData,
    TResult? Function()? syncDataInServer,
    TResult? Function(int savedTime)? addCurrentTimeStampToAllTasksLocally,
    TResult? Function(int index)? updateCurrentHomeIndex,
    TResult? Function()? resetSelectItems,
    TResult? Function(DateTime focusedDate, InternetState internetState)?
        updateFocusedDate,
    TResult? Function()? resetMessage,
    TResult? Function(String taskId, String fromSectionId, String sectionId,
            List<String> labels)?
        updateSection,
    TResult? Function(String taskId, List<String> labels)? updateTimer,
    TResult? Function(String taskId, List<String> labels)? updateTimerState,
    TResult? Function(String taskId, List<String> labels)? updateTimerLocally,
    TResult? Function(String taskId, List<String> labels)?
        updateTimerStateLocally,
    TResult? Function(String taskId, List<String> labels)? completeTask,
    TResult? Function(String taskId, List<String> labels)? reopenTask,
    TResult? Function(String taskId, List<String> labels)? startTask,
    TResult? Function(String taskId)? deleteTask,
    TResult? Function(AppLocalizations appLocalization)? deleteAllTask,
    TResult? Function(String commentId, String taskId)? deleteComment,
    TResult? Function(String id)? sortByDateDescending,
    TResult? Function(String id)? sortByNameDescending,
    TResult? Function(String id)? sortByNameAscending,
    TResult? Function(String id)? sortByDateAscending,
    TResult? Function(String id)? sortByPriorityDescending,
    TResult? Function(String id)? sortByPriorityAscending,
  }) {
    return completeTask?.call(taskId, labels);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TasksTags tasksTags)? updateSelectedTaskTag,
    TResult Function(int index)? removeSelectedTaskTag,
    TResult Function(TasksPriority taskPriority)? updateSelectedTaskPriority,
    TResult Function(TasksStatus tasksStatus)? updateSelectedTaskStatus,
    TResult Function(
            AppLocalizations appLocalization,
            String dueDate,
            String content,
            String description,
            void Function()? Function() onComplete)?
        addNewTask,
    TResult Function(
            AppLocalizations appLocalization,
            String dueDate,
            String content,
            String taskId,
            String description,
            void Function()? Function() onComplete)?
        updateFullTask,
    TResult Function(AppLocalizations appLocalization, String taskId,
            String content, void Function()? Function() onComplete)?
        addNewComment,
    TResult Function(
            AppLocalizations appLocalization,
            String taskId,
            String commentId,
            String content,
            void Function()? Function() onComplete)?
        updateComment,
    TResult Function(
            String taskId, bool isSyncing, InternetState internetState)?
        fetchAllComments,
    TResult Function(bool requiredReload, InternetState internetState)?
        fetchAllTasks,
    TResult Function(File? file)? setPickedFileForComment,
    TResult Function(BuildContext context)? syncData,
    TResult Function()? syncDataInServer,
    TResult Function(int savedTime)? addCurrentTimeStampToAllTasksLocally,
    TResult Function(int index)? updateCurrentHomeIndex,
    TResult Function()? resetSelectItems,
    TResult Function(DateTime focusedDate, InternetState internetState)?
        updateFocusedDate,
    TResult Function()? resetMessage,
    TResult Function(String taskId, String fromSectionId, String sectionId,
            List<String> labels)?
        updateSection,
    TResult Function(String taskId, List<String> labels)? updateTimer,
    TResult Function(String taskId, List<String> labels)? updateTimerState,
    TResult Function(String taskId, List<String> labels)? updateTimerLocally,
    TResult Function(String taskId, List<String> labels)?
        updateTimerStateLocally,
    TResult Function(String taskId, List<String> labels)? completeTask,
    TResult Function(String taskId, List<String> labels)? reopenTask,
    TResult Function(String taskId, List<String> labels)? startTask,
    TResult Function(String taskId)? deleteTask,
    TResult Function(AppLocalizations appLocalization)? deleteAllTask,
    TResult Function(String commentId, String taskId)? deleteComment,
    TResult Function(String id)? sortByDateDescending,
    TResult Function(String id)? sortByNameDescending,
    TResult Function(String id)? sortByNameAscending,
    TResult Function(String id)? sortByDateAscending,
    TResult Function(String id)? sortByPriorityDescending,
    TResult Function(String id)? sortByPriorityAscending,
    required TResult orElse(),
  }) {
    if (completeTask != null) {
      return completeTask(taskId, labels);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateSelectedTaskTag value)
        updateSelectedTaskTag,
    required TResult Function(_RemoveSelectedTaskTag value)
        removeSelectedTaskTag,
    required TResult Function(_UpdateSelectedTaskPriority value)
        updateSelectedTaskPriority,
    required TResult Function(_UpdateSelectedTaskStatus value)
        updateSelectedTaskStatus,
    required TResult Function(_AddNewTask value) addNewTask,
    required TResult Function(_AddFullTask value) updateFullTask,
    required TResult Function(_AddNewComment value) addNewComment,
    required TResult Function(_Updateomment value) updateComment,
    required TResult Function(_FetchAllComments value) fetchAllComments,
    required TResult Function(_FetchAllTasks value) fetchAllTasks,
    required TResult Function(_SetPickedFileForComment value)
        setPickedFileForComment,
    required TResult Function(_SyncData value) syncData,
    required TResult Function(_SyncDataInServer value) syncDataInServer,
    required TResult Function(_AddCurrentTimeStampToAllTasksLocally value)
        addCurrentTimeStampToAllTasksLocally,
    required TResult Function(_UpdateCurrentHomeIndex value)
        updateCurrentHomeIndex,
    required TResult Function(_ResetSelectItems value) resetSelectItems,
    required TResult Function(_UpdateFocusedDate value) updateFocusedDate,
    required TResult Function(_ResetMessage value) resetMessage,
    required TResult Function(_UpdateSection value) updateSection,
    required TResult Function(_UpdateTimer value) updateTimer,
    required TResult Function(_UpdateTimerState value) updateTimerState,
    required TResult Function(_UpdateTimerLocally value) updateTimerLocally,
    required TResult Function(_UpdateTimerStateLocally value)
        updateTimerStateLocally,
    required TResult Function(_CompleteTask value) completeTask,
    required TResult Function(_ReopenTaskTask value) reopenTask,
    required TResult Function(_StartTask value) startTask,
    required TResult Function(_DeleteTask value) deleteTask,
    required TResult Function(_DeleteAllTask value) deleteAllTask,
    required TResult Function(_DeleteComment value) deleteComment,
    required TResult Function(_SortByDateDescending value) sortByDateDescending,
    required TResult Function(_SortByNameDescending value) sortByNameDescending,
    required TResult Function(_SortByNameAscending value) sortByNameAscending,
    required TResult Function(_SortByDateAscending value) sortByDateAscending,
    required TResult Function(_SortByPriorityDescending value)
        sortByPriorityDescending,
    required TResult Function(_SortByPriorityAscending value)
        sortByPriorityAscending,
  }) {
    return completeTask(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateSelectedTaskTag value)? updateSelectedTaskTag,
    TResult? Function(_RemoveSelectedTaskTag value)? removeSelectedTaskTag,
    TResult? Function(_UpdateSelectedTaskPriority value)?
        updateSelectedTaskPriority,
    TResult? Function(_UpdateSelectedTaskStatus value)?
        updateSelectedTaskStatus,
    TResult? Function(_AddNewTask value)? addNewTask,
    TResult? Function(_AddFullTask value)? updateFullTask,
    TResult? Function(_AddNewComment value)? addNewComment,
    TResult? Function(_Updateomment value)? updateComment,
    TResult? Function(_FetchAllComments value)? fetchAllComments,
    TResult? Function(_FetchAllTasks value)? fetchAllTasks,
    TResult? Function(_SetPickedFileForComment value)? setPickedFileForComment,
    TResult? Function(_SyncData value)? syncData,
    TResult? Function(_SyncDataInServer value)? syncDataInServer,
    TResult? Function(_AddCurrentTimeStampToAllTasksLocally value)?
        addCurrentTimeStampToAllTasksLocally,
    TResult? Function(_UpdateCurrentHomeIndex value)? updateCurrentHomeIndex,
    TResult? Function(_ResetSelectItems value)? resetSelectItems,
    TResult? Function(_UpdateFocusedDate value)? updateFocusedDate,
    TResult? Function(_ResetMessage value)? resetMessage,
    TResult? Function(_UpdateSection value)? updateSection,
    TResult? Function(_UpdateTimer value)? updateTimer,
    TResult? Function(_UpdateTimerState value)? updateTimerState,
    TResult? Function(_UpdateTimerLocally value)? updateTimerLocally,
    TResult? Function(_UpdateTimerStateLocally value)? updateTimerStateLocally,
    TResult? Function(_CompleteTask value)? completeTask,
    TResult? Function(_ReopenTaskTask value)? reopenTask,
    TResult? Function(_StartTask value)? startTask,
    TResult? Function(_DeleteTask value)? deleteTask,
    TResult? Function(_DeleteAllTask value)? deleteAllTask,
    TResult? Function(_DeleteComment value)? deleteComment,
    TResult? Function(_SortByDateDescending value)? sortByDateDescending,
    TResult? Function(_SortByNameDescending value)? sortByNameDescending,
    TResult? Function(_SortByNameAscending value)? sortByNameAscending,
    TResult? Function(_SortByDateAscending value)? sortByDateAscending,
    TResult? Function(_SortByPriorityDescending value)?
        sortByPriorityDescending,
    TResult? Function(_SortByPriorityAscending value)? sortByPriorityAscending,
  }) {
    return completeTask?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateSelectedTaskTag value)? updateSelectedTaskTag,
    TResult Function(_RemoveSelectedTaskTag value)? removeSelectedTaskTag,
    TResult Function(_UpdateSelectedTaskPriority value)?
        updateSelectedTaskPriority,
    TResult Function(_UpdateSelectedTaskStatus value)? updateSelectedTaskStatus,
    TResult Function(_AddNewTask value)? addNewTask,
    TResult Function(_AddFullTask value)? updateFullTask,
    TResult Function(_AddNewComment value)? addNewComment,
    TResult Function(_Updateomment value)? updateComment,
    TResult Function(_FetchAllComments value)? fetchAllComments,
    TResult Function(_FetchAllTasks value)? fetchAllTasks,
    TResult Function(_SetPickedFileForComment value)? setPickedFileForComment,
    TResult Function(_SyncData value)? syncData,
    TResult Function(_SyncDataInServer value)? syncDataInServer,
    TResult Function(_AddCurrentTimeStampToAllTasksLocally value)?
        addCurrentTimeStampToAllTasksLocally,
    TResult Function(_UpdateCurrentHomeIndex value)? updateCurrentHomeIndex,
    TResult Function(_ResetSelectItems value)? resetSelectItems,
    TResult Function(_UpdateFocusedDate value)? updateFocusedDate,
    TResult Function(_ResetMessage value)? resetMessage,
    TResult Function(_UpdateSection value)? updateSection,
    TResult Function(_UpdateTimer value)? updateTimer,
    TResult Function(_UpdateTimerState value)? updateTimerState,
    TResult Function(_UpdateTimerLocally value)? updateTimerLocally,
    TResult Function(_UpdateTimerStateLocally value)? updateTimerStateLocally,
    TResult Function(_CompleteTask value)? completeTask,
    TResult Function(_ReopenTaskTask value)? reopenTask,
    TResult Function(_StartTask value)? startTask,
    TResult Function(_DeleteTask value)? deleteTask,
    TResult Function(_DeleteAllTask value)? deleteAllTask,
    TResult Function(_DeleteComment value)? deleteComment,
    TResult Function(_SortByDateDescending value)? sortByDateDescending,
    TResult Function(_SortByNameDescending value)? sortByNameDescending,
    TResult Function(_SortByNameAscending value)? sortByNameAscending,
    TResult Function(_SortByDateAscending value)? sortByDateAscending,
    TResult Function(_SortByPriorityDescending value)? sortByPriorityDescending,
    TResult Function(_SortByPriorityAscending value)? sortByPriorityAscending,
    required TResult orElse(),
  }) {
    if (completeTask != null) {
      return completeTask(this);
    }
    return orElse();
  }
}

abstract class _CompleteTask implements HomeEvent {
  const factory _CompleteTask(
      {required final String taskId,
      required final List<String> labels}) = _$CompleteTaskImpl;

  String get taskId;
  List<String> get labels;
  @JsonKey(ignore: true)
  _$$CompleteTaskImplCopyWith<_$CompleteTaskImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ReopenTaskTaskImplCopyWith<$Res> {
  factory _$$ReopenTaskTaskImplCopyWith(_$ReopenTaskTaskImpl value,
          $Res Function(_$ReopenTaskTaskImpl) then) =
      __$$ReopenTaskTaskImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String taskId, List<String> labels});
}

/// @nodoc
class __$$ReopenTaskTaskImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$ReopenTaskTaskImpl>
    implements _$$ReopenTaskTaskImplCopyWith<$Res> {
  __$$ReopenTaskTaskImplCopyWithImpl(
      _$ReopenTaskTaskImpl _value, $Res Function(_$ReopenTaskTaskImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? taskId = null,
    Object? labels = null,
  }) {
    return _then(_$ReopenTaskTaskImpl(
      taskId: null == taskId
          ? _value.taskId
          : taskId // ignore: cast_nullable_to_non_nullable
              as String,
      labels: null == labels
          ? _value._labels
          : labels // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$ReopenTaskTaskImpl implements _ReopenTaskTask {
  const _$ReopenTaskTaskImpl(
      {required this.taskId, required final List<String> labels})
      : _labels = labels;

  @override
  final String taskId;
  final List<String> _labels;
  @override
  List<String> get labels {
    if (_labels is EqualUnmodifiableListView) return _labels;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_labels);
  }

  @override
  String toString() {
    return 'HomeEvent.reopenTask(taskId: $taskId, labels: $labels)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReopenTaskTaskImpl &&
            (identical(other.taskId, taskId) || other.taskId == taskId) &&
            const DeepCollectionEquality().equals(other._labels, _labels));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, taskId, const DeepCollectionEquality().hash(_labels));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReopenTaskTaskImplCopyWith<_$ReopenTaskTaskImpl> get copyWith =>
      __$$ReopenTaskTaskImplCopyWithImpl<_$ReopenTaskTaskImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TasksTags tasksTags) updateSelectedTaskTag,
    required TResult Function(int index) removeSelectedTaskTag,
    required TResult Function(TasksPriority taskPriority)
        updateSelectedTaskPriority,
    required TResult Function(TasksStatus tasksStatus) updateSelectedTaskStatus,
    required TResult Function(
            AppLocalizations appLocalization,
            String dueDate,
            String content,
            String description,
            void Function()? Function() onComplete)
        addNewTask,
    required TResult Function(
            AppLocalizations appLocalization,
            String dueDate,
            String content,
            String taskId,
            String description,
            void Function()? Function() onComplete)
        updateFullTask,
    required TResult Function(AppLocalizations appLocalization, String taskId,
            String content, void Function()? Function() onComplete)
        addNewComment,
    required TResult Function(
            AppLocalizations appLocalization,
            String taskId,
            String commentId,
            String content,
            void Function()? Function() onComplete)
        updateComment,
    required TResult Function(
            String taskId, bool isSyncing, InternetState internetState)
        fetchAllComments,
    required TResult Function(bool requiredReload, InternetState internetState)
        fetchAllTasks,
    required TResult Function(File? file) setPickedFileForComment,
    required TResult Function(BuildContext context) syncData,
    required TResult Function() syncDataInServer,
    required TResult Function(int savedTime)
        addCurrentTimeStampToAllTasksLocally,
    required TResult Function(int index) updateCurrentHomeIndex,
    required TResult Function() resetSelectItems,
    required TResult Function(DateTime focusedDate, InternetState internetState)
        updateFocusedDate,
    required TResult Function() resetMessage,
    required TResult Function(String taskId, String fromSectionId,
            String sectionId, List<String> labels)
        updateSection,
    required TResult Function(String taskId, List<String> labels) updateTimer,
    required TResult Function(String taskId, List<String> labels)
        updateTimerState,
    required TResult Function(String taskId, List<String> labels)
        updateTimerLocally,
    required TResult Function(String taskId, List<String> labels)
        updateTimerStateLocally,
    required TResult Function(String taskId, List<String> labels) completeTask,
    required TResult Function(String taskId, List<String> labels) reopenTask,
    required TResult Function(String taskId, List<String> labels) startTask,
    required TResult Function(String taskId) deleteTask,
    required TResult Function(AppLocalizations appLocalization) deleteAllTask,
    required TResult Function(String commentId, String taskId) deleteComment,
    required TResult Function(String id) sortByDateDescending,
    required TResult Function(String id) sortByNameDescending,
    required TResult Function(String id) sortByNameAscending,
    required TResult Function(String id) sortByDateAscending,
    required TResult Function(String id) sortByPriorityDescending,
    required TResult Function(String id) sortByPriorityAscending,
  }) {
    return reopenTask(taskId, labels);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TasksTags tasksTags)? updateSelectedTaskTag,
    TResult? Function(int index)? removeSelectedTaskTag,
    TResult? Function(TasksPriority taskPriority)? updateSelectedTaskPriority,
    TResult? Function(TasksStatus tasksStatus)? updateSelectedTaskStatus,
    TResult? Function(
            AppLocalizations appLocalization,
            String dueDate,
            String content,
            String description,
            void Function()? Function() onComplete)?
        addNewTask,
    TResult? Function(
            AppLocalizations appLocalization,
            String dueDate,
            String content,
            String taskId,
            String description,
            void Function()? Function() onComplete)?
        updateFullTask,
    TResult? Function(AppLocalizations appLocalization, String taskId,
            String content, void Function()? Function() onComplete)?
        addNewComment,
    TResult? Function(
            AppLocalizations appLocalization,
            String taskId,
            String commentId,
            String content,
            void Function()? Function() onComplete)?
        updateComment,
    TResult? Function(
            String taskId, bool isSyncing, InternetState internetState)?
        fetchAllComments,
    TResult? Function(bool requiredReload, InternetState internetState)?
        fetchAllTasks,
    TResult? Function(File? file)? setPickedFileForComment,
    TResult? Function(BuildContext context)? syncData,
    TResult? Function()? syncDataInServer,
    TResult? Function(int savedTime)? addCurrentTimeStampToAllTasksLocally,
    TResult? Function(int index)? updateCurrentHomeIndex,
    TResult? Function()? resetSelectItems,
    TResult? Function(DateTime focusedDate, InternetState internetState)?
        updateFocusedDate,
    TResult? Function()? resetMessage,
    TResult? Function(String taskId, String fromSectionId, String sectionId,
            List<String> labels)?
        updateSection,
    TResult? Function(String taskId, List<String> labels)? updateTimer,
    TResult? Function(String taskId, List<String> labels)? updateTimerState,
    TResult? Function(String taskId, List<String> labels)? updateTimerLocally,
    TResult? Function(String taskId, List<String> labels)?
        updateTimerStateLocally,
    TResult? Function(String taskId, List<String> labels)? completeTask,
    TResult? Function(String taskId, List<String> labels)? reopenTask,
    TResult? Function(String taskId, List<String> labels)? startTask,
    TResult? Function(String taskId)? deleteTask,
    TResult? Function(AppLocalizations appLocalization)? deleteAllTask,
    TResult? Function(String commentId, String taskId)? deleteComment,
    TResult? Function(String id)? sortByDateDescending,
    TResult? Function(String id)? sortByNameDescending,
    TResult? Function(String id)? sortByNameAscending,
    TResult? Function(String id)? sortByDateAscending,
    TResult? Function(String id)? sortByPriorityDescending,
    TResult? Function(String id)? sortByPriorityAscending,
  }) {
    return reopenTask?.call(taskId, labels);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TasksTags tasksTags)? updateSelectedTaskTag,
    TResult Function(int index)? removeSelectedTaskTag,
    TResult Function(TasksPriority taskPriority)? updateSelectedTaskPriority,
    TResult Function(TasksStatus tasksStatus)? updateSelectedTaskStatus,
    TResult Function(
            AppLocalizations appLocalization,
            String dueDate,
            String content,
            String description,
            void Function()? Function() onComplete)?
        addNewTask,
    TResult Function(
            AppLocalizations appLocalization,
            String dueDate,
            String content,
            String taskId,
            String description,
            void Function()? Function() onComplete)?
        updateFullTask,
    TResult Function(AppLocalizations appLocalization, String taskId,
            String content, void Function()? Function() onComplete)?
        addNewComment,
    TResult Function(
            AppLocalizations appLocalization,
            String taskId,
            String commentId,
            String content,
            void Function()? Function() onComplete)?
        updateComment,
    TResult Function(
            String taskId, bool isSyncing, InternetState internetState)?
        fetchAllComments,
    TResult Function(bool requiredReload, InternetState internetState)?
        fetchAllTasks,
    TResult Function(File? file)? setPickedFileForComment,
    TResult Function(BuildContext context)? syncData,
    TResult Function()? syncDataInServer,
    TResult Function(int savedTime)? addCurrentTimeStampToAllTasksLocally,
    TResult Function(int index)? updateCurrentHomeIndex,
    TResult Function()? resetSelectItems,
    TResult Function(DateTime focusedDate, InternetState internetState)?
        updateFocusedDate,
    TResult Function()? resetMessage,
    TResult Function(String taskId, String fromSectionId, String sectionId,
            List<String> labels)?
        updateSection,
    TResult Function(String taskId, List<String> labels)? updateTimer,
    TResult Function(String taskId, List<String> labels)? updateTimerState,
    TResult Function(String taskId, List<String> labels)? updateTimerLocally,
    TResult Function(String taskId, List<String> labels)?
        updateTimerStateLocally,
    TResult Function(String taskId, List<String> labels)? completeTask,
    TResult Function(String taskId, List<String> labels)? reopenTask,
    TResult Function(String taskId, List<String> labels)? startTask,
    TResult Function(String taskId)? deleteTask,
    TResult Function(AppLocalizations appLocalization)? deleteAllTask,
    TResult Function(String commentId, String taskId)? deleteComment,
    TResult Function(String id)? sortByDateDescending,
    TResult Function(String id)? sortByNameDescending,
    TResult Function(String id)? sortByNameAscending,
    TResult Function(String id)? sortByDateAscending,
    TResult Function(String id)? sortByPriorityDescending,
    TResult Function(String id)? sortByPriorityAscending,
    required TResult orElse(),
  }) {
    if (reopenTask != null) {
      return reopenTask(taskId, labels);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateSelectedTaskTag value)
        updateSelectedTaskTag,
    required TResult Function(_RemoveSelectedTaskTag value)
        removeSelectedTaskTag,
    required TResult Function(_UpdateSelectedTaskPriority value)
        updateSelectedTaskPriority,
    required TResult Function(_UpdateSelectedTaskStatus value)
        updateSelectedTaskStatus,
    required TResult Function(_AddNewTask value) addNewTask,
    required TResult Function(_AddFullTask value) updateFullTask,
    required TResult Function(_AddNewComment value) addNewComment,
    required TResult Function(_Updateomment value) updateComment,
    required TResult Function(_FetchAllComments value) fetchAllComments,
    required TResult Function(_FetchAllTasks value) fetchAllTasks,
    required TResult Function(_SetPickedFileForComment value)
        setPickedFileForComment,
    required TResult Function(_SyncData value) syncData,
    required TResult Function(_SyncDataInServer value) syncDataInServer,
    required TResult Function(_AddCurrentTimeStampToAllTasksLocally value)
        addCurrentTimeStampToAllTasksLocally,
    required TResult Function(_UpdateCurrentHomeIndex value)
        updateCurrentHomeIndex,
    required TResult Function(_ResetSelectItems value) resetSelectItems,
    required TResult Function(_UpdateFocusedDate value) updateFocusedDate,
    required TResult Function(_ResetMessage value) resetMessage,
    required TResult Function(_UpdateSection value) updateSection,
    required TResult Function(_UpdateTimer value) updateTimer,
    required TResult Function(_UpdateTimerState value) updateTimerState,
    required TResult Function(_UpdateTimerLocally value) updateTimerLocally,
    required TResult Function(_UpdateTimerStateLocally value)
        updateTimerStateLocally,
    required TResult Function(_CompleteTask value) completeTask,
    required TResult Function(_ReopenTaskTask value) reopenTask,
    required TResult Function(_StartTask value) startTask,
    required TResult Function(_DeleteTask value) deleteTask,
    required TResult Function(_DeleteAllTask value) deleteAllTask,
    required TResult Function(_DeleteComment value) deleteComment,
    required TResult Function(_SortByDateDescending value) sortByDateDescending,
    required TResult Function(_SortByNameDescending value) sortByNameDescending,
    required TResult Function(_SortByNameAscending value) sortByNameAscending,
    required TResult Function(_SortByDateAscending value) sortByDateAscending,
    required TResult Function(_SortByPriorityDescending value)
        sortByPriorityDescending,
    required TResult Function(_SortByPriorityAscending value)
        sortByPriorityAscending,
  }) {
    return reopenTask(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateSelectedTaskTag value)? updateSelectedTaskTag,
    TResult? Function(_RemoveSelectedTaskTag value)? removeSelectedTaskTag,
    TResult? Function(_UpdateSelectedTaskPriority value)?
        updateSelectedTaskPriority,
    TResult? Function(_UpdateSelectedTaskStatus value)?
        updateSelectedTaskStatus,
    TResult? Function(_AddNewTask value)? addNewTask,
    TResult? Function(_AddFullTask value)? updateFullTask,
    TResult? Function(_AddNewComment value)? addNewComment,
    TResult? Function(_Updateomment value)? updateComment,
    TResult? Function(_FetchAllComments value)? fetchAllComments,
    TResult? Function(_FetchAllTasks value)? fetchAllTasks,
    TResult? Function(_SetPickedFileForComment value)? setPickedFileForComment,
    TResult? Function(_SyncData value)? syncData,
    TResult? Function(_SyncDataInServer value)? syncDataInServer,
    TResult? Function(_AddCurrentTimeStampToAllTasksLocally value)?
        addCurrentTimeStampToAllTasksLocally,
    TResult? Function(_UpdateCurrentHomeIndex value)? updateCurrentHomeIndex,
    TResult? Function(_ResetSelectItems value)? resetSelectItems,
    TResult? Function(_UpdateFocusedDate value)? updateFocusedDate,
    TResult? Function(_ResetMessage value)? resetMessage,
    TResult? Function(_UpdateSection value)? updateSection,
    TResult? Function(_UpdateTimer value)? updateTimer,
    TResult? Function(_UpdateTimerState value)? updateTimerState,
    TResult? Function(_UpdateTimerLocally value)? updateTimerLocally,
    TResult? Function(_UpdateTimerStateLocally value)? updateTimerStateLocally,
    TResult? Function(_CompleteTask value)? completeTask,
    TResult? Function(_ReopenTaskTask value)? reopenTask,
    TResult? Function(_StartTask value)? startTask,
    TResult? Function(_DeleteTask value)? deleteTask,
    TResult? Function(_DeleteAllTask value)? deleteAllTask,
    TResult? Function(_DeleteComment value)? deleteComment,
    TResult? Function(_SortByDateDescending value)? sortByDateDescending,
    TResult? Function(_SortByNameDescending value)? sortByNameDescending,
    TResult? Function(_SortByNameAscending value)? sortByNameAscending,
    TResult? Function(_SortByDateAscending value)? sortByDateAscending,
    TResult? Function(_SortByPriorityDescending value)?
        sortByPriorityDescending,
    TResult? Function(_SortByPriorityAscending value)? sortByPriorityAscending,
  }) {
    return reopenTask?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateSelectedTaskTag value)? updateSelectedTaskTag,
    TResult Function(_RemoveSelectedTaskTag value)? removeSelectedTaskTag,
    TResult Function(_UpdateSelectedTaskPriority value)?
        updateSelectedTaskPriority,
    TResult Function(_UpdateSelectedTaskStatus value)? updateSelectedTaskStatus,
    TResult Function(_AddNewTask value)? addNewTask,
    TResult Function(_AddFullTask value)? updateFullTask,
    TResult Function(_AddNewComment value)? addNewComment,
    TResult Function(_Updateomment value)? updateComment,
    TResult Function(_FetchAllComments value)? fetchAllComments,
    TResult Function(_FetchAllTasks value)? fetchAllTasks,
    TResult Function(_SetPickedFileForComment value)? setPickedFileForComment,
    TResult Function(_SyncData value)? syncData,
    TResult Function(_SyncDataInServer value)? syncDataInServer,
    TResult Function(_AddCurrentTimeStampToAllTasksLocally value)?
        addCurrentTimeStampToAllTasksLocally,
    TResult Function(_UpdateCurrentHomeIndex value)? updateCurrentHomeIndex,
    TResult Function(_ResetSelectItems value)? resetSelectItems,
    TResult Function(_UpdateFocusedDate value)? updateFocusedDate,
    TResult Function(_ResetMessage value)? resetMessage,
    TResult Function(_UpdateSection value)? updateSection,
    TResult Function(_UpdateTimer value)? updateTimer,
    TResult Function(_UpdateTimerState value)? updateTimerState,
    TResult Function(_UpdateTimerLocally value)? updateTimerLocally,
    TResult Function(_UpdateTimerStateLocally value)? updateTimerStateLocally,
    TResult Function(_CompleteTask value)? completeTask,
    TResult Function(_ReopenTaskTask value)? reopenTask,
    TResult Function(_StartTask value)? startTask,
    TResult Function(_DeleteTask value)? deleteTask,
    TResult Function(_DeleteAllTask value)? deleteAllTask,
    TResult Function(_DeleteComment value)? deleteComment,
    TResult Function(_SortByDateDescending value)? sortByDateDescending,
    TResult Function(_SortByNameDescending value)? sortByNameDescending,
    TResult Function(_SortByNameAscending value)? sortByNameAscending,
    TResult Function(_SortByDateAscending value)? sortByDateAscending,
    TResult Function(_SortByPriorityDescending value)? sortByPriorityDescending,
    TResult Function(_SortByPriorityAscending value)? sortByPriorityAscending,
    required TResult orElse(),
  }) {
    if (reopenTask != null) {
      return reopenTask(this);
    }
    return orElse();
  }
}

abstract class _ReopenTaskTask implements HomeEvent {
  const factory _ReopenTaskTask(
      {required final String taskId,
      required final List<String> labels}) = _$ReopenTaskTaskImpl;

  String get taskId;
  List<String> get labels;
  @JsonKey(ignore: true)
  _$$ReopenTaskTaskImplCopyWith<_$ReopenTaskTaskImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StartTaskImplCopyWith<$Res> {
  factory _$$StartTaskImplCopyWith(
          _$StartTaskImpl value, $Res Function(_$StartTaskImpl) then) =
      __$$StartTaskImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String taskId, List<String> labels});
}

/// @nodoc
class __$$StartTaskImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$StartTaskImpl>
    implements _$$StartTaskImplCopyWith<$Res> {
  __$$StartTaskImplCopyWithImpl(
      _$StartTaskImpl _value, $Res Function(_$StartTaskImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? taskId = null,
    Object? labels = null,
  }) {
    return _then(_$StartTaskImpl(
      taskId: null == taskId
          ? _value.taskId
          : taskId // ignore: cast_nullable_to_non_nullable
              as String,
      labels: null == labels
          ? _value._labels
          : labels // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$StartTaskImpl implements _StartTask {
  const _$StartTaskImpl(
      {required this.taskId, required final List<String> labels})
      : _labels = labels;

  @override
  final String taskId;
  final List<String> _labels;
  @override
  List<String> get labels {
    if (_labels is EqualUnmodifiableListView) return _labels;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_labels);
  }

  @override
  String toString() {
    return 'HomeEvent.startTask(taskId: $taskId, labels: $labels)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StartTaskImpl &&
            (identical(other.taskId, taskId) || other.taskId == taskId) &&
            const DeepCollectionEquality().equals(other._labels, _labels));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, taskId, const DeepCollectionEquality().hash(_labels));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StartTaskImplCopyWith<_$StartTaskImpl> get copyWith =>
      __$$StartTaskImplCopyWithImpl<_$StartTaskImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TasksTags tasksTags) updateSelectedTaskTag,
    required TResult Function(int index) removeSelectedTaskTag,
    required TResult Function(TasksPriority taskPriority)
        updateSelectedTaskPriority,
    required TResult Function(TasksStatus tasksStatus) updateSelectedTaskStatus,
    required TResult Function(
            AppLocalizations appLocalization,
            String dueDate,
            String content,
            String description,
            void Function()? Function() onComplete)
        addNewTask,
    required TResult Function(
            AppLocalizations appLocalization,
            String dueDate,
            String content,
            String taskId,
            String description,
            void Function()? Function() onComplete)
        updateFullTask,
    required TResult Function(AppLocalizations appLocalization, String taskId,
            String content, void Function()? Function() onComplete)
        addNewComment,
    required TResult Function(
            AppLocalizations appLocalization,
            String taskId,
            String commentId,
            String content,
            void Function()? Function() onComplete)
        updateComment,
    required TResult Function(
            String taskId, bool isSyncing, InternetState internetState)
        fetchAllComments,
    required TResult Function(bool requiredReload, InternetState internetState)
        fetchAllTasks,
    required TResult Function(File? file) setPickedFileForComment,
    required TResult Function(BuildContext context) syncData,
    required TResult Function() syncDataInServer,
    required TResult Function(int savedTime)
        addCurrentTimeStampToAllTasksLocally,
    required TResult Function(int index) updateCurrentHomeIndex,
    required TResult Function() resetSelectItems,
    required TResult Function(DateTime focusedDate, InternetState internetState)
        updateFocusedDate,
    required TResult Function() resetMessage,
    required TResult Function(String taskId, String fromSectionId,
            String sectionId, List<String> labels)
        updateSection,
    required TResult Function(String taskId, List<String> labels) updateTimer,
    required TResult Function(String taskId, List<String> labels)
        updateTimerState,
    required TResult Function(String taskId, List<String> labels)
        updateTimerLocally,
    required TResult Function(String taskId, List<String> labels)
        updateTimerStateLocally,
    required TResult Function(String taskId, List<String> labels) completeTask,
    required TResult Function(String taskId, List<String> labels) reopenTask,
    required TResult Function(String taskId, List<String> labels) startTask,
    required TResult Function(String taskId) deleteTask,
    required TResult Function(AppLocalizations appLocalization) deleteAllTask,
    required TResult Function(String commentId, String taskId) deleteComment,
    required TResult Function(String id) sortByDateDescending,
    required TResult Function(String id) sortByNameDescending,
    required TResult Function(String id) sortByNameAscending,
    required TResult Function(String id) sortByDateAscending,
    required TResult Function(String id) sortByPriorityDescending,
    required TResult Function(String id) sortByPriorityAscending,
  }) {
    return startTask(taskId, labels);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TasksTags tasksTags)? updateSelectedTaskTag,
    TResult? Function(int index)? removeSelectedTaskTag,
    TResult? Function(TasksPriority taskPriority)? updateSelectedTaskPriority,
    TResult? Function(TasksStatus tasksStatus)? updateSelectedTaskStatus,
    TResult? Function(
            AppLocalizations appLocalization,
            String dueDate,
            String content,
            String description,
            void Function()? Function() onComplete)?
        addNewTask,
    TResult? Function(
            AppLocalizations appLocalization,
            String dueDate,
            String content,
            String taskId,
            String description,
            void Function()? Function() onComplete)?
        updateFullTask,
    TResult? Function(AppLocalizations appLocalization, String taskId,
            String content, void Function()? Function() onComplete)?
        addNewComment,
    TResult? Function(
            AppLocalizations appLocalization,
            String taskId,
            String commentId,
            String content,
            void Function()? Function() onComplete)?
        updateComment,
    TResult? Function(
            String taskId, bool isSyncing, InternetState internetState)?
        fetchAllComments,
    TResult? Function(bool requiredReload, InternetState internetState)?
        fetchAllTasks,
    TResult? Function(File? file)? setPickedFileForComment,
    TResult? Function(BuildContext context)? syncData,
    TResult? Function()? syncDataInServer,
    TResult? Function(int savedTime)? addCurrentTimeStampToAllTasksLocally,
    TResult? Function(int index)? updateCurrentHomeIndex,
    TResult? Function()? resetSelectItems,
    TResult? Function(DateTime focusedDate, InternetState internetState)?
        updateFocusedDate,
    TResult? Function()? resetMessage,
    TResult? Function(String taskId, String fromSectionId, String sectionId,
            List<String> labels)?
        updateSection,
    TResult? Function(String taskId, List<String> labels)? updateTimer,
    TResult? Function(String taskId, List<String> labels)? updateTimerState,
    TResult? Function(String taskId, List<String> labels)? updateTimerLocally,
    TResult? Function(String taskId, List<String> labels)?
        updateTimerStateLocally,
    TResult? Function(String taskId, List<String> labels)? completeTask,
    TResult? Function(String taskId, List<String> labels)? reopenTask,
    TResult? Function(String taskId, List<String> labels)? startTask,
    TResult? Function(String taskId)? deleteTask,
    TResult? Function(AppLocalizations appLocalization)? deleteAllTask,
    TResult? Function(String commentId, String taskId)? deleteComment,
    TResult? Function(String id)? sortByDateDescending,
    TResult? Function(String id)? sortByNameDescending,
    TResult? Function(String id)? sortByNameAscending,
    TResult? Function(String id)? sortByDateAscending,
    TResult? Function(String id)? sortByPriorityDescending,
    TResult? Function(String id)? sortByPriorityAscending,
  }) {
    return startTask?.call(taskId, labels);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TasksTags tasksTags)? updateSelectedTaskTag,
    TResult Function(int index)? removeSelectedTaskTag,
    TResult Function(TasksPriority taskPriority)? updateSelectedTaskPriority,
    TResult Function(TasksStatus tasksStatus)? updateSelectedTaskStatus,
    TResult Function(
            AppLocalizations appLocalization,
            String dueDate,
            String content,
            String description,
            void Function()? Function() onComplete)?
        addNewTask,
    TResult Function(
            AppLocalizations appLocalization,
            String dueDate,
            String content,
            String taskId,
            String description,
            void Function()? Function() onComplete)?
        updateFullTask,
    TResult Function(AppLocalizations appLocalization, String taskId,
            String content, void Function()? Function() onComplete)?
        addNewComment,
    TResult Function(
            AppLocalizations appLocalization,
            String taskId,
            String commentId,
            String content,
            void Function()? Function() onComplete)?
        updateComment,
    TResult Function(
            String taskId, bool isSyncing, InternetState internetState)?
        fetchAllComments,
    TResult Function(bool requiredReload, InternetState internetState)?
        fetchAllTasks,
    TResult Function(File? file)? setPickedFileForComment,
    TResult Function(BuildContext context)? syncData,
    TResult Function()? syncDataInServer,
    TResult Function(int savedTime)? addCurrentTimeStampToAllTasksLocally,
    TResult Function(int index)? updateCurrentHomeIndex,
    TResult Function()? resetSelectItems,
    TResult Function(DateTime focusedDate, InternetState internetState)?
        updateFocusedDate,
    TResult Function()? resetMessage,
    TResult Function(String taskId, String fromSectionId, String sectionId,
            List<String> labels)?
        updateSection,
    TResult Function(String taskId, List<String> labels)? updateTimer,
    TResult Function(String taskId, List<String> labels)? updateTimerState,
    TResult Function(String taskId, List<String> labels)? updateTimerLocally,
    TResult Function(String taskId, List<String> labels)?
        updateTimerStateLocally,
    TResult Function(String taskId, List<String> labels)? completeTask,
    TResult Function(String taskId, List<String> labels)? reopenTask,
    TResult Function(String taskId, List<String> labels)? startTask,
    TResult Function(String taskId)? deleteTask,
    TResult Function(AppLocalizations appLocalization)? deleteAllTask,
    TResult Function(String commentId, String taskId)? deleteComment,
    TResult Function(String id)? sortByDateDescending,
    TResult Function(String id)? sortByNameDescending,
    TResult Function(String id)? sortByNameAscending,
    TResult Function(String id)? sortByDateAscending,
    TResult Function(String id)? sortByPriorityDescending,
    TResult Function(String id)? sortByPriorityAscending,
    required TResult orElse(),
  }) {
    if (startTask != null) {
      return startTask(taskId, labels);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateSelectedTaskTag value)
        updateSelectedTaskTag,
    required TResult Function(_RemoveSelectedTaskTag value)
        removeSelectedTaskTag,
    required TResult Function(_UpdateSelectedTaskPriority value)
        updateSelectedTaskPriority,
    required TResult Function(_UpdateSelectedTaskStatus value)
        updateSelectedTaskStatus,
    required TResult Function(_AddNewTask value) addNewTask,
    required TResult Function(_AddFullTask value) updateFullTask,
    required TResult Function(_AddNewComment value) addNewComment,
    required TResult Function(_Updateomment value) updateComment,
    required TResult Function(_FetchAllComments value) fetchAllComments,
    required TResult Function(_FetchAllTasks value) fetchAllTasks,
    required TResult Function(_SetPickedFileForComment value)
        setPickedFileForComment,
    required TResult Function(_SyncData value) syncData,
    required TResult Function(_SyncDataInServer value) syncDataInServer,
    required TResult Function(_AddCurrentTimeStampToAllTasksLocally value)
        addCurrentTimeStampToAllTasksLocally,
    required TResult Function(_UpdateCurrentHomeIndex value)
        updateCurrentHomeIndex,
    required TResult Function(_ResetSelectItems value) resetSelectItems,
    required TResult Function(_UpdateFocusedDate value) updateFocusedDate,
    required TResult Function(_ResetMessage value) resetMessage,
    required TResult Function(_UpdateSection value) updateSection,
    required TResult Function(_UpdateTimer value) updateTimer,
    required TResult Function(_UpdateTimerState value) updateTimerState,
    required TResult Function(_UpdateTimerLocally value) updateTimerLocally,
    required TResult Function(_UpdateTimerStateLocally value)
        updateTimerStateLocally,
    required TResult Function(_CompleteTask value) completeTask,
    required TResult Function(_ReopenTaskTask value) reopenTask,
    required TResult Function(_StartTask value) startTask,
    required TResult Function(_DeleteTask value) deleteTask,
    required TResult Function(_DeleteAllTask value) deleteAllTask,
    required TResult Function(_DeleteComment value) deleteComment,
    required TResult Function(_SortByDateDescending value) sortByDateDescending,
    required TResult Function(_SortByNameDescending value) sortByNameDescending,
    required TResult Function(_SortByNameAscending value) sortByNameAscending,
    required TResult Function(_SortByDateAscending value) sortByDateAscending,
    required TResult Function(_SortByPriorityDescending value)
        sortByPriorityDescending,
    required TResult Function(_SortByPriorityAscending value)
        sortByPriorityAscending,
  }) {
    return startTask(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateSelectedTaskTag value)? updateSelectedTaskTag,
    TResult? Function(_RemoveSelectedTaskTag value)? removeSelectedTaskTag,
    TResult? Function(_UpdateSelectedTaskPriority value)?
        updateSelectedTaskPriority,
    TResult? Function(_UpdateSelectedTaskStatus value)?
        updateSelectedTaskStatus,
    TResult? Function(_AddNewTask value)? addNewTask,
    TResult? Function(_AddFullTask value)? updateFullTask,
    TResult? Function(_AddNewComment value)? addNewComment,
    TResult? Function(_Updateomment value)? updateComment,
    TResult? Function(_FetchAllComments value)? fetchAllComments,
    TResult? Function(_FetchAllTasks value)? fetchAllTasks,
    TResult? Function(_SetPickedFileForComment value)? setPickedFileForComment,
    TResult? Function(_SyncData value)? syncData,
    TResult? Function(_SyncDataInServer value)? syncDataInServer,
    TResult? Function(_AddCurrentTimeStampToAllTasksLocally value)?
        addCurrentTimeStampToAllTasksLocally,
    TResult? Function(_UpdateCurrentHomeIndex value)? updateCurrentHomeIndex,
    TResult? Function(_ResetSelectItems value)? resetSelectItems,
    TResult? Function(_UpdateFocusedDate value)? updateFocusedDate,
    TResult? Function(_ResetMessage value)? resetMessage,
    TResult? Function(_UpdateSection value)? updateSection,
    TResult? Function(_UpdateTimer value)? updateTimer,
    TResult? Function(_UpdateTimerState value)? updateTimerState,
    TResult? Function(_UpdateTimerLocally value)? updateTimerLocally,
    TResult? Function(_UpdateTimerStateLocally value)? updateTimerStateLocally,
    TResult? Function(_CompleteTask value)? completeTask,
    TResult? Function(_ReopenTaskTask value)? reopenTask,
    TResult? Function(_StartTask value)? startTask,
    TResult? Function(_DeleteTask value)? deleteTask,
    TResult? Function(_DeleteAllTask value)? deleteAllTask,
    TResult? Function(_DeleteComment value)? deleteComment,
    TResult? Function(_SortByDateDescending value)? sortByDateDescending,
    TResult? Function(_SortByNameDescending value)? sortByNameDescending,
    TResult? Function(_SortByNameAscending value)? sortByNameAscending,
    TResult? Function(_SortByDateAscending value)? sortByDateAscending,
    TResult? Function(_SortByPriorityDescending value)?
        sortByPriorityDescending,
    TResult? Function(_SortByPriorityAscending value)? sortByPriorityAscending,
  }) {
    return startTask?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateSelectedTaskTag value)? updateSelectedTaskTag,
    TResult Function(_RemoveSelectedTaskTag value)? removeSelectedTaskTag,
    TResult Function(_UpdateSelectedTaskPriority value)?
        updateSelectedTaskPriority,
    TResult Function(_UpdateSelectedTaskStatus value)? updateSelectedTaskStatus,
    TResult Function(_AddNewTask value)? addNewTask,
    TResult Function(_AddFullTask value)? updateFullTask,
    TResult Function(_AddNewComment value)? addNewComment,
    TResult Function(_Updateomment value)? updateComment,
    TResult Function(_FetchAllComments value)? fetchAllComments,
    TResult Function(_FetchAllTasks value)? fetchAllTasks,
    TResult Function(_SetPickedFileForComment value)? setPickedFileForComment,
    TResult Function(_SyncData value)? syncData,
    TResult Function(_SyncDataInServer value)? syncDataInServer,
    TResult Function(_AddCurrentTimeStampToAllTasksLocally value)?
        addCurrentTimeStampToAllTasksLocally,
    TResult Function(_UpdateCurrentHomeIndex value)? updateCurrentHomeIndex,
    TResult Function(_ResetSelectItems value)? resetSelectItems,
    TResult Function(_UpdateFocusedDate value)? updateFocusedDate,
    TResult Function(_ResetMessage value)? resetMessage,
    TResult Function(_UpdateSection value)? updateSection,
    TResult Function(_UpdateTimer value)? updateTimer,
    TResult Function(_UpdateTimerState value)? updateTimerState,
    TResult Function(_UpdateTimerLocally value)? updateTimerLocally,
    TResult Function(_UpdateTimerStateLocally value)? updateTimerStateLocally,
    TResult Function(_CompleteTask value)? completeTask,
    TResult Function(_ReopenTaskTask value)? reopenTask,
    TResult Function(_StartTask value)? startTask,
    TResult Function(_DeleteTask value)? deleteTask,
    TResult Function(_DeleteAllTask value)? deleteAllTask,
    TResult Function(_DeleteComment value)? deleteComment,
    TResult Function(_SortByDateDescending value)? sortByDateDescending,
    TResult Function(_SortByNameDescending value)? sortByNameDescending,
    TResult Function(_SortByNameAscending value)? sortByNameAscending,
    TResult Function(_SortByDateAscending value)? sortByDateAscending,
    TResult Function(_SortByPriorityDescending value)? sortByPriorityDescending,
    TResult Function(_SortByPriorityAscending value)? sortByPriorityAscending,
    required TResult orElse(),
  }) {
    if (startTask != null) {
      return startTask(this);
    }
    return orElse();
  }
}

abstract class _StartTask implements HomeEvent {
  const factory _StartTask(
      {required final String taskId,
      required final List<String> labels}) = _$StartTaskImpl;

  String get taskId;
  List<String> get labels;
  @JsonKey(ignore: true)
  _$$StartTaskImplCopyWith<_$StartTaskImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteTaskImplCopyWith<$Res> {
  factory _$$DeleteTaskImplCopyWith(
          _$DeleteTaskImpl value, $Res Function(_$DeleteTaskImpl) then) =
      __$$DeleteTaskImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String taskId});
}

/// @nodoc
class __$$DeleteTaskImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$DeleteTaskImpl>
    implements _$$DeleteTaskImplCopyWith<$Res> {
  __$$DeleteTaskImplCopyWithImpl(
      _$DeleteTaskImpl _value, $Res Function(_$DeleteTaskImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? taskId = null,
  }) {
    return _then(_$DeleteTaskImpl(
      taskId: null == taskId
          ? _value.taskId
          : taskId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DeleteTaskImpl implements _DeleteTask {
  const _$DeleteTaskImpl({required this.taskId});

  @override
  final String taskId;

  @override
  String toString() {
    return 'HomeEvent.deleteTask(taskId: $taskId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteTaskImpl &&
            (identical(other.taskId, taskId) || other.taskId == taskId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, taskId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteTaskImplCopyWith<_$DeleteTaskImpl> get copyWith =>
      __$$DeleteTaskImplCopyWithImpl<_$DeleteTaskImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TasksTags tasksTags) updateSelectedTaskTag,
    required TResult Function(int index) removeSelectedTaskTag,
    required TResult Function(TasksPriority taskPriority)
        updateSelectedTaskPriority,
    required TResult Function(TasksStatus tasksStatus) updateSelectedTaskStatus,
    required TResult Function(
            AppLocalizations appLocalization,
            String dueDate,
            String content,
            String description,
            void Function()? Function() onComplete)
        addNewTask,
    required TResult Function(
            AppLocalizations appLocalization,
            String dueDate,
            String content,
            String taskId,
            String description,
            void Function()? Function() onComplete)
        updateFullTask,
    required TResult Function(AppLocalizations appLocalization, String taskId,
            String content, void Function()? Function() onComplete)
        addNewComment,
    required TResult Function(
            AppLocalizations appLocalization,
            String taskId,
            String commentId,
            String content,
            void Function()? Function() onComplete)
        updateComment,
    required TResult Function(
            String taskId, bool isSyncing, InternetState internetState)
        fetchAllComments,
    required TResult Function(bool requiredReload, InternetState internetState)
        fetchAllTasks,
    required TResult Function(File? file) setPickedFileForComment,
    required TResult Function(BuildContext context) syncData,
    required TResult Function() syncDataInServer,
    required TResult Function(int savedTime)
        addCurrentTimeStampToAllTasksLocally,
    required TResult Function(int index) updateCurrentHomeIndex,
    required TResult Function() resetSelectItems,
    required TResult Function(DateTime focusedDate, InternetState internetState)
        updateFocusedDate,
    required TResult Function() resetMessage,
    required TResult Function(String taskId, String fromSectionId,
            String sectionId, List<String> labels)
        updateSection,
    required TResult Function(String taskId, List<String> labels) updateTimer,
    required TResult Function(String taskId, List<String> labels)
        updateTimerState,
    required TResult Function(String taskId, List<String> labels)
        updateTimerLocally,
    required TResult Function(String taskId, List<String> labels)
        updateTimerStateLocally,
    required TResult Function(String taskId, List<String> labels) completeTask,
    required TResult Function(String taskId, List<String> labels) reopenTask,
    required TResult Function(String taskId, List<String> labels) startTask,
    required TResult Function(String taskId) deleteTask,
    required TResult Function(AppLocalizations appLocalization) deleteAllTask,
    required TResult Function(String commentId, String taskId) deleteComment,
    required TResult Function(String id) sortByDateDescending,
    required TResult Function(String id) sortByNameDescending,
    required TResult Function(String id) sortByNameAscending,
    required TResult Function(String id) sortByDateAscending,
    required TResult Function(String id) sortByPriorityDescending,
    required TResult Function(String id) sortByPriorityAscending,
  }) {
    return deleteTask(taskId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TasksTags tasksTags)? updateSelectedTaskTag,
    TResult? Function(int index)? removeSelectedTaskTag,
    TResult? Function(TasksPriority taskPriority)? updateSelectedTaskPriority,
    TResult? Function(TasksStatus tasksStatus)? updateSelectedTaskStatus,
    TResult? Function(
            AppLocalizations appLocalization,
            String dueDate,
            String content,
            String description,
            void Function()? Function() onComplete)?
        addNewTask,
    TResult? Function(
            AppLocalizations appLocalization,
            String dueDate,
            String content,
            String taskId,
            String description,
            void Function()? Function() onComplete)?
        updateFullTask,
    TResult? Function(AppLocalizations appLocalization, String taskId,
            String content, void Function()? Function() onComplete)?
        addNewComment,
    TResult? Function(
            AppLocalizations appLocalization,
            String taskId,
            String commentId,
            String content,
            void Function()? Function() onComplete)?
        updateComment,
    TResult? Function(
            String taskId, bool isSyncing, InternetState internetState)?
        fetchAllComments,
    TResult? Function(bool requiredReload, InternetState internetState)?
        fetchAllTasks,
    TResult? Function(File? file)? setPickedFileForComment,
    TResult? Function(BuildContext context)? syncData,
    TResult? Function()? syncDataInServer,
    TResult? Function(int savedTime)? addCurrentTimeStampToAllTasksLocally,
    TResult? Function(int index)? updateCurrentHomeIndex,
    TResult? Function()? resetSelectItems,
    TResult? Function(DateTime focusedDate, InternetState internetState)?
        updateFocusedDate,
    TResult? Function()? resetMessage,
    TResult? Function(String taskId, String fromSectionId, String sectionId,
            List<String> labels)?
        updateSection,
    TResult? Function(String taskId, List<String> labels)? updateTimer,
    TResult? Function(String taskId, List<String> labels)? updateTimerState,
    TResult? Function(String taskId, List<String> labels)? updateTimerLocally,
    TResult? Function(String taskId, List<String> labels)?
        updateTimerStateLocally,
    TResult? Function(String taskId, List<String> labels)? completeTask,
    TResult? Function(String taskId, List<String> labels)? reopenTask,
    TResult? Function(String taskId, List<String> labels)? startTask,
    TResult? Function(String taskId)? deleteTask,
    TResult? Function(AppLocalizations appLocalization)? deleteAllTask,
    TResult? Function(String commentId, String taskId)? deleteComment,
    TResult? Function(String id)? sortByDateDescending,
    TResult? Function(String id)? sortByNameDescending,
    TResult? Function(String id)? sortByNameAscending,
    TResult? Function(String id)? sortByDateAscending,
    TResult? Function(String id)? sortByPriorityDescending,
    TResult? Function(String id)? sortByPriorityAscending,
  }) {
    return deleteTask?.call(taskId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TasksTags tasksTags)? updateSelectedTaskTag,
    TResult Function(int index)? removeSelectedTaskTag,
    TResult Function(TasksPriority taskPriority)? updateSelectedTaskPriority,
    TResult Function(TasksStatus tasksStatus)? updateSelectedTaskStatus,
    TResult Function(
            AppLocalizations appLocalization,
            String dueDate,
            String content,
            String description,
            void Function()? Function() onComplete)?
        addNewTask,
    TResult Function(
            AppLocalizations appLocalization,
            String dueDate,
            String content,
            String taskId,
            String description,
            void Function()? Function() onComplete)?
        updateFullTask,
    TResult Function(AppLocalizations appLocalization, String taskId,
            String content, void Function()? Function() onComplete)?
        addNewComment,
    TResult Function(
            AppLocalizations appLocalization,
            String taskId,
            String commentId,
            String content,
            void Function()? Function() onComplete)?
        updateComment,
    TResult Function(
            String taskId, bool isSyncing, InternetState internetState)?
        fetchAllComments,
    TResult Function(bool requiredReload, InternetState internetState)?
        fetchAllTasks,
    TResult Function(File? file)? setPickedFileForComment,
    TResult Function(BuildContext context)? syncData,
    TResult Function()? syncDataInServer,
    TResult Function(int savedTime)? addCurrentTimeStampToAllTasksLocally,
    TResult Function(int index)? updateCurrentHomeIndex,
    TResult Function()? resetSelectItems,
    TResult Function(DateTime focusedDate, InternetState internetState)?
        updateFocusedDate,
    TResult Function()? resetMessage,
    TResult Function(String taskId, String fromSectionId, String sectionId,
            List<String> labels)?
        updateSection,
    TResult Function(String taskId, List<String> labels)? updateTimer,
    TResult Function(String taskId, List<String> labels)? updateTimerState,
    TResult Function(String taskId, List<String> labels)? updateTimerLocally,
    TResult Function(String taskId, List<String> labels)?
        updateTimerStateLocally,
    TResult Function(String taskId, List<String> labels)? completeTask,
    TResult Function(String taskId, List<String> labels)? reopenTask,
    TResult Function(String taskId, List<String> labels)? startTask,
    TResult Function(String taskId)? deleteTask,
    TResult Function(AppLocalizations appLocalization)? deleteAllTask,
    TResult Function(String commentId, String taskId)? deleteComment,
    TResult Function(String id)? sortByDateDescending,
    TResult Function(String id)? sortByNameDescending,
    TResult Function(String id)? sortByNameAscending,
    TResult Function(String id)? sortByDateAscending,
    TResult Function(String id)? sortByPriorityDescending,
    TResult Function(String id)? sortByPriorityAscending,
    required TResult orElse(),
  }) {
    if (deleteTask != null) {
      return deleteTask(taskId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateSelectedTaskTag value)
        updateSelectedTaskTag,
    required TResult Function(_RemoveSelectedTaskTag value)
        removeSelectedTaskTag,
    required TResult Function(_UpdateSelectedTaskPriority value)
        updateSelectedTaskPriority,
    required TResult Function(_UpdateSelectedTaskStatus value)
        updateSelectedTaskStatus,
    required TResult Function(_AddNewTask value) addNewTask,
    required TResult Function(_AddFullTask value) updateFullTask,
    required TResult Function(_AddNewComment value) addNewComment,
    required TResult Function(_Updateomment value) updateComment,
    required TResult Function(_FetchAllComments value) fetchAllComments,
    required TResult Function(_FetchAllTasks value) fetchAllTasks,
    required TResult Function(_SetPickedFileForComment value)
        setPickedFileForComment,
    required TResult Function(_SyncData value) syncData,
    required TResult Function(_SyncDataInServer value) syncDataInServer,
    required TResult Function(_AddCurrentTimeStampToAllTasksLocally value)
        addCurrentTimeStampToAllTasksLocally,
    required TResult Function(_UpdateCurrentHomeIndex value)
        updateCurrentHomeIndex,
    required TResult Function(_ResetSelectItems value) resetSelectItems,
    required TResult Function(_UpdateFocusedDate value) updateFocusedDate,
    required TResult Function(_ResetMessage value) resetMessage,
    required TResult Function(_UpdateSection value) updateSection,
    required TResult Function(_UpdateTimer value) updateTimer,
    required TResult Function(_UpdateTimerState value) updateTimerState,
    required TResult Function(_UpdateTimerLocally value) updateTimerLocally,
    required TResult Function(_UpdateTimerStateLocally value)
        updateTimerStateLocally,
    required TResult Function(_CompleteTask value) completeTask,
    required TResult Function(_ReopenTaskTask value) reopenTask,
    required TResult Function(_StartTask value) startTask,
    required TResult Function(_DeleteTask value) deleteTask,
    required TResult Function(_DeleteAllTask value) deleteAllTask,
    required TResult Function(_DeleteComment value) deleteComment,
    required TResult Function(_SortByDateDescending value) sortByDateDescending,
    required TResult Function(_SortByNameDescending value) sortByNameDescending,
    required TResult Function(_SortByNameAscending value) sortByNameAscending,
    required TResult Function(_SortByDateAscending value) sortByDateAscending,
    required TResult Function(_SortByPriorityDescending value)
        sortByPriorityDescending,
    required TResult Function(_SortByPriorityAscending value)
        sortByPriorityAscending,
  }) {
    return deleteTask(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateSelectedTaskTag value)? updateSelectedTaskTag,
    TResult? Function(_RemoveSelectedTaskTag value)? removeSelectedTaskTag,
    TResult? Function(_UpdateSelectedTaskPriority value)?
        updateSelectedTaskPriority,
    TResult? Function(_UpdateSelectedTaskStatus value)?
        updateSelectedTaskStatus,
    TResult? Function(_AddNewTask value)? addNewTask,
    TResult? Function(_AddFullTask value)? updateFullTask,
    TResult? Function(_AddNewComment value)? addNewComment,
    TResult? Function(_Updateomment value)? updateComment,
    TResult? Function(_FetchAllComments value)? fetchAllComments,
    TResult? Function(_FetchAllTasks value)? fetchAllTasks,
    TResult? Function(_SetPickedFileForComment value)? setPickedFileForComment,
    TResult? Function(_SyncData value)? syncData,
    TResult? Function(_SyncDataInServer value)? syncDataInServer,
    TResult? Function(_AddCurrentTimeStampToAllTasksLocally value)?
        addCurrentTimeStampToAllTasksLocally,
    TResult? Function(_UpdateCurrentHomeIndex value)? updateCurrentHomeIndex,
    TResult? Function(_ResetSelectItems value)? resetSelectItems,
    TResult? Function(_UpdateFocusedDate value)? updateFocusedDate,
    TResult? Function(_ResetMessage value)? resetMessage,
    TResult? Function(_UpdateSection value)? updateSection,
    TResult? Function(_UpdateTimer value)? updateTimer,
    TResult? Function(_UpdateTimerState value)? updateTimerState,
    TResult? Function(_UpdateTimerLocally value)? updateTimerLocally,
    TResult? Function(_UpdateTimerStateLocally value)? updateTimerStateLocally,
    TResult? Function(_CompleteTask value)? completeTask,
    TResult? Function(_ReopenTaskTask value)? reopenTask,
    TResult? Function(_StartTask value)? startTask,
    TResult? Function(_DeleteTask value)? deleteTask,
    TResult? Function(_DeleteAllTask value)? deleteAllTask,
    TResult? Function(_DeleteComment value)? deleteComment,
    TResult? Function(_SortByDateDescending value)? sortByDateDescending,
    TResult? Function(_SortByNameDescending value)? sortByNameDescending,
    TResult? Function(_SortByNameAscending value)? sortByNameAscending,
    TResult? Function(_SortByDateAscending value)? sortByDateAscending,
    TResult? Function(_SortByPriorityDescending value)?
        sortByPriorityDescending,
    TResult? Function(_SortByPriorityAscending value)? sortByPriorityAscending,
  }) {
    return deleteTask?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateSelectedTaskTag value)? updateSelectedTaskTag,
    TResult Function(_RemoveSelectedTaskTag value)? removeSelectedTaskTag,
    TResult Function(_UpdateSelectedTaskPriority value)?
        updateSelectedTaskPriority,
    TResult Function(_UpdateSelectedTaskStatus value)? updateSelectedTaskStatus,
    TResult Function(_AddNewTask value)? addNewTask,
    TResult Function(_AddFullTask value)? updateFullTask,
    TResult Function(_AddNewComment value)? addNewComment,
    TResult Function(_Updateomment value)? updateComment,
    TResult Function(_FetchAllComments value)? fetchAllComments,
    TResult Function(_FetchAllTasks value)? fetchAllTasks,
    TResult Function(_SetPickedFileForComment value)? setPickedFileForComment,
    TResult Function(_SyncData value)? syncData,
    TResult Function(_SyncDataInServer value)? syncDataInServer,
    TResult Function(_AddCurrentTimeStampToAllTasksLocally value)?
        addCurrentTimeStampToAllTasksLocally,
    TResult Function(_UpdateCurrentHomeIndex value)? updateCurrentHomeIndex,
    TResult Function(_ResetSelectItems value)? resetSelectItems,
    TResult Function(_UpdateFocusedDate value)? updateFocusedDate,
    TResult Function(_ResetMessage value)? resetMessage,
    TResult Function(_UpdateSection value)? updateSection,
    TResult Function(_UpdateTimer value)? updateTimer,
    TResult Function(_UpdateTimerState value)? updateTimerState,
    TResult Function(_UpdateTimerLocally value)? updateTimerLocally,
    TResult Function(_UpdateTimerStateLocally value)? updateTimerStateLocally,
    TResult Function(_CompleteTask value)? completeTask,
    TResult Function(_ReopenTaskTask value)? reopenTask,
    TResult Function(_StartTask value)? startTask,
    TResult Function(_DeleteTask value)? deleteTask,
    TResult Function(_DeleteAllTask value)? deleteAllTask,
    TResult Function(_DeleteComment value)? deleteComment,
    TResult Function(_SortByDateDescending value)? sortByDateDescending,
    TResult Function(_SortByNameDescending value)? sortByNameDescending,
    TResult Function(_SortByNameAscending value)? sortByNameAscending,
    TResult Function(_SortByDateAscending value)? sortByDateAscending,
    TResult Function(_SortByPriorityDescending value)? sortByPriorityDescending,
    TResult Function(_SortByPriorityAscending value)? sortByPriorityAscending,
    required TResult orElse(),
  }) {
    if (deleteTask != null) {
      return deleteTask(this);
    }
    return orElse();
  }
}

abstract class _DeleteTask implements HomeEvent {
  const factory _DeleteTask({required final String taskId}) = _$DeleteTaskImpl;

  String get taskId;
  @JsonKey(ignore: true)
  _$$DeleteTaskImplCopyWith<_$DeleteTaskImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteAllTaskImplCopyWith<$Res> {
  factory _$$DeleteAllTaskImplCopyWith(
          _$DeleteAllTaskImpl value, $Res Function(_$DeleteAllTaskImpl) then) =
      __$$DeleteAllTaskImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AppLocalizations appLocalization});
}

/// @nodoc
class __$$DeleteAllTaskImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$DeleteAllTaskImpl>
    implements _$$DeleteAllTaskImplCopyWith<$Res> {
  __$$DeleteAllTaskImplCopyWithImpl(
      _$DeleteAllTaskImpl _value, $Res Function(_$DeleteAllTaskImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appLocalization = freezed,
  }) {
    return _then(_$DeleteAllTaskImpl(
      appLocalization: freezed == appLocalization
          ? _value.appLocalization
          : appLocalization // ignore: cast_nullable_to_non_nullable
              as AppLocalizations,
    ));
  }
}

/// @nodoc

class _$DeleteAllTaskImpl implements _DeleteAllTask {
  const _$DeleteAllTaskImpl({required this.appLocalization});

  @override
  final AppLocalizations appLocalization;

  @override
  String toString() {
    return 'HomeEvent.deleteAllTask(appLocalization: $appLocalization)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteAllTaskImpl &&
            const DeepCollectionEquality()
                .equals(other.appLocalization, appLocalization));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(appLocalization));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteAllTaskImplCopyWith<_$DeleteAllTaskImpl> get copyWith =>
      __$$DeleteAllTaskImplCopyWithImpl<_$DeleteAllTaskImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TasksTags tasksTags) updateSelectedTaskTag,
    required TResult Function(int index) removeSelectedTaskTag,
    required TResult Function(TasksPriority taskPriority)
        updateSelectedTaskPriority,
    required TResult Function(TasksStatus tasksStatus) updateSelectedTaskStatus,
    required TResult Function(
            AppLocalizations appLocalization,
            String dueDate,
            String content,
            String description,
            void Function()? Function() onComplete)
        addNewTask,
    required TResult Function(
            AppLocalizations appLocalization,
            String dueDate,
            String content,
            String taskId,
            String description,
            void Function()? Function() onComplete)
        updateFullTask,
    required TResult Function(AppLocalizations appLocalization, String taskId,
            String content, void Function()? Function() onComplete)
        addNewComment,
    required TResult Function(
            AppLocalizations appLocalization,
            String taskId,
            String commentId,
            String content,
            void Function()? Function() onComplete)
        updateComment,
    required TResult Function(
            String taskId, bool isSyncing, InternetState internetState)
        fetchAllComments,
    required TResult Function(bool requiredReload, InternetState internetState)
        fetchAllTasks,
    required TResult Function(File? file) setPickedFileForComment,
    required TResult Function(BuildContext context) syncData,
    required TResult Function() syncDataInServer,
    required TResult Function(int savedTime)
        addCurrentTimeStampToAllTasksLocally,
    required TResult Function(int index) updateCurrentHomeIndex,
    required TResult Function() resetSelectItems,
    required TResult Function(DateTime focusedDate, InternetState internetState)
        updateFocusedDate,
    required TResult Function() resetMessage,
    required TResult Function(String taskId, String fromSectionId,
            String sectionId, List<String> labels)
        updateSection,
    required TResult Function(String taskId, List<String> labels) updateTimer,
    required TResult Function(String taskId, List<String> labels)
        updateTimerState,
    required TResult Function(String taskId, List<String> labels)
        updateTimerLocally,
    required TResult Function(String taskId, List<String> labels)
        updateTimerStateLocally,
    required TResult Function(String taskId, List<String> labels) completeTask,
    required TResult Function(String taskId, List<String> labels) reopenTask,
    required TResult Function(String taskId, List<String> labels) startTask,
    required TResult Function(String taskId) deleteTask,
    required TResult Function(AppLocalizations appLocalization) deleteAllTask,
    required TResult Function(String commentId, String taskId) deleteComment,
    required TResult Function(String id) sortByDateDescending,
    required TResult Function(String id) sortByNameDescending,
    required TResult Function(String id) sortByNameAscending,
    required TResult Function(String id) sortByDateAscending,
    required TResult Function(String id) sortByPriorityDescending,
    required TResult Function(String id) sortByPriorityAscending,
  }) {
    return deleteAllTask(appLocalization);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TasksTags tasksTags)? updateSelectedTaskTag,
    TResult? Function(int index)? removeSelectedTaskTag,
    TResult? Function(TasksPriority taskPriority)? updateSelectedTaskPriority,
    TResult? Function(TasksStatus tasksStatus)? updateSelectedTaskStatus,
    TResult? Function(
            AppLocalizations appLocalization,
            String dueDate,
            String content,
            String description,
            void Function()? Function() onComplete)?
        addNewTask,
    TResult? Function(
            AppLocalizations appLocalization,
            String dueDate,
            String content,
            String taskId,
            String description,
            void Function()? Function() onComplete)?
        updateFullTask,
    TResult? Function(AppLocalizations appLocalization, String taskId,
            String content, void Function()? Function() onComplete)?
        addNewComment,
    TResult? Function(
            AppLocalizations appLocalization,
            String taskId,
            String commentId,
            String content,
            void Function()? Function() onComplete)?
        updateComment,
    TResult? Function(
            String taskId, bool isSyncing, InternetState internetState)?
        fetchAllComments,
    TResult? Function(bool requiredReload, InternetState internetState)?
        fetchAllTasks,
    TResult? Function(File? file)? setPickedFileForComment,
    TResult? Function(BuildContext context)? syncData,
    TResult? Function()? syncDataInServer,
    TResult? Function(int savedTime)? addCurrentTimeStampToAllTasksLocally,
    TResult? Function(int index)? updateCurrentHomeIndex,
    TResult? Function()? resetSelectItems,
    TResult? Function(DateTime focusedDate, InternetState internetState)?
        updateFocusedDate,
    TResult? Function()? resetMessage,
    TResult? Function(String taskId, String fromSectionId, String sectionId,
            List<String> labels)?
        updateSection,
    TResult? Function(String taskId, List<String> labels)? updateTimer,
    TResult? Function(String taskId, List<String> labels)? updateTimerState,
    TResult? Function(String taskId, List<String> labels)? updateTimerLocally,
    TResult? Function(String taskId, List<String> labels)?
        updateTimerStateLocally,
    TResult? Function(String taskId, List<String> labels)? completeTask,
    TResult? Function(String taskId, List<String> labels)? reopenTask,
    TResult? Function(String taskId, List<String> labels)? startTask,
    TResult? Function(String taskId)? deleteTask,
    TResult? Function(AppLocalizations appLocalization)? deleteAllTask,
    TResult? Function(String commentId, String taskId)? deleteComment,
    TResult? Function(String id)? sortByDateDescending,
    TResult? Function(String id)? sortByNameDescending,
    TResult? Function(String id)? sortByNameAscending,
    TResult? Function(String id)? sortByDateAscending,
    TResult? Function(String id)? sortByPriorityDescending,
    TResult? Function(String id)? sortByPriorityAscending,
  }) {
    return deleteAllTask?.call(appLocalization);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TasksTags tasksTags)? updateSelectedTaskTag,
    TResult Function(int index)? removeSelectedTaskTag,
    TResult Function(TasksPriority taskPriority)? updateSelectedTaskPriority,
    TResult Function(TasksStatus tasksStatus)? updateSelectedTaskStatus,
    TResult Function(
            AppLocalizations appLocalization,
            String dueDate,
            String content,
            String description,
            void Function()? Function() onComplete)?
        addNewTask,
    TResult Function(
            AppLocalizations appLocalization,
            String dueDate,
            String content,
            String taskId,
            String description,
            void Function()? Function() onComplete)?
        updateFullTask,
    TResult Function(AppLocalizations appLocalization, String taskId,
            String content, void Function()? Function() onComplete)?
        addNewComment,
    TResult Function(
            AppLocalizations appLocalization,
            String taskId,
            String commentId,
            String content,
            void Function()? Function() onComplete)?
        updateComment,
    TResult Function(
            String taskId, bool isSyncing, InternetState internetState)?
        fetchAllComments,
    TResult Function(bool requiredReload, InternetState internetState)?
        fetchAllTasks,
    TResult Function(File? file)? setPickedFileForComment,
    TResult Function(BuildContext context)? syncData,
    TResult Function()? syncDataInServer,
    TResult Function(int savedTime)? addCurrentTimeStampToAllTasksLocally,
    TResult Function(int index)? updateCurrentHomeIndex,
    TResult Function()? resetSelectItems,
    TResult Function(DateTime focusedDate, InternetState internetState)?
        updateFocusedDate,
    TResult Function()? resetMessage,
    TResult Function(String taskId, String fromSectionId, String sectionId,
            List<String> labels)?
        updateSection,
    TResult Function(String taskId, List<String> labels)? updateTimer,
    TResult Function(String taskId, List<String> labels)? updateTimerState,
    TResult Function(String taskId, List<String> labels)? updateTimerLocally,
    TResult Function(String taskId, List<String> labels)?
        updateTimerStateLocally,
    TResult Function(String taskId, List<String> labels)? completeTask,
    TResult Function(String taskId, List<String> labels)? reopenTask,
    TResult Function(String taskId, List<String> labels)? startTask,
    TResult Function(String taskId)? deleteTask,
    TResult Function(AppLocalizations appLocalization)? deleteAllTask,
    TResult Function(String commentId, String taskId)? deleteComment,
    TResult Function(String id)? sortByDateDescending,
    TResult Function(String id)? sortByNameDescending,
    TResult Function(String id)? sortByNameAscending,
    TResult Function(String id)? sortByDateAscending,
    TResult Function(String id)? sortByPriorityDescending,
    TResult Function(String id)? sortByPriorityAscending,
    required TResult orElse(),
  }) {
    if (deleteAllTask != null) {
      return deleteAllTask(appLocalization);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateSelectedTaskTag value)
        updateSelectedTaskTag,
    required TResult Function(_RemoveSelectedTaskTag value)
        removeSelectedTaskTag,
    required TResult Function(_UpdateSelectedTaskPriority value)
        updateSelectedTaskPriority,
    required TResult Function(_UpdateSelectedTaskStatus value)
        updateSelectedTaskStatus,
    required TResult Function(_AddNewTask value) addNewTask,
    required TResult Function(_AddFullTask value) updateFullTask,
    required TResult Function(_AddNewComment value) addNewComment,
    required TResult Function(_Updateomment value) updateComment,
    required TResult Function(_FetchAllComments value) fetchAllComments,
    required TResult Function(_FetchAllTasks value) fetchAllTasks,
    required TResult Function(_SetPickedFileForComment value)
        setPickedFileForComment,
    required TResult Function(_SyncData value) syncData,
    required TResult Function(_SyncDataInServer value) syncDataInServer,
    required TResult Function(_AddCurrentTimeStampToAllTasksLocally value)
        addCurrentTimeStampToAllTasksLocally,
    required TResult Function(_UpdateCurrentHomeIndex value)
        updateCurrentHomeIndex,
    required TResult Function(_ResetSelectItems value) resetSelectItems,
    required TResult Function(_UpdateFocusedDate value) updateFocusedDate,
    required TResult Function(_ResetMessage value) resetMessage,
    required TResult Function(_UpdateSection value) updateSection,
    required TResult Function(_UpdateTimer value) updateTimer,
    required TResult Function(_UpdateTimerState value) updateTimerState,
    required TResult Function(_UpdateTimerLocally value) updateTimerLocally,
    required TResult Function(_UpdateTimerStateLocally value)
        updateTimerStateLocally,
    required TResult Function(_CompleteTask value) completeTask,
    required TResult Function(_ReopenTaskTask value) reopenTask,
    required TResult Function(_StartTask value) startTask,
    required TResult Function(_DeleteTask value) deleteTask,
    required TResult Function(_DeleteAllTask value) deleteAllTask,
    required TResult Function(_DeleteComment value) deleteComment,
    required TResult Function(_SortByDateDescending value) sortByDateDescending,
    required TResult Function(_SortByNameDescending value) sortByNameDescending,
    required TResult Function(_SortByNameAscending value) sortByNameAscending,
    required TResult Function(_SortByDateAscending value) sortByDateAscending,
    required TResult Function(_SortByPriorityDescending value)
        sortByPriorityDescending,
    required TResult Function(_SortByPriorityAscending value)
        sortByPriorityAscending,
  }) {
    return deleteAllTask(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateSelectedTaskTag value)? updateSelectedTaskTag,
    TResult? Function(_RemoveSelectedTaskTag value)? removeSelectedTaskTag,
    TResult? Function(_UpdateSelectedTaskPriority value)?
        updateSelectedTaskPriority,
    TResult? Function(_UpdateSelectedTaskStatus value)?
        updateSelectedTaskStatus,
    TResult? Function(_AddNewTask value)? addNewTask,
    TResult? Function(_AddFullTask value)? updateFullTask,
    TResult? Function(_AddNewComment value)? addNewComment,
    TResult? Function(_Updateomment value)? updateComment,
    TResult? Function(_FetchAllComments value)? fetchAllComments,
    TResult? Function(_FetchAllTasks value)? fetchAllTasks,
    TResult? Function(_SetPickedFileForComment value)? setPickedFileForComment,
    TResult? Function(_SyncData value)? syncData,
    TResult? Function(_SyncDataInServer value)? syncDataInServer,
    TResult? Function(_AddCurrentTimeStampToAllTasksLocally value)?
        addCurrentTimeStampToAllTasksLocally,
    TResult? Function(_UpdateCurrentHomeIndex value)? updateCurrentHomeIndex,
    TResult? Function(_ResetSelectItems value)? resetSelectItems,
    TResult? Function(_UpdateFocusedDate value)? updateFocusedDate,
    TResult? Function(_ResetMessage value)? resetMessage,
    TResult? Function(_UpdateSection value)? updateSection,
    TResult? Function(_UpdateTimer value)? updateTimer,
    TResult? Function(_UpdateTimerState value)? updateTimerState,
    TResult? Function(_UpdateTimerLocally value)? updateTimerLocally,
    TResult? Function(_UpdateTimerStateLocally value)? updateTimerStateLocally,
    TResult? Function(_CompleteTask value)? completeTask,
    TResult? Function(_ReopenTaskTask value)? reopenTask,
    TResult? Function(_StartTask value)? startTask,
    TResult? Function(_DeleteTask value)? deleteTask,
    TResult? Function(_DeleteAllTask value)? deleteAllTask,
    TResult? Function(_DeleteComment value)? deleteComment,
    TResult? Function(_SortByDateDescending value)? sortByDateDescending,
    TResult? Function(_SortByNameDescending value)? sortByNameDescending,
    TResult? Function(_SortByNameAscending value)? sortByNameAscending,
    TResult? Function(_SortByDateAscending value)? sortByDateAscending,
    TResult? Function(_SortByPriorityDescending value)?
        sortByPriorityDescending,
    TResult? Function(_SortByPriorityAscending value)? sortByPriorityAscending,
  }) {
    return deleteAllTask?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateSelectedTaskTag value)? updateSelectedTaskTag,
    TResult Function(_RemoveSelectedTaskTag value)? removeSelectedTaskTag,
    TResult Function(_UpdateSelectedTaskPriority value)?
        updateSelectedTaskPriority,
    TResult Function(_UpdateSelectedTaskStatus value)? updateSelectedTaskStatus,
    TResult Function(_AddNewTask value)? addNewTask,
    TResult Function(_AddFullTask value)? updateFullTask,
    TResult Function(_AddNewComment value)? addNewComment,
    TResult Function(_Updateomment value)? updateComment,
    TResult Function(_FetchAllComments value)? fetchAllComments,
    TResult Function(_FetchAllTasks value)? fetchAllTasks,
    TResult Function(_SetPickedFileForComment value)? setPickedFileForComment,
    TResult Function(_SyncData value)? syncData,
    TResult Function(_SyncDataInServer value)? syncDataInServer,
    TResult Function(_AddCurrentTimeStampToAllTasksLocally value)?
        addCurrentTimeStampToAllTasksLocally,
    TResult Function(_UpdateCurrentHomeIndex value)? updateCurrentHomeIndex,
    TResult Function(_ResetSelectItems value)? resetSelectItems,
    TResult Function(_UpdateFocusedDate value)? updateFocusedDate,
    TResult Function(_ResetMessage value)? resetMessage,
    TResult Function(_UpdateSection value)? updateSection,
    TResult Function(_UpdateTimer value)? updateTimer,
    TResult Function(_UpdateTimerState value)? updateTimerState,
    TResult Function(_UpdateTimerLocally value)? updateTimerLocally,
    TResult Function(_UpdateTimerStateLocally value)? updateTimerStateLocally,
    TResult Function(_CompleteTask value)? completeTask,
    TResult Function(_ReopenTaskTask value)? reopenTask,
    TResult Function(_StartTask value)? startTask,
    TResult Function(_DeleteTask value)? deleteTask,
    TResult Function(_DeleteAllTask value)? deleteAllTask,
    TResult Function(_DeleteComment value)? deleteComment,
    TResult Function(_SortByDateDescending value)? sortByDateDescending,
    TResult Function(_SortByNameDescending value)? sortByNameDescending,
    TResult Function(_SortByNameAscending value)? sortByNameAscending,
    TResult Function(_SortByDateAscending value)? sortByDateAscending,
    TResult Function(_SortByPriorityDescending value)? sortByPriorityDescending,
    TResult Function(_SortByPriorityAscending value)? sortByPriorityAscending,
    required TResult orElse(),
  }) {
    if (deleteAllTask != null) {
      return deleteAllTask(this);
    }
    return orElse();
  }
}

abstract class _DeleteAllTask implements HomeEvent {
  const factory _DeleteAllTask(
      {required final AppLocalizations appLocalization}) = _$DeleteAllTaskImpl;

  AppLocalizations get appLocalization;
  @JsonKey(ignore: true)
  _$$DeleteAllTaskImplCopyWith<_$DeleteAllTaskImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteCommentImplCopyWith<$Res> {
  factory _$$DeleteCommentImplCopyWith(
          _$DeleteCommentImpl value, $Res Function(_$DeleteCommentImpl) then) =
      __$$DeleteCommentImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String commentId, String taskId});
}

/// @nodoc
class __$$DeleteCommentImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$DeleteCommentImpl>
    implements _$$DeleteCommentImplCopyWith<$Res> {
  __$$DeleteCommentImplCopyWithImpl(
      _$DeleteCommentImpl _value, $Res Function(_$DeleteCommentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? commentId = null,
    Object? taskId = null,
  }) {
    return _then(_$DeleteCommentImpl(
      commentId: null == commentId
          ? _value.commentId
          : commentId // ignore: cast_nullable_to_non_nullable
              as String,
      taskId: null == taskId
          ? _value.taskId
          : taskId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DeleteCommentImpl implements _DeleteComment {
  const _$DeleteCommentImpl({required this.commentId, required this.taskId});

  @override
  final String commentId;
  @override
  final String taskId;

  @override
  String toString() {
    return 'HomeEvent.deleteComment(commentId: $commentId, taskId: $taskId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteCommentImpl &&
            (identical(other.commentId, commentId) ||
                other.commentId == commentId) &&
            (identical(other.taskId, taskId) || other.taskId == taskId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, commentId, taskId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteCommentImplCopyWith<_$DeleteCommentImpl> get copyWith =>
      __$$DeleteCommentImplCopyWithImpl<_$DeleteCommentImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TasksTags tasksTags) updateSelectedTaskTag,
    required TResult Function(int index) removeSelectedTaskTag,
    required TResult Function(TasksPriority taskPriority)
        updateSelectedTaskPriority,
    required TResult Function(TasksStatus tasksStatus) updateSelectedTaskStatus,
    required TResult Function(
            AppLocalizations appLocalization,
            String dueDate,
            String content,
            String description,
            void Function()? Function() onComplete)
        addNewTask,
    required TResult Function(
            AppLocalizations appLocalization,
            String dueDate,
            String content,
            String taskId,
            String description,
            void Function()? Function() onComplete)
        updateFullTask,
    required TResult Function(AppLocalizations appLocalization, String taskId,
            String content, void Function()? Function() onComplete)
        addNewComment,
    required TResult Function(
            AppLocalizations appLocalization,
            String taskId,
            String commentId,
            String content,
            void Function()? Function() onComplete)
        updateComment,
    required TResult Function(
            String taskId, bool isSyncing, InternetState internetState)
        fetchAllComments,
    required TResult Function(bool requiredReload, InternetState internetState)
        fetchAllTasks,
    required TResult Function(File? file) setPickedFileForComment,
    required TResult Function(BuildContext context) syncData,
    required TResult Function() syncDataInServer,
    required TResult Function(int savedTime)
        addCurrentTimeStampToAllTasksLocally,
    required TResult Function(int index) updateCurrentHomeIndex,
    required TResult Function() resetSelectItems,
    required TResult Function(DateTime focusedDate, InternetState internetState)
        updateFocusedDate,
    required TResult Function() resetMessage,
    required TResult Function(String taskId, String fromSectionId,
            String sectionId, List<String> labels)
        updateSection,
    required TResult Function(String taskId, List<String> labels) updateTimer,
    required TResult Function(String taskId, List<String> labels)
        updateTimerState,
    required TResult Function(String taskId, List<String> labels)
        updateTimerLocally,
    required TResult Function(String taskId, List<String> labels)
        updateTimerStateLocally,
    required TResult Function(String taskId, List<String> labels) completeTask,
    required TResult Function(String taskId, List<String> labels) reopenTask,
    required TResult Function(String taskId, List<String> labels) startTask,
    required TResult Function(String taskId) deleteTask,
    required TResult Function(AppLocalizations appLocalization) deleteAllTask,
    required TResult Function(String commentId, String taskId) deleteComment,
    required TResult Function(String id) sortByDateDescending,
    required TResult Function(String id) sortByNameDescending,
    required TResult Function(String id) sortByNameAscending,
    required TResult Function(String id) sortByDateAscending,
    required TResult Function(String id) sortByPriorityDescending,
    required TResult Function(String id) sortByPriorityAscending,
  }) {
    return deleteComment(commentId, taskId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TasksTags tasksTags)? updateSelectedTaskTag,
    TResult? Function(int index)? removeSelectedTaskTag,
    TResult? Function(TasksPriority taskPriority)? updateSelectedTaskPriority,
    TResult? Function(TasksStatus tasksStatus)? updateSelectedTaskStatus,
    TResult? Function(
            AppLocalizations appLocalization,
            String dueDate,
            String content,
            String description,
            void Function()? Function() onComplete)?
        addNewTask,
    TResult? Function(
            AppLocalizations appLocalization,
            String dueDate,
            String content,
            String taskId,
            String description,
            void Function()? Function() onComplete)?
        updateFullTask,
    TResult? Function(AppLocalizations appLocalization, String taskId,
            String content, void Function()? Function() onComplete)?
        addNewComment,
    TResult? Function(
            AppLocalizations appLocalization,
            String taskId,
            String commentId,
            String content,
            void Function()? Function() onComplete)?
        updateComment,
    TResult? Function(
            String taskId, bool isSyncing, InternetState internetState)?
        fetchAllComments,
    TResult? Function(bool requiredReload, InternetState internetState)?
        fetchAllTasks,
    TResult? Function(File? file)? setPickedFileForComment,
    TResult? Function(BuildContext context)? syncData,
    TResult? Function()? syncDataInServer,
    TResult? Function(int savedTime)? addCurrentTimeStampToAllTasksLocally,
    TResult? Function(int index)? updateCurrentHomeIndex,
    TResult? Function()? resetSelectItems,
    TResult? Function(DateTime focusedDate, InternetState internetState)?
        updateFocusedDate,
    TResult? Function()? resetMessage,
    TResult? Function(String taskId, String fromSectionId, String sectionId,
            List<String> labels)?
        updateSection,
    TResult? Function(String taskId, List<String> labels)? updateTimer,
    TResult? Function(String taskId, List<String> labels)? updateTimerState,
    TResult? Function(String taskId, List<String> labels)? updateTimerLocally,
    TResult? Function(String taskId, List<String> labels)?
        updateTimerStateLocally,
    TResult? Function(String taskId, List<String> labels)? completeTask,
    TResult? Function(String taskId, List<String> labels)? reopenTask,
    TResult? Function(String taskId, List<String> labels)? startTask,
    TResult? Function(String taskId)? deleteTask,
    TResult? Function(AppLocalizations appLocalization)? deleteAllTask,
    TResult? Function(String commentId, String taskId)? deleteComment,
    TResult? Function(String id)? sortByDateDescending,
    TResult? Function(String id)? sortByNameDescending,
    TResult? Function(String id)? sortByNameAscending,
    TResult? Function(String id)? sortByDateAscending,
    TResult? Function(String id)? sortByPriorityDescending,
    TResult? Function(String id)? sortByPriorityAscending,
  }) {
    return deleteComment?.call(commentId, taskId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TasksTags tasksTags)? updateSelectedTaskTag,
    TResult Function(int index)? removeSelectedTaskTag,
    TResult Function(TasksPriority taskPriority)? updateSelectedTaskPriority,
    TResult Function(TasksStatus tasksStatus)? updateSelectedTaskStatus,
    TResult Function(
            AppLocalizations appLocalization,
            String dueDate,
            String content,
            String description,
            void Function()? Function() onComplete)?
        addNewTask,
    TResult Function(
            AppLocalizations appLocalization,
            String dueDate,
            String content,
            String taskId,
            String description,
            void Function()? Function() onComplete)?
        updateFullTask,
    TResult Function(AppLocalizations appLocalization, String taskId,
            String content, void Function()? Function() onComplete)?
        addNewComment,
    TResult Function(
            AppLocalizations appLocalization,
            String taskId,
            String commentId,
            String content,
            void Function()? Function() onComplete)?
        updateComment,
    TResult Function(
            String taskId, bool isSyncing, InternetState internetState)?
        fetchAllComments,
    TResult Function(bool requiredReload, InternetState internetState)?
        fetchAllTasks,
    TResult Function(File? file)? setPickedFileForComment,
    TResult Function(BuildContext context)? syncData,
    TResult Function()? syncDataInServer,
    TResult Function(int savedTime)? addCurrentTimeStampToAllTasksLocally,
    TResult Function(int index)? updateCurrentHomeIndex,
    TResult Function()? resetSelectItems,
    TResult Function(DateTime focusedDate, InternetState internetState)?
        updateFocusedDate,
    TResult Function()? resetMessage,
    TResult Function(String taskId, String fromSectionId, String sectionId,
            List<String> labels)?
        updateSection,
    TResult Function(String taskId, List<String> labels)? updateTimer,
    TResult Function(String taskId, List<String> labels)? updateTimerState,
    TResult Function(String taskId, List<String> labels)? updateTimerLocally,
    TResult Function(String taskId, List<String> labels)?
        updateTimerStateLocally,
    TResult Function(String taskId, List<String> labels)? completeTask,
    TResult Function(String taskId, List<String> labels)? reopenTask,
    TResult Function(String taskId, List<String> labels)? startTask,
    TResult Function(String taskId)? deleteTask,
    TResult Function(AppLocalizations appLocalization)? deleteAllTask,
    TResult Function(String commentId, String taskId)? deleteComment,
    TResult Function(String id)? sortByDateDescending,
    TResult Function(String id)? sortByNameDescending,
    TResult Function(String id)? sortByNameAscending,
    TResult Function(String id)? sortByDateAscending,
    TResult Function(String id)? sortByPriorityDescending,
    TResult Function(String id)? sortByPriorityAscending,
    required TResult orElse(),
  }) {
    if (deleteComment != null) {
      return deleteComment(commentId, taskId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateSelectedTaskTag value)
        updateSelectedTaskTag,
    required TResult Function(_RemoveSelectedTaskTag value)
        removeSelectedTaskTag,
    required TResult Function(_UpdateSelectedTaskPriority value)
        updateSelectedTaskPriority,
    required TResult Function(_UpdateSelectedTaskStatus value)
        updateSelectedTaskStatus,
    required TResult Function(_AddNewTask value) addNewTask,
    required TResult Function(_AddFullTask value) updateFullTask,
    required TResult Function(_AddNewComment value) addNewComment,
    required TResult Function(_Updateomment value) updateComment,
    required TResult Function(_FetchAllComments value) fetchAllComments,
    required TResult Function(_FetchAllTasks value) fetchAllTasks,
    required TResult Function(_SetPickedFileForComment value)
        setPickedFileForComment,
    required TResult Function(_SyncData value) syncData,
    required TResult Function(_SyncDataInServer value) syncDataInServer,
    required TResult Function(_AddCurrentTimeStampToAllTasksLocally value)
        addCurrentTimeStampToAllTasksLocally,
    required TResult Function(_UpdateCurrentHomeIndex value)
        updateCurrentHomeIndex,
    required TResult Function(_ResetSelectItems value) resetSelectItems,
    required TResult Function(_UpdateFocusedDate value) updateFocusedDate,
    required TResult Function(_ResetMessage value) resetMessage,
    required TResult Function(_UpdateSection value) updateSection,
    required TResult Function(_UpdateTimer value) updateTimer,
    required TResult Function(_UpdateTimerState value) updateTimerState,
    required TResult Function(_UpdateTimerLocally value) updateTimerLocally,
    required TResult Function(_UpdateTimerStateLocally value)
        updateTimerStateLocally,
    required TResult Function(_CompleteTask value) completeTask,
    required TResult Function(_ReopenTaskTask value) reopenTask,
    required TResult Function(_StartTask value) startTask,
    required TResult Function(_DeleteTask value) deleteTask,
    required TResult Function(_DeleteAllTask value) deleteAllTask,
    required TResult Function(_DeleteComment value) deleteComment,
    required TResult Function(_SortByDateDescending value) sortByDateDescending,
    required TResult Function(_SortByNameDescending value) sortByNameDescending,
    required TResult Function(_SortByNameAscending value) sortByNameAscending,
    required TResult Function(_SortByDateAscending value) sortByDateAscending,
    required TResult Function(_SortByPriorityDescending value)
        sortByPriorityDescending,
    required TResult Function(_SortByPriorityAscending value)
        sortByPriorityAscending,
  }) {
    return deleteComment(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateSelectedTaskTag value)? updateSelectedTaskTag,
    TResult? Function(_RemoveSelectedTaskTag value)? removeSelectedTaskTag,
    TResult? Function(_UpdateSelectedTaskPriority value)?
        updateSelectedTaskPriority,
    TResult? Function(_UpdateSelectedTaskStatus value)?
        updateSelectedTaskStatus,
    TResult? Function(_AddNewTask value)? addNewTask,
    TResult? Function(_AddFullTask value)? updateFullTask,
    TResult? Function(_AddNewComment value)? addNewComment,
    TResult? Function(_Updateomment value)? updateComment,
    TResult? Function(_FetchAllComments value)? fetchAllComments,
    TResult? Function(_FetchAllTasks value)? fetchAllTasks,
    TResult? Function(_SetPickedFileForComment value)? setPickedFileForComment,
    TResult? Function(_SyncData value)? syncData,
    TResult? Function(_SyncDataInServer value)? syncDataInServer,
    TResult? Function(_AddCurrentTimeStampToAllTasksLocally value)?
        addCurrentTimeStampToAllTasksLocally,
    TResult? Function(_UpdateCurrentHomeIndex value)? updateCurrentHomeIndex,
    TResult? Function(_ResetSelectItems value)? resetSelectItems,
    TResult? Function(_UpdateFocusedDate value)? updateFocusedDate,
    TResult? Function(_ResetMessage value)? resetMessage,
    TResult? Function(_UpdateSection value)? updateSection,
    TResult? Function(_UpdateTimer value)? updateTimer,
    TResult? Function(_UpdateTimerState value)? updateTimerState,
    TResult? Function(_UpdateTimerLocally value)? updateTimerLocally,
    TResult? Function(_UpdateTimerStateLocally value)? updateTimerStateLocally,
    TResult? Function(_CompleteTask value)? completeTask,
    TResult? Function(_ReopenTaskTask value)? reopenTask,
    TResult? Function(_StartTask value)? startTask,
    TResult? Function(_DeleteTask value)? deleteTask,
    TResult? Function(_DeleteAllTask value)? deleteAllTask,
    TResult? Function(_DeleteComment value)? deleteComment,
    TResult? Function(_SortByDateDescending value)? sortByDateDescending,
    TResult? Function(_SortByNameDescending value)? sortByNameDescending,
    TResult? Function(_SortByNameAscending value)? sortByNameAscending,
    TResult? Function(_SortByDateAscending value)? sortByDateAscending,
    TResult? Function(_SortByPriorityDescending value)?
        sortByPriorityDescending,
    TResult? Function(_SortByPriorityAscending value)? sortByPriorityAscending,
  }) {
    return deleteComment?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateSelectedTaskTag value)? updateSelectedTaskTag,
    TResult Function(_RemoveSelectedTaskTag value)? removeSelectedTaskTag,
    TResult Function(_UpdateSelectedTaskPriority value)?
        updateSelectedTaskPriority,
    TResult Function(_UpdateSelectedTaskStatus value)? updateSelectedTaskStatus,
    TResult Function(_AddNewTask value)? addNewTask,
    TResult Function(_AddFullTask value)? updateFullTask,
    TResult Function(_AddNewComment value)? addNewComment,
    TResult Function(_Updateomment value)? updateComment,
    TResult Function(_FetchAllComments value)? fetchAllComments,
    TResult Function(_FetchAllTasks value)? fetchAllTasks,
    TResult Function(_SetPickedFileForComment value)? setPickedFileForComment,
    TResult Function(_SyncData value)? syncData,
    TResult Function(_SyncDataInServer value)? syncDataInServer,
    TResult Function(_AddCurrentTimeStampToAllTasksLocally value)?
        addCurrentTimeStampToAllTasksLocally,
    TResult Function(_UpdateCurrentHomeIndex value)? updateCurrentHomeIndex,
    TResult Function(_ResetSelectItems value)? resetSelectItems,
    TResult Function(_UpdateFocusedDate value)? updateFocusedDate,
    TResult Function(_ResetMessage value)? resetMessage,
    TResult Function(_UpdateSection value)? updateSection,
    TResult Function(_UpdateTimer value)? updateTimer,
    TResult Function(_UpdateTimerState value)? updateTimerState,
    TResult Function(_UpdateTimerLocally value)? updateTimerLocally,
    TResult Function(_UpdateTimerStateLocally value)? updateTimerStateLocally,
    TResult Function(_CompleteTask value)? completeTask,
    TResult Function(_ReopenTaskTask value)? reopenTask,
    TResult Function(_StartTask value)? startTask,
    TResult Function(_DeleteTask value)? deleteTask,
    TResult Function(_DeleteAllTask value)? deleteAllTask,
    TResult Function(_DeleteComment value)? deleteComment,
    TResult Function(_SortByDateDescending value)? sortByDateDescending,
    TResult Function(_SortByNameDescending value)? sortByNameDescending,
    TResult Function(_SortByNameAscending value)? sortByNameAscending,
    TResult Function(_SortByDateAscending value)? sortByDateAscending,
    TResult Function(_SortByPriorityDescending value)? sortByPriorityDescending,
    TResult Function(_SortByPriorityAscending value)? sortByPriorityAscending,
    required TResult orElse(),
  }) {
    if (deleteComment != null) {
      return deleteComment(this);
    }
    return orElse();
  }
}

abstract class _DeleteComment implements HomeEvent {
  const factory _DeleteComment(
      {required final String commentId,
      required final String taskId}) = _$DeleteCommentImpl;

  String get commentId;
  String get taskId;
  @JsonKey(ignore: true)
  _$$DeleteCommentImplCopyWith<_$DeleteCommentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SortByDateDescendingImplCopyWith<$Res> {
  factory _$$SortByDateDescendingImplCopyWith(_$SortByDateDescendingImpl value,
          $Res Function(_$SortByDateDescendingImpl) then) =
      __$$SortByDateDescendingImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$SortByDateDescendingImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$SortByDateDescendingImpl>
    implements _$$SortByDateDescendingImplCopyWith<$Res> {
  __$$SortByDateDescendingImplCopyWithImpl(_$SortByDateDescendingImpl _value,
      $Res Function(_$SortByDateDescendingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$SortByDateDescendingImpl(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SortByDateDescendingImpl implements _SortByDateDescending {
  const _$SortByDateDescendingImpl(this.id);

  @override
  final String id;

  @override
  String toString() {
    return 'HomeEvent.sortByDateDescending(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SortByDateDescendingImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SortByDateDescendingImplCopyWith<_$SortByDateDescendingImpl>
      get copyWith =>
          __$$SortByDateDescendingImplCopyWithImpl<_$SortByDateDescendingImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TasksTags tasksTags) updateSelectedTaskTag,
    required TResult Function(int index) removeSelectedTaskTag,
    required TResult Function(TasksPriority taskPriority)
        updateSelectedTaskPriority,
    required TResult Function(TasksStatus tasksStatus) updateSelectedTaskStatus,
    required TResult Function(
            AppLocalizations appLocalization,
            String dueDate,
            String content,
            String description,
            void Function()? Function() onComplete)
        addNewTask,
    required TResult Function(
            AppLocalizations appLocalization,
            String dueDate,
            String content,
            String taskId,
            String description,
            void Function()? Function() onComplete)
        updateFullTask,
    required TResult Function(AppLocalizations appLocalization, String taskId,
            String content, void Function()? Function() onComplete)
        addNewComment,
    required TResult Function(
            AppLocalizations appLocalization,
            String taskId,
            String commentId,
            String content,
            void Function()? Function() onComplete)
        updateComment,
    required TResult Function(
            String taskId, bool isSyncing, InternetState internetState)
        fetchAllComments,
    required TResult Function(bool requiredReload, InternetState internetState)
        fetchAllTasks,
    required TResult Function(File? file) setPickedFileForComment,
    required TResult Function(BuildContext context) syncData,
    required TResult Function() syncDataInServer,
    required TResult Function(int savedTime)
        addCurrentTimeStampToAllTasksLocally,
    required TResult Function(int index) updateCurrentHomeIndex,
    required TResult Function() resetSelectItems,
    required TResult Function(DateTime focusedDate, InternetState internetState)
        updateFocusedDate,
    required TResult Function() resetMessage,
    required TResult Function(String taskId, String fromSectionId,
            String sectionId, List<String> labels)
        updateSection,
    required TResult Function(String taskId, List<String> labels) updateTimer,
    required TResult Function(String taskId, List<String> labels)
        updateTimerState,
    required TResult Function(String taskId, List<String> labels)
        updateTimerLocally,
    required TResult Function(String taskId, List<String> labels)
        updateTimerStateLocally,
    required TResult Function(String taskId, List<String> labels) completeTask,
    required TResult Function(String taskId, List<String> labels) reopenTask,
    required TResult Function(String taskId, List<String> labels) startTask,
    required TResult Function(String taskId) deleteTask,
    required TResult Function(AppLocalizations appLocalization) deleteAllTask,
    required TResult Function(String commentId, String taskId) deleteComment,
    required TResult Function(String id) sortByDateDescending,
    required TResult Function(String id) sortByNameDescending,
    required TResult Function(String id) sortByNameAscending,
    required TResult Function(String id) sortByDateAscending,
    required TResult Function(String id) sortByPriorityDescending,
    required TResult Function(String id) sortByPriorityAscending,
  }) {
    return sortByDateDescending(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TasksTags tasksTags)? updateSelectedTaskTag,
    TResult? Function(int index)? removeSelectedTaskTag,
    TResult? Function(TasksPriority taskPriority)? updateSelectedTaskPriority,
    TResult? Function(TasksStatus tasksStatus)? updateSelectedTaskStatus,
    TResult? Function(
            AppLocalizations appLocalization,
            String dueDate,
            String content,
            String description,
            void Function()? Function() onComplete)?
        addNewTask,
    TResult? Function(
            AppLocalizations appLocalization,
            String dueDate,
            String content,
            String taskId,
            String description,
            void Function()? Function() onComplete)?
        updateFullTask,
    TResult? Function(AppLocalizations appLocalization, String taskId,
            String content, void Function()? Function() onComplete)?
        addNewComment,
    TResult? Function(
            AppLocalizations appLocalization,
            String taskId,
            String commentId,
            String content,
            void Function()? Function() onComplete)?
        updateComment,
    TResult? Function(
            String taskId, bool isSyncing, InternetState internetState)?
        fetchAllComments,
    TResult? Function(bool requiredReload, InternetState internetState)?
        fetchAllTasks,
    TResult? Function(File? file)? setPickedFileForComment,
    TResult? Function(BuildContext context)? syncData,
    TResult? Function()? syncDataInServer,
    TResult? Function(int savedTime)? addCurrentTimeStampToAllTasksLocally,
    TResult? Function(int index)? updateCurrentHomeIndex,
    TResult? Function()? resetSelectItems,
    TResult? Function(DateTime focusedDate, InternetState internetState)?
        updateFocusedDate,
    TResult? Function()? resetMessage,
    TResult? Function(String taskId, String fromSectionId, String sectionId,
            List<String> labels)?
        updateSection,
    TResult? Function(String taskId, List<String> labels)? updateTimer,
    TResult? Function(String taskId, List<String> labels)? updateTimerState,
    TResult? Function(String taskId, List<String> labels)? updateTimerLocally,
    TResult? Function(String taskId, List<String> labels)?
        updateTimerStateLocally,
    TResult? Function(String taskId, List<String> labels)? completeTask,
    TResult? Function(String taskId, List<String> labels)? reopenTask,
    TResult? Function(String taskId, List<String> labels)? startTask,
    TResult? Function(String taskId)? deleteTask,
    TResult? Function(AppLocalizations appLocalization)? deleteAllTask,
    TResult? Function(String commentId, String taskId)? deleteComment,
    TResult? Function(String id)? sortByDateDescending,
    TResult? Function(String id)? sortByNameDescending,
    TResult? Function(String id)? sortByNameAscending,
    TResult? Function(String id)? sortByDateAscending,
    TResult? Function(String id)? sortByPriorityDescending,
    TResult? Function(String id)? sortByPriorityAscending,
  }) {
    return sortByDateDescending?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TasksTags tasksTags)? updateSelectedTaskTag,
    TResult Function(int index)? removeSelectedTaskTag,
    TResult Function(TasksPriority taskPriority)? updateSelectedTaskPriority,
    TResult Function(TasksStatus tasksStatus)? updateSelectedTaskStatus,
    TResult Function(
            AppLocalizations appLocalization,
            String dueDate,
            String content,
            String description,
            void Function()? Function() onComplete)?
        addNewTask,
    TResult Function(
            AppLocalizations appLocalization,
            String dueDate,
            String content,
            String taskId,
            String description,
            void Function()? Function() onComplete)?
        updateFullTask,
    TResult Function(AppLocalizations appLocalization, String taskId,
            String content, void Function()? Function() onComplete)?
        addNewComment,
    TResult Function(
            AppLocalizations appLocalization,
            String taskId,
            String commentId,
            String content,
            void Function()? Function() onComplete)?
        updateComment,
    TResult Function(
            String taskId, bool isSyncing, InternetState internetState)?
        fetchAllComments,
    TResult Function(bool requiredReload, InternetState internetState)?
        fetchAllTasks,
    TResult Function(File? file)? setPickedFileForComment,
    TResult Function(BuildContext context)? syncData,
    TResult Function()? syncDataInServer,
    TResult Function(int savedTime)? addCurrentTimeStampToAllTasksLocally,
    TResult Function(int index)? updateCurrentHomeIndex,
    TResult Function()? resetSelectItems,
    TResult Function(DateTime focusedDate, InternetState internetState)?
        updateFocusedDate,
    TResult Function()? resetMessage,
    TResult Function(String taskId, String fromSectionId, String sectionId,
            List<String> labels)?
        updateSection,
    TResult Function(String taskId, List<String> labels)? updateTimer,
    TResult Function(String taskId, List<String> labels)? updateTimerState,
    TResult Function(String taskId, List<String> labels)? updateTimerLocally,
    TResult Function(String taskId, List<String> labels)?
        updateTimerStateLocally,
    TResult Function(String taskId, List<String> labels)? completeTask,
    TResult Function(String taskId, List<String> labels)? reopenTask,
    TResult Function(String taskId, List<String> labels)? startTask,
    TResult Function(String taskId)? deleteTask,
    TResult Function(AppLocalizations appLocalization)? deleteAllTask,
    TResult Function(String commentId, String taskId)? deleteComment,
    TResult Function(String id)? sortByDateDescending,
    TResult Function(String id)? sortByNameDescending,
    TResult Function(String id)? sortByNameAscending,
    TResult Function(String id)? sortByDateAscending,
    TResult Function(String id)? sortByPriorityDescending,
    TResult Function(String id)? sortByPriorityAscending,
    required TResult orElse(),
  }) {
    if (sortByDateDescending != null) {
      return sortByDateDescending(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateSelectedTaskTag value)
        updateSelectedTaskTag,
    required TResult Function(_RemoveSelectedTaskTag value)
        removeSelectedTaskTag,
    required TResult Function(_UpdateSelectedTaskPriority value)
        updateSelectedTaskPriority,
    required TResult Function(_UpdateSelectedTaskStatus value)
        updateSelectedTaskStatus,
    required TResult Function(_AddNewTask value) addNewTask,
    required TResult Function(_AddFullTask value) updateFullTask,
    required TResult Function(_AddNewComment value) addNewComment,
    required TResult Function(_Updateomment value) updateComment,
    required TResult Function(_FetchAllComments value) fetchAllComments,
    required TResult Function(_FetchAllTasks value) fetchAllTasks,
    required TResult Function(_SetPickedFileForComment value)
        setPickedFileForComment,
    required TResult Function(_SyncData value) syncData,
    required TResult Function(_SyncDataInServer value) syncDataInServer,
    required TResult Function(_AddCurrentTimeStampToAllTasksLocally value)
        addCurrentTimeStampToAllTasksLocally,
    required TResult Function(_UpdateCurrentHomeIndex value)
        updateCurrentHomeIndex,
    required TResult Function(_ResetSelectItems value) resetSelectItems,
    required TResult Function(_UpdateFocusedDate value) updateFocusedDate,
    required TResult Function(_ResetMessage value) resetMessage,
    required TResult Function(_UpdateSection value) updateSection,
    required TResult Function(_UpdateTimer value) updateTimer,
    required TResult Function(_UpdateTimerState value) updateTimerState,
    required TResult Function(_UpdateTimerLocally value) updateTimerLocally,
    required TResult Function(_UpdateTimerStateLocally value)
        updateTimerStateLocally,
    required TResult Function(_CompleteTask value) completeTask,
    required TResult Function(_ReopenTaskTask value) reopenTask,
    required TResult Function(_StartTask value) startTask,
    required TResult Function(_DeleteTask value) deleteTask,
    required TResult Function(_DeleteAllTask value) deleteAllTask,
    required TResult Function(_DeleteComment value) deleteComment,
    required TResult Function(_SortByDateDescending value) sortByDateDescending,
    required TResult Function(_SortByNameDescending value) sortByNameDescending,
    required TResult Function(_SortByNameAscending value) sortByNameAscending,
    required TResult Function(_SortByDateAscending value) sortByDateAscending,
    required TResult Function(_SortByPriorityDescending value)
        sortByPriorityDescending,
    required TResult Function(_SortByPriorityAscending value)
        sortByPriorityAscending,
  }) {
    return sortByDateDescending(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateSelectedTaskTag value)? updateSelectedTaskTag,
    TResult? Function(_RemoveSelectedTaskTag value)? removeSelectedTaskTag,
    TResult? Function(_UpdateSelectedTaskPriority value)?
        updateSelectedTaskPriority,
    TResult? Function(_UpdateSelectedTaskStatus value)?
        updateSelectedTaskStatus,
    TResult? Function(_AddNewTask value)? addNewTask,
    TResult? Function(_AddFullTask value)? updateFullTask,
    TResult? Function(_AddNewComment value)? addNewComment,
    TResult? Function(_Updateomment value)? updateComment,
    TResult? Function(_FetchAllComments value)? fetchAllComments,
    TResult? Function(_FetchAllTasks value)? fetchAllTasks,
    TResult? Function(_SetPickedFileForComment value)? setPickedFileForComment,
    TResult? Function(_SyncData value)? syncData,
    TResult? Function(_SyncDataInServer value)? syncDataInServer,
    TResult? Function(_AddCurrentTimeStampToAllTasksLocally value)?
        addCurrentTimeStampToAllTasksLocally,
    TResult? Function(_UpdateCurrentHomeIndex value)? updateCurrentHomeIndex,
    TResult? Function(_ResetSelectItems value)? resetSelectItems,
    TResult? Function(_UpdateFocusedDate value)? updateFocusedDate,
    TResult? Function(_ResetMessage value)? resetMessage,
    TResult? Function(_UpdateSection value)? updateSection,
    TResult? Function(_UpdateTimer value)? updateTimer,
    TResult? Function(_UpdateTimerState value)? updateTimerState,
    TResult? Function(_UpdateTimerLocally value)? updateTimerLocally,
    TResult? Function(_UpdateTimerStateLocally value)? updateTimerStateLocally,
    TResult? Function(_CompleteTask value)? completeTask,
    TResult? Function(_ReopenTaskTask value)? reopenTask,
    TResult? Function(_StartTask value)? startTask,
    TResult? Function(_DeleteTask value)? deleteTask,
    TResult? Function(_DeleteAllTask value)? deleteAllTask,
    TResult? Function(_DeleteComment value)? deleteComment,
    TResult? Function(_SortByDateDescending value)? sortByDateDescending,
    TResult? Function(_SortByNameDescending value)? sortByNameDescending,
    TResult? Function(_SortByNameAscending value)? sortByNameAscending,
    TResult? Function(_SortByDateAscending value)? sortByDateAscending,
    TResult? Function(_SortByPriorityDescending value)?
        sortByPriorityDescending,
    TResult? Function(_SortByPriorityAscending value)? sortByPriorityAscending,
  }) {
    return sortByDateDescending?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateSelectedTaskTag value)? updateSelectedTaskTag,
    TResult Function(_RemoveSelectedTaskTag value)? removeSelectedTaskTag,
    TResult Function(_UpdateSelectedTaskPriority value)?
        updateSelectedTaskPriority,
    TResult Function(_UpdateSelectedTaskStatus value)? updateSelectedTaskStatus,
    TResult Function(_AddNewTask value)? addNewTask,
    TResult Function(_AddFullTask value)? updateFullTask,
    TResult Function(_AddNewComment value)? addNewComment,
    TResult Function(_Updateomment value)? updateComment,
    TResult Function(_FetchAllComments value)? fetchAllComments,
    TResult Function(_FetchAllTasks value)? fetchAllTasks,
    TResult Function(_SetPickedFileForComment value)? setPickedFileForComment,
    TResult Function(_SyncData value)? syncData,
    TResult Function(_SyncDataInServer value)? syncDataInServer,
    TResult Function(_AddCurrentTimeStampToAllTasksLocally value)?
        addCurrentTimeStampToAllTasksLocally,
    TResult Function(_UpdateCurrentHomeIndex value)? updateCurrentHomeIndex,
    TResult Function(_ResetSelectItems value)? resetSelectItems,
    TResult Function(_UpdateFocusedDate value)? updateFocusedDate,
    TResult Function(_ResetMessage value)? resetMessage,
    TResult Function(_UpdateSection value)? updateSection,
    TResult Function(_UpdateTimer value)? updateTimer,
    TResult Function(_UpdateTimerState value)? updateTimerState,
    TResult Function(_UpdateTimerLocally value)? updateTimerLocally,
    TResult Function(_UpdateTimerStateLocally value)? updateTimerStateLocally,
    TResult Function(_CompleteTask value)? completeTask,
    TResult Function(_ReopenTaskTask value)? reopenTask,
    TResult Function(_StartTask value)? startTask,
    TResult Function(_DeleteTask value)? deleteTask,
    TResult Function(_DeleteAllTask value)? deleteAllTask,
    TResult Function(_DeleteComment value)? deleteComment,
    TResult Function(_SortByDateDescending value)? sortByDateDescending,
    TResult Function(_SortByNameDescending value)? sortByNameDescending,
    TResult Function(_SortByNameAscending value)? sortByNameAscending,
    TResult Function(_SortByDateAscending value)? sortByDateAscending,
    TResult Function(_SortByPriorityDescending value)? sortByPriorityDescending,
    TResult Function(_SortByPriorityAscending value)? sortByPriorityAscending,
    required TResult orElse(),
  }) {
    if (sortByDateDescending != null) {
      return sortByDateDescending(this);
    }
    return orElse();
  }
}

abstract class _SortByDateDescending implements HomeEvent {
  const factory _SortByDateDescending(final String id) =
      _$SortByDateDescendingImpl;

  String get id;
  @JsonKey(ignore: true)
  _$$SortByDateDescendingImplCopyWith<_$SortByDateDescendingImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SortByNameDescendingImplCopyWith<$Res> {
  factory _$$SortByNameDescendingImplCopyWith(_$SortByNameDescendingImpl value,
          $Res Function(_$SortByNameDescendingImpl) then) =
      __$$SortByNameDescendingImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$SortByNameDescendingImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$SortByNameDescendingImpl>
    implements _$$SortByNameDescendingImplCopyWith<$Res> {
  __$$SortByNameDescendingImplCopyWithImpl(_$SortByNameDescendingImpl _value,
      $Res Function(_$SortByNameDescendingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$SortByNameDescendingImpl(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SortByNameDescendingImpl implements _SortByNameDescending {
  const _$SortByNameDescendingImpl(this.id);

  @override
  final String id;

  @override
  String toString() {
    return 'HomeEvent.sortByNameDescending(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SortByNameDescendingImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SortByNameDescendingImplCopyWith<_$SortByNameDescendingImpl>
      get copyWith =>
          __$$SortByNameDescendingImplCopyWithImpl<_$SortByNameDescendingImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TasksTags tasksTags) updateSelectedTaskTag,
    required TResult Function(int index) removeSelectedTaskTag,
    required TResult Function(TasksPriority taskPriority)
        updateSelectedTaskPriority,
    required TResult Function(TasksStatus tasksStatus) updateSelectedTaskStatus,
    required TResult Function(
            AppLocalizations appLocalization,
            String dueDate,
            String content,
            String description,
            void Function()? Function() onComplete)
        addNewTask,
    required TResult Function(
            AppLocalizations appLocalization,
            String dueDate,
            String content,
            String taskId,
            String description,
            void Function()? Function() onComplete)
        updateFullTask,
    required TResult Function(AppLocalizations appLocalization, String taskId,
            String content, void Function()? Function() onComplete)
        addNewComment,
    required TResult Function(
            AppLocalizations appLocalization,
            String taskId,
            String commentId,
            String content,
            void Function()? Function() onComplete)
        updateComment,
    required TResult Function(
            String taskId, bool isSyncing, InternetState internetState)
        fetchAllComments,
    required TResult Function(bool requiredReload, InternetState internetState)
        fetchAllTasks,
    required TResult Function(File? file) setPickedFileForComment,
    required TResult Function(BuildContext context) syncData,
    required TResult Function() syncDataInServer,
    required TResult Function(int savedTime)
        addCurrentTimeStampToAllTasksLocally,
    required TResult Function(int index) updateCurrentHomeIndex,
    required TResult Function() resetSelectItems,
    required TResult Function(DateTime focusedDate, InternetState internetState)
        updateFocusedDate,
    required TResult Function() resetMessage,
    required TResult Function(String taskId, String fromSectionId,
            String sectionId, List<String> labels)
        updateSection,
    required TResult Function(String taskId, List<String> labels) updateTimer,
    required TResult Function(String taskId, List<String> labels)
        updateTimerState,
    required TResult Function(String taskId, List<String> labels)
        updateTimerLocally,
    required TResult Function(String taskId, List<String> labels)
        updateTimerStateLocally,
    required TResult Function(String taskId, List<String> labels) completeTask,
    required TResult Function(String taskId, List<String> labels) reopenTask,
    required TResult Function(String taskId, List<String> labels) startTask,
    required TResult Function(String taskId) deleteTask,
    required TResult Function(AppLocalizations appLocalization) deleteAllTask,
    required TResult Function(String commentId, String taskId) deleteComment,
    required TResult Function(String id) sortByDateDescending,
    required TResult Function(String id) sortByNameDescending,
    required TResult Function(String id) sortByNameAscending,
    required TResult Function(String id) sortByDateAscending,
    required TResult Function(String id) sortByPriorityDescending,
    required TResult Function(String id) sortByPriorityAscending,
  }) {
    return sortByNameDescending(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TasksTags tasksTags)? updateSelectedTaskTag,
    TResult? Function(int index)? removeSelectedTaskTag,
    TResult? Function(TasksPriority taskPriority)? updateSelectedTaskPriority,
    TResult? Function(TasksStatus tasksStatus)? updateSelectedTaskStatus,
    TResult? Function(
            AppLocalizations appLocalization,
            String dueDate,
            String content,
            String description,
            void Function()? Function() onComplete)?
        addNewTask,
    TResult? Function(
            AppLocalizations appLocalization,
            String dueDate,
            String content,
            String taskId,
            String description,
            void Function()? Function() onComplete)?
        updateFullTask,
    TResult? Function(AppLocalizations appLocalization, String taskId,
            String content, void Function()? Function() onComplete)?
        addNewComment,
    TResult? Function(
            AppLocalizations appLocalization,
            String taskId,
            String commentId,
            String content,
            void Function()? Function() onComplete)?
        updateComment,
    TResult? Function(
            String taskId, bool isSyncing, InternetState internetState)?
        fetchAllComments,
    TResult? Function(bool requiredReload, InternetState internetState)?
        fetchAllTasks,
    TResult? Function(File? file)? setPickedFileForComment,
    TResult? Function(BuildContext context)? syncData,
    TResult? Function()? syncDataInServer,
    TResult? Function(int savedTime)? addCurrentTimeStampToAllTasksLocally,
    TResult? Function(int index)? updateCurrentHomeIndex,
    TResult? Function()? resetSelectItems,
    TResult? Function(DateTime focusedDate, InternetState internetState)?
        updateFocusedDate,
    TResult? Function()? resetMessage,
    TResult? Function(String taskId, String fromSectionId, String sectionId,
            List<String> labels)?
        updateSection,
    TResult? Function(String taskId, List<String> labels)? updateTimer,
    TResult? Function(String taskId, List<String> labels)? updateTimerState,
    TResult? Function(String taskId, List<String> labels)? updateTimerLocally,
    TResult? Function(String taskId, List<String> labels)?
        updateTimerStateLocally,
    TResult? Function(String taskId, List<String> labels)? completeTask,
    TResult? Function(String taskId, List<String> labels)? reopenTask,
    TResult? Function(String taskId, List<String> labels)? startTask,
    TResult? Function(String taskId)? deleteTask,
    TResult? Function(AppLocalizations appLocalization)? deleteAllTask,
    TResult? Function(String commentId, String taskId)? deleteComment,
    TResult? Function(String id)? sortByDateDescending,
    TResult? Function(String id)? sortByNameDescending,
    TResult? Function(String id)? sortByNameAscending,
    TResult? Function(String id)? sortByDateAscending,
    TResult? Function(String id)? sortByPriorityDescending,
    TResult? Function(String id)? sortByPriorityAscending,
  }) {
    return sortByNameDescending?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TasksTags tasksTags)? updateSelectedTaskTag,
    TResult Function(int index)? removeSelectedTaskTag,
    TResult Function(TasksPriority taskPriority)? updateSelectedTaskPriority,
    TResult Function(TasksStatus tasksStatus)? updateSelectedTaskStatus,
    TResult Function(
            AppLocalizations appLocalization,
            String dueDate,
            String content,
            String description,
            void Function()? Function() onComplete)?
        addNewTask,
    TResult Function(
            AppLocalizations appLocalization,
            String dueDate,
            String content,
            String taskId,
            String description,
            void Function()? Function() onComplete)?
        updateFullTask,
    TResult Function(AppLocalizations appLocalization, String taskId,
            String content, void Function()? Function() onComplete)?
        addNewComment,
    TResult Function(
            AppLocalizations appLocalization,
            String taskId,
            String commentId,
            String content,
            void Function()? Function() onComplete)?
        updateComment,
    TResult Function(
            String taskId, bool isSyncing, InternetState internetState)?
        fetchAllComments,
    TResult Function(bool requiredReload, InternetState internetState)?
        fetchAllTasks,
    TResult Function(File? file)? setPickedFileForComment,
    TResult Function(BuildContext context)? syncData,
    TResult Function()? syncDataInServer,
    TResult Function(int savedTime)? addCurrentTimeStampToAllTasksLocally,
    TResult Function(int index)? updateCurrentHomeIndex,
    TResult Function()? resetSelectItems,
    TResult Function(DateTime focusedDate, InternetState internetState)?
        updateFocusedDate,
    TResult Function()? resetMessage,
    TResult Function(String taskId, String fromSectionId, String sectionId,
            List<String> labels)?
        updateSection,
    TResult Function(String taskId, List<String> labels)? updateTimer,
    TResult Function(String taskId, List<String> labels)? updateTimerState,
    TResult Function(String taskId, List<String> labels)? updateTimerLocally,
    TResult Function(String taskId, List<String> labels)?
        updateTimerStateLocally,
    TResult Function(String taskId, List<String> labels)? completeTask,
    TResult Function(String taskId, List<String> labels)? reopenTask,
    TResult Function(String taskId, List<String> labels)? startTask,
    TResult Function(String taskId)? deleteTask,
    TResult Function(AppLocalizations appLocalization)? deleteAllTask,
    TResult Function(String commentId, String taskId)? deleteComment,
    TResult Function(String id)? sortByDateDescending,
    TResult Function(String id)? sortByNameDescending,
    TResult Function(String id)? sortByNameAscending,
    TResult Function(String id)? sortByDateAscending,
    TResult Function(String id)? sortByPriorityDescending,
    TResult Function(String id)? sortByPriorityAscending,
    required TResult orElse(),
  }) {
    if (sortByNameDescending != null) {
      return sortByNameDescending(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateSelectedTaskTag value)
        updateSelectedTaskTag,
    required TResult Function(_RemoveSelectedTaskTag value)
        removeSelectedTaskTag,
    required TResult Function(_UpdateSelectedTaskPriority value)
        updateSelectedTaskPriority,
    required TResult Function(_UpdateSelectedTaskStatus value)
        updateSelectedTaskStatus,
    required TResult Function(_AddNewTask value) addNewTask,
    required TResult Function(_AddFullTask value) updateFullTask,
    required TResult Function(_AddNewComment value) addNewComment,
    required TResult Function(_Updateomment value) updateComment,
    required TResult Function(_FetchAllComments value) fetchAllComments,
    required TResult Function(_FetchAllTasks value) fetchAllTasks,
    required TResult Function(_SetPickedFileForComment value)
        setPickedFileForComment,
    required TResult Function(_SyncData value) syncData,
    required TResult Function(_SyncDataInServer value) syncDataInServer,
    required TResult Function(_AddCurrentTimeStampToAllTasksLocally value)
        addCurrentTimeStampToAllTasksLocally,
    required TResult Function(_UpdateCurrentHomeIndex value)
        updateCurrentHomeIndex,
    required TResult Function(_ResetSelectItems value) resetSelectItems,
    required TResult Function(_UpdateFocusedDate value) updateFocusedDate,
    required TResult Function(_ResetMessage value) resetMessage,
    required TResult Function(_UpdateSection value) updateSection,
    required TResult Function(_UpdateTimer value) updateTimer,
    required TResult Function(_UpdateTimerState value) updateTimerState,
    required TResult Function(_UpdateTimerLocally value) updateTimerLocally,
    required TResult Function(_UpdateTimerStateLocally value)
        updateTimerStateLocally,
    required TResult Function(_CompleteTask value) completeTask,
    required TResult Function(_ReopenTaskTask value) reopenTask,
    required TResult Function(_StartTask value) startTask,
    required TResult Function(_DeleteTask value) deleteTask,
    required TResult Function(_DeleteAllTask value) deleteAllTask,
    required TResult Function(_DeleteComment value) deleteComment,
    required TResult Function(_SortByDateDescending value) sortByDateDescending,
    required TResult Function(_SortByNameDescending value) sortByNameDescending,
    required TResult Function(_SortByNameAscending value) sortByNameAscending,
    required TResult Function(_SortByDateAscending value) sortByDateAscending,
    required TResult Function(_SortByPriorityDescending value)
        sortByPriorityDescending,
    required TResult Function(_SortByPriorityAscending value)
        sortByPriorityAscending,
  }) {
    return sortByNameDescending(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateSelectedTaskTag value)? updateSelectedTaskTag,
    TResult? Function(_RemoveSelectedTaskTag value)? removeSelectedTaskTag,
    TResult? Function(_UpdateSelectedTaskPriority value)?
        updateSelectedTaskPriority,
    TResult? Function(_UpdateSelectedTaskStatus value)?
        updateSelectedTaskStatus,
    TResult? Function(_AddNewTask value)? addNewTask,
    TResult? Function(_AddFullTask value)? updateFullTask,
    TResult? Function(_AddNewComment value)? addNewComment,
    TResult? Function(_Updateomment value)? updateComment,
    TResult? Function(_FetchAllComments value)? fetchAllComments,
    TResult? Function(_FetchAllTasks value)? fetchAllTasks,
    TResult? Function(_SetPickedFileForComment value)? setPickedFileForComment,
    TResult? Function(_SyncData value)? syncData,
    TResult? Function(_SyncDataInServer value)? syncDataInServer,
    TResult? Function(_AddCurrentTimeStampToAllTasksLocally value)?
        addCurrentTimeStampToAllTasksLocally,
    TResult? Function(_UpdateCurrentHomeIndex value)? updateCurrentHomeIndex,
    TResult? Function(_ResetSelectItems value)? resetSelectItems,
    TResult? Function(_UpdateFocusedDate value)? updateFocusedDate,
    TResult? Function(_ResetMessage value)? resetMessage,
    TResult? Function(_UpdateSection value)? updateSection,
    TResult? Function(_UpdateTimer value)? updateTimer,
    TResult? Function(_UpdateTimerState value)? updateTimerState,
    TResult? Function(_UpdateTimerLocally value)? updateTimerLocally,
    TResult? Function(_UpdateTimerStateLocally value)? updateTimerStateLocally,
    TResult? Function(_CompleteTask value)? completeTask,
    TResult? Function(_ReopenTaskTask value)? reopenTask,
    TResult? Function(_StartTask value)? startTask,
    TResult? Function(_DeleteTask value)? deleteTask,
    TResult? Function(_DeleteAllTask value)? deleteAllTask,
    TResult? Function(_DeleteComment value)? deleteComment,
    TResult? Function(_SortByDateDescending value)? sortByDateDescending,
    TResult? Function(_SortByNameDescending value)? sortByNameDescending,
    TResult? Function(_SortByNameAscending value)? sortByNameAscending,
    TResult? Function(_SortByDateAscending value)? sortByDateAscending,
    TResult? Function(_SortByPriorityDescending value)?
        sortByPriorityDescending,
    TResult? Function(_SortByPriorityAscending value)? sortByPriorityAscending,
  }) {
    return sortByNameDescending?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateSelectedTaskTag value)? updateSelectedTaskTag,
    TResult Function(_RemoveSelectedTaskTag value)? removeSelectedTaskTag,
    TResult Function(_UpdateSelectedTaskPriority value)?
        updateSelectedTaskPriority,
    TResult Function(_UpdateSelectedTaskStatus value)? updateSelectedTaskStatus,
    TResult Function(_AddNewTask value)? addNewTask,
    TResult Function(_AddFullTask value)? updateFullTask,
    TResult Function(_AddNewComment value)? addNewComment,
    TResult Function(_Updateomment value)? updateComment,
    TResult Function(_FetchAllComments value)? fetchAllComments,
    TResult Function(_FetchAllTasks value)? fetchAllTasks,
    TResult Function(_SetPickedFileForComment value)? setPickedFileForComment,
    TResult Function(_SyncData value)? syncData,
    TResult Function(_SyncDataInServer value)? syncDataInServer,
    TResult Function(_AddCurrentTimeStampToAllTasksLocally value)?
        addCurrentTimeStampToAllTasksLocally,
    TResult Function(_UpdateCurrentHomeIndex value)? updateCurrentHomeIndex,
    TResult Function(_ResetSelectItems value)? resetSelectItems,
    TResult Function(_UpdateFocusedDate value)? updateFocusedDate,
    TResult Function(_ResetMessage value)? resetMessage,
    TResult Function(_UpdateSection value)? updateSection,
    TResult Function(_UpdateTimer value)? updateTimer,
    TResult Function(_UpdateTimerState value)? updateTimerState,
    TResult Function(_UpdateTimerLocally value)? updateTimerLocally,
    TResult Function(_UpdateTimerStateLocally value)? updateTimerStateLocally,
    TResult Function(_CompleteTask value)? completeTask,
    TResult Function(_ReopenTaskTask value)? reopenTask,
    TResult Function(_StartTask value)? startTask,
    TResult Function(_DeleteTask value)? deleteTask,
    TResult Function(_DeleteAllTask value)? deleteAllTask,
    TResult Function(_DeleteComment value)? deleteComment,
    TResult Function(_SortByDateDescending value)? sortByDateDescending,
    TResult Function(_SortByNameDescending value)? sortByNameDescending,
    TResult Function(_SortByNameAscending value)? sortByNameAscending,
    TResult Function(_SortByDateAscending value)? sortByDateAscending,
    TResult Function(_SortByPriorityDescending value)? sortByPriorityDescending,
    TResult Function(_SortByPriorityAscending value)? sortByPriorityAscending,
    required TResult orElse(),
  }) {
    if (sortByNameDescending != null) {
      return sortByNameDescending(this);
    }
    return orElse();
  }
}

abstract class _SortByNameDescending implements HomeEvent {
  const factory _SortByNameDescending(final String id) =
      _$SortByNameDescendingImpl;

  String get id;
  @JsonKey(ignore: true)
  _$$SortByNameDescendingImplCopyWith<_$SortByNameDescendingImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SortByNameAscendingImplCopyWith<$Res> {
  factory _$$SortByNameAscendingImplCopyWith(_$SortByNameAscendingImpl value,
          $Res Function(_$SortByNameAscendingImpl) then) =
      __$$SortByNameAscendingImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$SortByNameAscendingImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$SortByNameAscendingImpl>
    implements _$$SortByNameAscendingImplCopyWith<$Res> {
  __$$SortByNameAscendingImplCopyWithImpl(_$SortByNameAscendingImpl _value,
      $Res Function(_$SortByNameAscendingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$SortByNameAscendingImpl(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SortByNameAscendingImpl implements _SortByNameAscending {
  const _$SortByNameAscendingImpl(this.id);

  @override
  final String id;

  @override
  String toString() {
    return 'HomeEvent.sortByNameAscending(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SortByNameAscendingImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SortByNameAscendingImplCopyWith<_$SortByNameAscendingImpl> get copyWith =>
      __$$SortByNameAscendingImplCopyWithImpl<_$SortByNameAscendingImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TasksTags tasksTags) updateSelectedTaskTag,
    required TResult Function(int index) removeSelectedTaskTag,
    required TResult Function(TasksPriority taskPriority)
        updateSelectedTaskPriority,
    required TResult Function(TasksStatus tasksStatus) updateSelectedTaskStatus,
    required TResult Function(
            AppLocalizations appLocalization,
            String dueDate,
            String content,
            String description,
            void Function()? Function() onComplete)
        addNewTask,
    required TResult Function(
            AppLocalizations appLocalization,
            String dueDate,
            String content,
            String taskId,
            String description,
            void Function()? Function() onComplete)
        updateFullTask,
    required TResult Function(AppLocalizations appLocalization, String taskId,
            String content, void Function()? Function() onComplete)
        addNewComment,
    required TResult Function(
            AppLocalizations appLocalization,
            String taskId,
            String commentId,
            String content,
            void Function()? Function() onComplete)
        updateComment,
    required TResult Function(
            String taskId, bool isSyncing, InternetState internetState)
        fetchAllComments,
    required TResult Function(bool requiredReload, InternetState internetState)
        fetchAllTasks,
    required TResult Function(File? file) setPickedFileForComment,
    required TResult Function(BuildContext context) syncData,
    required TResult Function() syncDataInServer,
    required TResult Function(int savedTime)
        addCurrentTimeStampToAllTasksLocally,
    required TResult Function(int index) updateCurrentHomeIndex,
    required TResult Function() resetSelectItems,
    required TResult Function(DateTime focusedDate, InternetState internetState)
        updateFocusedDate,
    required TResult Function() resetMessage,
    required TResult Function(String taskId, String fromSectionId,
            String sectionId, List<String> labels)
        updateSection,
    required TResult Function(String taskId, List<String> labels) updateTimer,
    required TResult Function(String taskId, List<String> labels)
        updateTimerState,
    required TResult Function(String taskId, List<String> labels)
        updateTimerLocally,
    required TResult Function(String taskId, List<String> labels)
        updateTimerStateLocally,
    required TResult Function(String taskId, List<String> labels) completeTask,
    required TResult Function(String taskId, List<String> labels) reopenTask,
    required TResult Function(String taskId, List<String> labels) startTask,
    required TResult Function(String taskId) deleteTask,
    required TResult Function(AppLocalizations appLocalization) deleteAllTask,
    required TResult Function(String commentId, String taskId) deleteComment,
    required TResult Function(String id) sortByDateDescending,
    required TResult Function(String id) sortByNameDescending,
    required TResult Function(String id) sortByNameAscending,
    required TResult Function(String id) sortByDateAscending,
    required TResult Function(String id) sortByPriorityDescending,
    required TResult Function(String id) sortByPriorityAscending,
  }) {
    return sortByNameAscending(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TasksTags tasksTags)? updateSelectedTaskTag,
    TResult? Function(int index)? removeSelectedTaskTag,
    TResult? Function(TasksPriority taskPriority)? updateSelectedTaskPriority,
    TResult? Function(TasksStatus tasksStatus)? updateSelectedTaskStatus,
    TResult? Function(
            AppLocalizations appLocalization,
            String dueDate,
            String content,
            String description,
            void Function()? Function() onComplete)?
        addNewTask,
    TResult? Function(
            AppLocalizations appLocalization,
            String dueDate,
            String content,
            String taskId,
            String description,
            void Function()? Function() onComplete)?
        updateFullTask,
    TResult? Function(AppLocalizations appLocalization, String taskId,
            String content, void Function()? Function() onComplete)?
        addNewComment,
    TResult? Function(
            AppLocalizations appLocalization,
            String taskId,
            String commentId,
            String content,
            void Function()? Function() onComplete)?
        updateComment,
    TResult? Function(
            String taskId, bool isSyncing, InternetState internetState)?
        fetchAllComments,
    TResult? Function(bool requiredReload, InternetState internetState)?
        fetchAllTasks,
    TResult? Function(File? file)? setPickedFileForComment,
    TResult? Function(BuildContext context)? syncData,
    TResult? Function()? syncDataInServer,
    TResult? Function(int savedTime)? addCurrentTimeStampToAllTasksLocally,
    TResult? Function(int index)? updateCurrentHomeIndex,
    TResult? Function()? resetSelectItems,
    TResult? Function(DateTime focusedDate, InternetState internetState)?
        updateFocusedDate,
    TResult? Function()? resetMessage,
    TResult? Function(String taskId, String fromSectionId, String sectionId,
            List<String> labels)?
        updateSection,
    TResult? Function(String taskId, List<String> labels)? updateTimer,
    TResult? Function(String taskId, List<String> labels)? updateTimerState,
    TResult? Function(String taskId, List<String> labels)? updateTimerLocally,
    TResult? Function(String taskId, List<String> labels)?
        updateTimerStateLocally,
    TResult? Function(String taskId, List<String> labels)? completeTask,
    TResult? Function(String taskId, List<String> labels)? reopenTask,
    TResult? Function(String taskId, List<String> labels)? startTask,
    TResult? Function(String taskId)? deleteTask,
    TResult? Function(AppLocalizations appLocalization)? deleteAllTask,
    TResult? Function(String commentId, String taskId)? deleteComment,
    TResult? Function(String id)? sortByDateDescending,
    TResult? Function(String id)? sortByNameDescending,
    TResult? Function(String id)? sortByNameAscending,
    TResult? Function(String id)? sortByDateAscending,
    TResult? Function(String id)? sortByPriorityDescending,
    TResult? Function(String id)? sortByPriorityAscending,
  }) {
    return sortByNameAscending?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TasksTags tasksTags)? updateSelectedTaskTag,
    TResult Function(int index)? removeSelectedTaskTag,
    TResult Function(TasksPriority taskPriority)? updateSelectedTaskPriority,
    TResult Function(TasksStatus tasksStatus)? updateSelectedTaskStatus,
    TResult Function(
            AppLocalizations appLocalization,
            String dueDate,
            String content,
            String description,
            void Function()? Function() onComplete)?
        addNewTask,
    TResult Function(
            AppLocalizations appLocalization,
            String dueDate,
            String content,
            String taskId,
            String description,
            void Function()? Function() onComplete)?
        updateFullTask,
    TResult Function(AppLocalizations appLocalization, String taskId,
            String content, void Function()? Function() onComplete)?
        addNewComment,
    TResult Function(
            AppLocalizations appLocalization,
            String taskId,
            String commentId,
            String content,
            void Function()? Function() onComplete)?
        updateComment,
    TResult Function(
            String taskId, bool isSyncing, InternetState internetState)?
        fetchAllComments,
    TResult Function(bool requiredReload, InternetState internetState)?
        fetchAllTasks,
    TResult Function(File? file)? setPickedFileForComment,
    TResult Function(BuildContext context)? syncData,
    TResult Function()? syncDataInServer,
    TResult Function(int savedTime)? addCurrentTimeStampToAllTasksLocally,
    TResult Function(int index)? updateCurrentHomeIndex,
    TResult Function()? resetSelectItems,
    TResult Function(DateTime focusedDate, InternetState internetState)?
        updateFocusedDate,
    TResult Function()? resetMessage,
    TResult Function(String taskId, String fromSectionId, String sectionId,
            List<String> labels)?
        updateSection,
    TResult Function(String taskId, List<String> labels)? updateTimer,
    TResult Function(String taskId, List<String> labels)? updateTimerState,
    TResult Function(String taskId, List<String> labels)? updateTimerLocally,
    TResult Function(String taskId, List<String> labels)?
        updateTimerStateLocally,
    TResult Function(String taskId, List<String> labels)? completeTask,
    TResult Function(String taskId, List<String> labels)? reopenTask,
    TResult Function(String taskId, List<String> labels)? startTask,
    TResult Function(String taskId)? deleteTask,
    TResult Function(AppLocalizations appLocalization)? deleteAllTask,
    TResult Function(String commentId, String taskId)? deleteComment,
    TResult Function(String id)? sortByDateDescending,
    TResult Function(String id)? sortByNameDescending,
    TResult Function(String id)? sortByNameAscending,
    TResult Function(String id)? sortByDateAscending,
    TResult Function(String id)? sortByPriorityDescending,
    TResult Function(String id)? sortByPriorityAscending,
    required TResult orElse(),
  }) {
    if (sortByNameAscending != null) {
      return sortByNameAscending(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateSelectedTaskTag value)
        updateSelectedTaskTag,
    required TResult Function(_RemoveSelectedTaskTag value)
        removeSelectedTaskTag,
    required TResult Function(_UpdateSelectedTaskPriority value)
        updateSelectedTaskPriority,
    required TResult Function(_UpdateSelectedTaskStatus value)
        updateSelectedTaskStatus,
    required TResult Function(_AddNewTask value) addNewTask,
    required TResult Function(_AddFullTask value) updateFullTask,
    required TResult Function(_AddNewComment value) addNewComment,
    required TResult Function(_Updateomment value) updateComment,
    required TResult Function(_FetchAllComments value) fetchAllComments,
    required TResult Function(_FetchAllTasks value) fetchAllTasks,
    required TResult Function(_SetPickedFileForComment value)
        setPickedFileForComment,
    required TResult Function(_SyncData value) syncData,
    required TResult Function(_SyncDataInServer value) syncDataInServer,
    required TResult Function(_AddCurrentTimeStampToAllTasksLocally value)
        addCurrentTimeStampToAllTasksLocally,
    required TResult Function(_UpdateCurrentHomeIndex value)
        updateCurrentHomeIndex,
    required TResult Function(_ResetSelectItems value) resetSelectItems,
    required TResult Function(_UpdateFocusedDate value) updateFocusedDate,
    required TResult Function(_ResetMessage value) resetMessage,
    required TResult Function(_UpdateSection value) updateSection,
    required TResult Function(_UpdateTimer value) updateTimer,
    required TResult Function(_UpdateTimerState value) updateTimerState,
    required TResult Function(_UpdateTimerLocally value) updateTimerLocally,
    required TResult Function(_UpdateTimerStateLocally value)
        updateTimerStateLocally,
    required TResult Function(_CompleteTask value) completeTask,
    required TResult Function(_ReopenTaskTask value) reopenTask,
    required TResult Function(_StartTask value) startTask,
    required TResult Function(_DeleteTask value) deleteTask,
    required TResult Function(_DeleteAllTask value) deleteAllTask,
    required TResult Function(_DeleteComment value) deleteComment,
    required TResult Function(_SortByDateDescending value) sortByDateDescending,
    required TResult Function(_SortByNameDescending value) sortByNameDescending,
    required TResult Function(_SortByNameAscending value) sortByNameAscending,
    required TResult Function(_SortByDateAscending value) sortByDateAscending,
    required TResult Function(_SortByPriorityDescending value)
        sortByPriorityDescending,
    required TResult Function(_SortByPriorityAscending value)
        sortByPriorityAscending,
  }) {
    return sortByNameAscending(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateSelectedTaskTag value)? updateSelectedTaskTag,
    TResult? Function(_RemoveSelectedTaskTag value)? removeSelectedTaskTag,
    TResult? Function(_UpdateSelectedTaskPriority value)?
        updateSelectedTaskPriority,
    TResult? Function(_UpdateSelectedTaskStatus value)?
        updateSelectedTaskStatus,
    TResult? Function(_AddNewTask value)? addNewTask,
    TResult? Function(_AddFullTask value)? updateFullTask,
    TResult? Function(_AddNewComment value)? addNewComment,
    TResult? Function(_Updateomment value)? updateComment,
    TResult? Function(_FetchAllComments value)? fetchAllComments,
    TResult? Function(_FetchAllTasks value)? fetchAllTasks,
    TResult? Function(_SetPickedFileForComment value)? setPickedFileForComment,
    TResult? Function(_SyncData value)? syncData,
    TResult? Function(_SyncDataInServer value)? syncDataInServer,
    TResult? Function(_AddCurrentTimeStampToAllTasksLocally value)?
        addCurrentTimeStampToAllTasksLocally,
    TResult? Function(_UpdateCurrentHomeIndex value)? updateCurrentHomeIndex,
    TResult? Function(_ResetSelectItems value)? resetSelectItems,
    TResult? Function(_UpdateFocusedDate value)? updateFocusedDate,
    TResult? Function(_ResetMessage value)? resetMessage,
    TResult? Function(_UpdateSection value)? updateSection,
    TResult? Function(_UpdateTimer value)? updateTimer,
    TResult? Function(_UpdateTimerState value)? updateTimerState,
    TResult? Function(_UpdateTimerLocally value)? updateTimerLocally,
    TResult? Function(_UpdateTimerStateLocally value)? updateTimerStateLocally,
    TResult? Function(_CompleteTask value)? completeTask,
    TResult? Function(_ReopenTaskTask value)? reopenTask,
    TResult? Function(_StartTask value)? startTask,
    TResult? Function(_DeleteTask value)? deleteTask,
    TResult? Function(_DeleteAllTask value)? deleteAllTask,
    TResult? Function(_DeleteComment value)? deleteComment,
    TResult? Function(_SortByDateDescending value)? sortByDateDescending,
    TResult? Function(_SortByNameDescending value)? sortByNameDescending,
    TResult? Function(_SortByNameAscending value)? sortByNameAscending,
    TResult? Function(_SortByDateAscending value)? sortByDateAscending,
    TResult? Function(_SortByPriorityDescending value)?
        sortByPriorityDescending,
    TResult? Function(_SortByPriorityAscending value)? sortByPriorityAscending,
  }) {
    return sortByNameAscending?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateSelectedTaskTag value)? updateSelectedTaskTag,
    TResult Function(_RemoveSelectedTaskTag value)? removeSelectedTaskTag,
    TResult Function(_UpdateSelectedTaskPriority value)?
        updateSelectedTaskPriority,
    TResult Function(_UpdateSelectedTaskStatus value)? updateSelectedTaskStatus,
    TResult Function(_AddNewTask value)? addNewTask,
    TResult Function(_AddFullTask value)? updateFullTask,
    TResult Function(_AddNewComment value)? addNewComment,
    TResult Function(_Updateomment value)? updateComment,
    TResult Function(_FetchAllComments value)? fetchAllComments,
    TResult Function(_FetchAllTasks value)? fetchAllTasks,
    TResult Function(_SetPickedFileForComment value)? setPickedFileForComment,
    TResult Function(_SyncData value)? syncData,
    TResult Function(_SyncDataInServer value)? syncDataInServer,
    TResult Function(_AddCurrentTimeStampToAllTasksLocally value)?
        addCurrentTimeStampToAllTasksLocally,
    TResult Function(_UpdateCurrentHomeIndex value)? updateCurrentHomeIndex,
    TResult Function(_ResetSelectItems value)? resetSelectItems,
    TResult Function(_UpdateFocusedDate value)? updateFocusedDate,
    TResult Function(_ResetMessage value)? resetMessage,
    TResult Function(_UpdateSection value)? updateSection,
    TResult Function(_UpdateTimer value)? updateTimer,
    TResult Function(_UpdateTimerState value)? updateTimerState,
    TResult Function(_UpdateTimerLocally value)? updateTimerLocally,
    TResult Function(_UpdateTimerStateLocally value)? updateTimerStateLocally,
    TResult Function(_CompleteTask value)? completeTask,
    TResult Function(_ReopenTaskTask value)? reopenTask,
    TResult Function(_StartTask value)? startTask,
    TResult Function(_DeleteTask value)? deleteTask,
    TResult Function(_DeleteAllTask value)? deleteAllTask,
    TResult Function(_DeleteComment value)? deleteComment,
    TResult Function(_SortByDateDescending value)? sortByDateDescending,
    TResult Function(_SortByNameDescending value)? sortByNameDescending,
    TResult Function(_SortByNameAscending value)? sortByNameAscending,
    TResult Function(_SortByDateAscending value)? sortByDateAscending,
    TResult Function(_SortByPriorityDescending value)? sortByPriorityDescending,
    TResult Function(_SortByPriorityAscending value)? sortByPriorityAscending,
    required TResult orElse(),
  }) {
    if (sortByNameAscending != null) {
      return sortByNameAscending(this);
    }
    return orElse();
  }
}

abstract class _SortByNameAscending implements HomeEvent {
  const factory _SortByNameAscending(final String id) =
      _$SortByNameAscendingImpl;

  String get id;
  @JsonKey(ignore: true)
  _$$SortByNameAscendingImplCopyWith<_$SortByNameAscendingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SortByDateAscendingImplCopyWith<$Res> {
  factory _$$SortByDateAscendingImplCopyWith(_$SortByDateAscendingImpl value,
          $Res Function(_$SortByDateAscendingImpl) then) =
      __$$SortByDateAscendingImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$SortByDateAscendingImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$SortByDateAscendingImpl>
    implements _$$SortByDateAscendingImplCopyWith<$Res> {
  __$$SortByDateAscendingImplCopyWithImpl(_$SortByDateAscendingImpl _value,
      $Res Function(_$SortByDateAscendingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$SortByDateAscendingImpl(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SortByDateAscendingImpl implements _SortByDateAscending {
  const _$SortByDateAscendingImpl(this.id);

  @override
  final String id;

  @override
  String toString() {
    return 'HomeEvent.sortByDateAscending(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SortByDateAscendingImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SortByDateAscendingImplCopyWith<_$SortByDateAscendingImpl> get copyWith =>
      __$$SortByDateAscendingImplCopyWithImpl<_$SortByDateAscendingImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TasksTags tasksTags) updateSelectedTaskTag,
    required TResult Function(int index) removeSelectedTaskTag,
    required TResult Function(TasksPriority taskPriority)
        updateSelectedTaskPriority,
    required TResult Function(TasksStatus tasksStatus) updateSelectedTaskStatus,
    required TResult Function(
            AppLocalizations appLocalization,
            String dueDate,
            String content,
            String description,
            void Function()? Function() onComplete)
        addNewTask,
    required TResult Function(
            AppLocalizations appLocalization,
            String dueDate,
            String content,
            String taskId,
            String description,
            void Function()? Function() onComplete)
        updateFullTask,
    required TResult Function(AppLocalizations appLocalization, String taskId,
            String content, void Function()? Function() onComplete)
        addNewComment,
    required TResult Function(
            AppLocalizations appLocalization,
            String taskId,
            String commentId,
            String content,
            void Function()? Function() onComplete)
        updateComment,
    required TResult Function(
            String taskId, bool isSyncing, InternetState internetState)
        fetchAllComments,
    required TResult Function(bool requiredReload, InternetState internetState)
        fetchAllTasks,
    required TResult Function(File? file) setPickedFileForComment,
    required TResult Function(BuildContext context) syncData,
    required TResult Function() syncDataInServer,
    required TResult Function(int savedTime)
        addCurrentTimeStampToAllTasksLocally,
    required TResult Function(int index) updateCurrentHomeIndex,
    required TResult Function() resetSelectItems,
    required TResult Function(DateTime focusedDate, InternetState internetState)
        updateFocusedDate,
    required TResult Function() resetMessage,
    required TResult Function(String taskId, String fromSectionId,
            String sectionId, List<String> labels)
        updateSection,
    required TResult Function(String taskId, List<String> labels) updateTimer,
    required TResult Function(String taskId, List<String> labels)
        updateTimerState,
    required TResult Function(String taskId, List<String> labels)
        updateTimerLocally,
    required TResult Function(String taskId, List<String> labels)
        updateTimerStateLocally,
    required TResult Function(String taskId, List<String> labels) completeTask,
    required TResult Function(String taskId, List<String> labels) reopenTask,
    required TResult Function(String taskId, List<String> labels) startTask,
    required TResult Function(String taskId) deleteTask,
    required TResult Function(AppLocalizations appLocalization) deleteAllTask,
    required TResult Function(String commentId, String taskId) deleteComment,
    required TResult Function(String id) sortByDateDescending,
    required TResult Function(String id) sortByNameDescending,
    required TResult Function(String id) sortByNameAscending,
    required TResult Function(String id) sortByDateAscending,
    required TResult Function(String id) sortByPriorityDescending,
    required TResult Function(String id) sortByPriorityAscending,
  }) {
    return sortByDateAscending(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TasksTags tasksTags)? updateSelectedTaskTag,
    TResult? Function(int index)? removeSelectedTaskTag,
    TResult? Function(TasksPriority taskPriority)? updateSelectedTaskPriority,
    TResult? Function(TasksStatus tasksStatus)? updateSelectedTaskStatus,
    TResult? Function(
            AppLocalizations appLocalization,
            String dueDate,
            String content,
            String description,
            void Function()? Function() onComplete)?
        addNewTask,
    TResult? Function(
            AppLocalizations appLocalization,
            String dueDate,
            String content,
            String taskId,
            String description,
            void Function()? Function() onComplete)?
        updateFullTask,
    TResult? Function(AppLocalizations appLocalization, String taskId,
            String content, void Function()? Function() onComplete)?
        addNewComment,
    TResult? Function(
            AppLocalizations appLocalization,
            String taskId,
            String commentId,
            String content,
            void Function()? Function() onComplete)?
        updateComment,
    TResult? Function(
            String taskId, bool isSyncing, InternetState internetState)?
        fetchAllComments,
    TResult? Function(bool requiredReload, InternetState internetState)?
        fetchAllTasks,
    TResult? Function(File? file)? setPickedFileForComment,
    TResult? Function(BuildContext context)? syncData,
    TResult? Function()? syncDataInServer,
    TResult? Function(int savedTime)? addCurrentTimeStampToAllTasksLocally,
    TResult? Function(int index)? updateCurrentHomeIndex,
    TResult? Function()? resetSelectItems,
    TResult? Function(DateTime focusedDate, InternetState internetState)?
        updateFocusedDate,
    TResult? Function()? resetMessage,
    TResult? Function(String taskId, String fromSectionId, String sectionId,
            List<String> labels)?
        updateSection,
    TResult? Function(String taskId, List<String> labels)? updateTimer,
    TResult? Function(String taskId, List<String> labels)? updateTimerState,
    TResult? Function(String taskId, List<String> labels)? updateTimerLocally,
    TResult? Function(String taskId, List<String> labels)?
        updateTimerStateLocally,
    TResult? Function(String taskId, List<String> labels)? completeTask,
    TResult? Function(String taskId, List<String> labels)? reopenTask,
    TResult? Function(String taskId, List<String> labels)? startTask,
    TResult? Function(String taskId)? deleteTask,
    TResult? Function(AppLocalizations appLocalization)? deleteAllTask,
    TResult? Function(String commentId, String taskId)? deleteComment,
    TResult? Function(String id)? sortByDateDescending,
    TResult? Function(String id)? sortByNameDescending,
    TResult? Function(String id)? sortByNameAscending,
    TResult? Function(String id)? sortByDateAscending,
    TResult? Function(String id)? sortByPriorityDescending,
    TResult? Function(String id)? sortByPriorityAscending,
  }) {
    return sortByDateAscending?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TasksTags tasksTags)? updateSelectedTaskTag,
    TResult Function(int index)? removeSelectedTaskTag,
    TResult Function(TasksPriority taskPriority)? updateSelectedTaskPriority,
    TResult Function(TasksStatus tasksStatus)? updateSelectedTaskStatus,
    TResult Function(
            AppLocalizations appLocalization,
            String dueDate,
            String content,
            String description,
            void Function()? Function() onComplete)?
        addNewTask,
    TResult Function(
            AppLocalizations appLocalization,
            String dueDate,
            String content,
            String taskId,
            String description,
            void Function()? Function() onComplete)?
        updateFullTask,
    TResult Function(AppLocalizations appLocalization, String taskId,
            String content, void Function()? Function() onComplete)?
        addNewComment,
    TResult Function(
            AppLocalizations appLocalization,
            String taskId,
            String commentId,
            String content,
            void Function()? Function() onComplete)?
        updateComment,
    TResult Function(
            String taskId, bool isSyncing, InternetState internetState)?
        fetchAllComments,
    TResult Function(bool requiredReload, InternetState internetState)?
        fetchAllTasks,
    TResult Function(File? file)? setPickedFileForComment,
    TResult Function(BuildContext context)? syncData,
    TResult Function()? syncDataInServer,
    TResult Function(int savedTime)? addCurrentTimeStampToAllTasksLocally,
    TResult Function(int index)? updateCurrentHomeIndex,
    TResult Function()? resetSelectItems,
    TResult Function(DateTime focusedDate, InternetState internetState)?
        updateFocusedDate,
    TResult Function()? resetMessage,
    TResult Function(String taskId, String fromSectionId, String sectionId,
            List<String> labels)?
        updateSection,
    TResult Function(String taskId, List<String> labels)? updateTimer,
    TResult Function(String taskId, List<String> labels)? updateTimerState,
    TResult Function(String taskId, List<String> labels)? updateTimerLocally,
    TResult Function(String taskId, List<String> labels)?
        updateTimerStateLocally,
    TResult Function(String taskId, List<String> labels)? completeTask,
    TResult Function(String taskId, List<String> labels)? reopenTask,
    TResult Function(String taskId, List<String> labels)? startTask,
    TResult Function(String taskId)? deleteTask,
    TResult Function(AppLocalizations appLocalization)? deleteAllTask,
    TResult Function(String commentId, String taskId)? deleteComment,
    TResult Function(String id)? sortByDateDescending,
    TResult Function(String id)? sortByNameDescending,
    TResult Function(String id)? sortByNameAscending,
    TResult Function(String id)? sortByDateAscending,
    TResult Function(String id)? sortByPriorityDescending,
    TResult Function(String id)? sortByPriorityAscending,
    required TResult orElse(),
  }) {
    if (sortByDateAscending != null) {
      return sortByDateAscending(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateSelectedTaskTag value)
        updateSelectedTaskTag,
    required TResult Function(_RemoveSelectedTaskTag value)
        removeSelectedTaskTag,
    required TResult Function(_UpdateSelectedTaskPriority value)
        updateSelectedTaskPriority,
    required TResult Function(_UpdateSelectedTaskStatus value)
        updateSelectedTaskStatus,
    required TResult Function(_AddNewTask value) addNewTask,
    required TResult Function(_AddFullTask value) updateFullTask,
    required TResult Function(_AddNewComment value) addNewComment,
    required TResult Function(_Updateomment value) updateComment,
    required TResult Function(_FetchAllComments value) fetchAllComments,
    required TResult Function(_FetchAllTasks value) fetchAllTasks,
    required TResult Function(_SetPickedFileForComment value)
        setPickedFileForComment,
    required TResult Function(_SyncData value) syncData,
    required TResult Function(_SyncDataInServer value) syncDataInServer,
    required TResult Function(_AddCurrentTimeStampToAllTasksLocally value)
        addCurrentTimeStampToAllTasksLocally,
    required TResult Function(_UpdateCurrentHomeIndex value)
        updateCurrentHomeIndex,
    required TResult Function(_ResetSelectItems value) resetSelectItems,
    required TResult Function(_UpdateFocusedDate value) updateFocusedDate,
    required TResult Function(_ResetMessage value) resetMessage,
    required TResult Function(_UpdateSection value) updateSection,
    required TResult Function(_UpdateTimer value) updateTimer,
    required TResult Function(_UpdateTimerState value) updateTimerState,
    required TResult Function(_UpdateTimerLocally value) updateTimerLocally,
    required TResult Function(_UpdateTimerStateLocally value)
        updateTimerStateLocally,
    required TResult Function(_CompleteTask value) completeTask,
    required TResult Function(_ReopenTaskTask value) reopenTask,
    required TResult Function(_StartTask value) startTask,
    required TResult Function(_DeleteTask value) deleteTask,
    required TResult Function(_DeleteAllTask value) deleteAllTask,
    required TResult Function(_DeleteComment value) deleteComment,
    required TResult Function(_SortByDateDescending value) sortByDateDescending,
    required TResult Function(_SortByNameDescending value) sortByNameDescending,
    required TResult Function(_SortByNameAscending value) sortByNameAscending,
    required TResult Function(_SortByDateAscending value) sortByDateAscending,
    required TResult Function(_SortByPriorityDescending value)
        sortByPriorityDescending,
    required TResult Function(_SortByPriorityAscending value)
        sortByPriorityAscending,
  }) {
    return sortByDateAscending(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateSelectedTaskTag value)? updateSelectedTaskTag,
    TResult? Function(_RemoveSelectedTaskTag value)? removeSelectedTaskTag,
    TResult? Function(_UpdateSelectedTaskPriority value)?
        updateSelectedTaskPriority,
    TResult? Function(_UpdateSelectedTaskStatus value)?
        updateSelectedTaskStatus,
    TResult? Function(_AddNewTask value)? addNewTask,
    TResult? Function(_AddFullTask value)? updateFullTask,
    TResult? Function(_AddNewComment value)? addNewComment,
    TResult? Function(_Updateomment value)? updateComment,
    TResult? Function(_FetchAllComments value)? fetchAllComments,
    TResult? Function(_FetchAllTasks value)? fetchAllTasks,
    TResult? Function(_SetPickedFileForComment value)? setPickedFileForComment,
    TResult? Function(_SyncData value)? syncData,
    TResult? Function(_SyncDataInServer value)? syncDataInServer,
    TResult? Function(_AddCurrentTimeStampToAllTasksLocally value)?
        addCurrentTimeStampToAllTasksLocally,
    TResult? Function(_UpdateCurrentHomeIndex value)? updateCurrentHomeIndex,
    TResult? Function(_ResetSelectItems value)? resetSelectItems,
    TResult? Function(_UpdateFocusedDate value)? updateFocusedDate,
    TResult? Function(_ResetMessage value)? resetMessage,
    TResult? Function(_UpdateSection value)? updateSection,
    TResult? Function(_UpdateTimer value)? updateTimer,
    TResult? Function(_UpdateTimerState value)? updateTimerState,
    TResult? Function(_UpdateTimerLocally value)? updateTimerLocally,
    TResult? Function(_UpdateTimerStateLocally value)? updateTimerStateLocally,
    TResult? Function(_CompleteTask value)? completeTask,
    TResult? Function(_ReopenTaskTask value)? reopenTask,
    TResult? Function(_StartTask value)? startTask,
    TResult? Function(_DeleteTask value)? deleteTask,
    TResult? Function(_DeleteAllTask value)? deleteAllTask,
    TResult? Function(_DeleteComment value)? deleteComment,
    TResult? Function(_SortByDateDescending value)? sortByDateDescending,
    TResult? Function(_SortByNameDescending value)? sortByNameDescending,
    TResult? Function(_SortByNameAscending value)? sortByNameAscending,
    TResult? Function(_SortByDateAscending value)? sortByDateAscending,
    TResult? Function(_SortByPriorityDescending value)?
        sortByPriorityDescending,
    TResult? Function(_SortByPriorityAscending value)? sortByPriorityAscending,
  }) {
    return sortByDateAscending?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateSelectedTaskTag value)? updateSelectedTaskTag,
    TResult Function(_RemoveSelectedTaskTag value)? removeSelectedTaskTag,
    TResult Function(_UpdateSelectedTaskPriority value)?
        updateSelectedTaskPriority,
    TResult Function(_UpdateSelectedTaskStatus value)? updateSelectedTaskStatus,
    TResult Function(_AddNewTask value)? addNewTask,
    TResult Function(_AddFullTask value)? updateFullTask,
    TResult Function(_AddNewComment value)? addNewComment,
    TResult Function(_Updateomment value)? updateComment,
    TResult Function(_FetchAllComments value)? fetchAllComments,
    TResult Function(_FetchAllTasks value)? fetchAllTasks,
    TResult Function(_SetPickedFileForComment value)? setPickedFileForComment,
    TResult Function(_SyncData value)? syncData,
    TResult Function(_SyncDataInServer value)? syncDataInServer,
    TResult Function(_AddCurrentTimeStampToAllTasksLocally value)?
        addCurrentTimeStampToAllTasksLocally,
    TResult Function(_UpdateCurrentHomeIndex value)? updateCurrentHomeIndex,
    TResult Function(_ResetSelectItems value)? resetSelectItems,
    TResult Function(_UpdateFocusedDate value)? updateFocusedDate,
    TResult Function(_ResetMessage value)? resetMessage,
    TResult Function(_UpdateSection value)? updateSection,
    TResult Function(_UpdateTimer value)? updateTimer,
    TResult Function(_UpdateTimerState value)? updateTimerState,
    TResult Function(_UpdateTimerLocally value)? updateTimerLocally,
    TResult Function(_UpdateTimerStateLocally value)? updateTimerStateLocally,
    TResult Function(_CompleteTask value)? completeTask,
    TResult Function(_ReopenTaskTask value)? reopenTask,
    TResult Function(_StartTask value)? startTask,
    TResult Function(_DeleteTask value)? deleteTask,
    TResult Function(_DeleteAllTask value)? deleteAllTask,
    TResult Function(_DeleteComment value)? deleteComment,
    TResult Function(_SortByDateDescending value)? sortByDateDescending,
    TResult Function(_SortByNameDescending value)? sortByNameDescending,
    TResult Function(_SortByNameAscending value)? sortByNameAscending,
    TResult Function(_SortByDateAscending value)? sortByDateAscending,
    TResult Function(_SortByPriorityDescending value)? sortByPriorityDescending,
    TResult Function(_SortByPriorityAscending value)? sortByPriorityAscending,
    required TResult orElse(),
  }) {
    if (sortByDateAscending != null) {
      return sortByDateAscending(this);
    }
    return orElse();
  }
}

abstract class _SortByDateAscending implements HomeEvent {
  const factory _SortByDateAscending(final String id) =
      _$SortByDateAscendingImpl;

  String get id;
  @JsonKey(ignore: true)
  _$$SortByDateAscendingImplCopyWith<_$SortByDateAscendingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SortByPriorityDescendingImplCopyWith<$Res> {
  factory _$$SortByPriorityDescendingImplCopyWith(
          _$SortByPriorityDescendingImpl value,
          $Res Function(_$SortByPriorityDescendingImpl) then) =
      __$$SortByPriorityDescendingImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$SortByPriorityDescendingImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$SortByPriorityDescendingImpl>
    implements _$$SortByPriorityDescendingImplCopyWith<$Res> {
  __$$SortByPriorityDescendingImplCopyWithImpl(
      _$SortByPriorityDescendingImpl _value,
      $Res Function(_$SortByPriorityDescendingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$SortByPriorityDescendingImpl(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SortByPriorityDescendingImpl implements _SortByPriorityDescending {
  const _$SortByPriorityDescendingImpl(this.id);

  @override
  final String id;

  @override
  String toString() {
    return 'HomeEvent.sortByPriorityDescending(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SortByPriorityDescendingImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SortByPriorityDescendingImplCopyWith<_$SortByPriorityDescendingImpl>
      get copyWith => __$$SortByPriorityDescendingImplCopyWithImpl<
          _$SortByPriorityDescendingImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TasksTags tasksTags) updateSelectedTaskTag,
    required TResult Function(int index) removeSelectedTaskTag,
    required TResult Function(TasksPriority taskPriority)
        updateSelectedTaskPriority,
    required TResult Function(TasksStatus tasksStatus) updateSelectedTaskStatus,
    required TResult Function(
            AppLocalizations appLocalization,
            String dueDate,
            String content,
            String description,
            void Function()? Function() onComplete)
        addNewTask,
    required TResult Function(
            AppLocalizations appLocalization,
            String dueDate,
            String content,
            String taskId,
            String description,
            void Function()? Function() onComplete)
        updateFullTask,
    required TResult Function(AppLocalizations appLocalization, String taskId,
            String content, void Function()? Function() onComplete)
        addNewComment,
    required TResult Function(
            AppLocalizations appLocalization,
            String taskId,
            String commentId,
            String content,
            void Function()? Function() onComplete)
        updateComment,
    required TResult Function(
            String taskId, bool isSyncing, InternetState internetState)
        fetchAllComments,
    required TResult Function(bool requiredReload, InternetState internetState)
        fetchAllTasks,
    required TResult Function(File? file) setPickedFileForComment,
    required TResult Function(BuildContext context) syncData,
    required TResult Function() syncDataInServer,
    required TResult Function(int savedTime)
        addCurrentTimeStampToAllTasksLocally,
    required TResult Function(int index) updateCurrentHomeIndex,
    required TResult Function() resetSelectItems,
    required TResult Function(DateTime focusedDate, InternetState internetState)
        updateFocusedDate,
    required TResult Function() resetMessage,
    required TResult Function(String taskId, String fromSectionId,
            String sectionId, List<String> labels)
        updateSection,
    required TResult Function(String taskId, List<String> labels) updateTimer,
    required TResult Function(String taskId, List<String> labels)
        updateTimerState,
    required TResult Function(String taskId, List<String> labels)
        updateTimerLocally,
    required TResult Function(String taskId, List<String> labels)
        updateTimerStateLocally,
    required TResult Function(String taskId, List<String> labels) completeTask,
    required TResult Function(String taskId, List<String> labels) reopenTask,
    required TResult Function(String taskId, List<String> labels) startTask,
    required TResult Function(String taskId) deleteTask,
    required TResult Function(AppLocalizations appLocalization) deleteAllTask,
    required TResult Function(String commentId, String taskId) deleteComment,
    required TResult Function(String id) sortByDateDescending,
    required TResult Function(String id) sortByNameDescending,
    required TResult Function(String id) sortByNameAscending,
    required TResult Function(String id) sortByDateAscending,
    required TResult Function(String id) sortByPriorityDescending,
    required TResult Function(String id) sortByPriorityAscending,
  }) {
    return sortByPriorityDescending(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TasksTags tasksTags)? updateSelectedTaskTag,
    TResult? Function(int index)? removeSelectedTaskTag,
    TResult? Function(TasksPriority taskPriority)? updateSelectedTaskPriority,
    TResult? Function(TasksStatus tasksStatus)? updateSelectedTaskStatus,
    TResult? Function(
            AppLocalizations appLocalization,
            String dueDate,
            String content,
            String description,
            void Function()? Function() onComplete)?
        addNewTask,
    TResult? Function(
            AppLocalizations appLocalization,
            String dueDate,
            String content,
            String taskId,
            String description,
            void Function()? Function() onComplete)?
        updateFullTask,
    TResult? Function(AppLocalizations appLocalization, String taskId,
            String content, void Function()? Function() onComplete)?
        addNewComment,
    TResult? Function(
            AppLocalizations appLocalization,
            String taskId,
            String commentId,
            String content,
            void Function()? Function() onComplete)?
        updateComment,
    TResult? Function(
            String taskId, bool isSyncing, InternetState internetState)?
        fetchAllComments,
    TResult? Function(bool requiredReload, InternetState internetState)?
        fetchAllTasks,
    TResult? Function(File? file)? setPickedFileForComment,
    TResult? Function(BuildContext context)? syncData,
    TResult? Function()? syncDataInServer,
    TResult? Function(int savedTime)? addCurrentTimeStampToAllTasksLocally,
    TResult? Function(int index)? updateCurrentHomeIndex,
    TResult? Function()? resetSelectItems,
    TResult? Function(DateTime focusedDate, InternetState internetState)?
        updateFocusedDate,
    TResult? Function()? resetMessage,
    TResult? Function(String taskId, String fromSectionId, String sectionId,
            List<String> labels)?
        updateSection,
    TResult? Function(String taskId, List<String> labels)? updateTimer,
    TResult? Function(String taskId, List<String> labels)? updateTimerState,
    TResult? Function(String taskId, List<String> labels)? updateTimerLocally,
    TResult? Function(String taskId, List<String> labels)?
        updateTimerStateLocally,
    TResult? Function(String taskId, List<String> labels)? completeTask,
    TResult? Function(String taskId, List<String> labels)? reopenTask,
    TResult? Function(String taskId, List<String> labels)? startTask,
    TResult? Function(String taskId)? deleteTask,
    TResult? Function(AppLocalizations appLocalization)? deleteAllTask,
    TResult? Function(String commentId, String taskId)? deleteComment,
    TResult? Function(String id)? sortByDateDescending,
    TResult? Function(String id)? sortByNameDescending,
    TResult? Function(String id)? sortByNameAscending,
    TResult? Function(String id)? sortByDateAscending,
    TResult? Function(String id)? sortByPriorityDescending,
    TResult? Function(String id)? sortByPriorityAscending,
  }) {
    return sortByPriorityDescending?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TasksTags tasksTags)? updateSelectedTaskTag,
    TResult Function(int index)? removeSelectedTaskTag,
    TResult Function(TasksPriority taskPriority)? updateSelectedTaskPriority,
    TResult Function(TasksStatus tasksStatus)? updateSelectedTaskStatus,
    TResult Function(
            AppLocalizations appLocalization,
            String dueDate,
            String content,
            String description,
            void Function()? Function() onComplete)?
        addNewTask,
    TResult Function(
            AppLocalizations appLocalization,
            String dueDate,
            String content,
            String taskId,
            String description,
            void Function()? Function() onComplete)?
        updateFullTask,
    TResult Function(AppLocalizations appLocalization, String taskId,
            String content, void Function()? Function() onComplete)?
        addNewComment,
    TResult Function(
            AppLocalizations appLocalization,
            String taskId,
            String commentId,
            String content,
            void Function()? Function() onComplete)?
        updateComment,
    TResult Function(
            String taskId, bool isSyncing, InternetState internetState)?
        fetchAllComments,
    TResult Function(bool requiredReload, InternetState internetState)?
        fetchAllTasks,
    TResult Function(File? file)? setPickedFileForComment,
    TResult Function(BuildContext context)? syncData,
    TResult Function()? syncDataInServer,
    TResult Function(int savedTime)? addCurrentTimeStampToAllTasksLocally,
    TResult Function(int index)? updateCurrentHomeIndex,
    TResult Function()? resetSelectItems,
    TResult Function(DateTime focusedDate, InternetState internetState)?
        updateFocusedDate,
    TResult Function()? resetMessage,
    TResult Function(String taskId, String fromSectionId, String sectionId,
            List<String> labels)?
        updateSection,
    TResult Function(String taskId, List<String> labels)? updateTimer,
    TResult Function(String taskId, List<String> labels)? updateTimerState,
    TResult Function(String taskId, List<String> labels)? updateTimerLocally,
    TResult Function(String taskId, List<String> labels)?
        updateTimerStateLocally,
    TResult Function(String taskId, List<String> labels)? completeTask,
    TResult Function(String taskId, List<String> labels)? reopenTask,
    TResult Function(String taskId, List<String> labels)? startTask,
    TResult Function(String taskId)? deleteTask,
    TResult Function(AppLocalizations appLocalization)? deleteAllTask,
    TResult Function(String commentId, String taskId)? deleteComment,
    TResult Function(String id)? sortByDateDescending,
    TResult Function(String id)? sortByNameDescending,
    TResult Function(String id)? sortByNameAscending,
    TResult Function(String id)? sortByDateAscending,
    TResult Function(String id)? sortByPriorityDescending,
    TResult Function(String id)? sortByPriorityAscending,
    required TResult orElse(),
  }) {
    if (sortByPriorityDescending != null) {
      return sortByPriorityDescending(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateSelectedTaskTag value)
        updateSelectedTaskTag,
    required TResult Function(_RemoveSelectedTaskTag value)
        removeSelectedTaskTag,
    required TResult Function(_UpdateSelectedTaskPriority value)
        updateSelectedTaskPriority,
    required TResult Function(_UpdateSelectedTaskStatus value)
        updateSelectedTaskStatus,
    required TResult Function(_AddNewTask value) addNewTask,
    required TResult Function(_AddFullTask value) updateFullTask,
    required TResult Function(_AddNewComment value) addNewComment,
    required TResult Function(_Updateomment value) updateComment,
    required TResult Function(_FetchAllComments value) fetchAllComments,
    required TResult Function(_FetchAllTasks value) fetchAllTasks,
    required TResult Function(_SetPickedFileForComment value)
        setPickedFileForComment,
    required TResult Function(_SyncData value) syncData,
    required TResult Function(_SyncDataInServer value) syncDataInServer,
    required TResult Function(_AddCurrentTimeStampToAllTasksLocally value)
        addCurrentTimeStampToAllTasksLocally,
    required TResult Function(_UpdateCurrentHomeIndex value)
        updateCurrentHomeIndex,
    required TResult Function(_ResetSelectItems value) resetSelectItems,
    required TResult Function(_UpdateFocusedDate value) updateFocusedDate,
    required TResult Function(_ResetMessage value) resetMessage,
    required TResult Function(_UpdateSection value) updateSection,
    required TResult Function(_UpdateTimer value) updateTimer,
    required TResult Function(_UpdateTimerState value) updateTimerState,
    required TResult Function(_UpdateTimerLocally value) updateTimerLocally,
    required TResult Function(_UpdateTimerStateLocally value)
        updateTimerStateLocally,
    required TResult Function(_CompleteTask value) completeTask,
    required TResult Function(_ReopenTaskTask value) reopenTask,
    required TResult Function(_StartTask value) startTask,
    required TResult Function(_DeleteTask value) deleteTask,
    required TResult Function(_DeleteAllTask value) deleteAllTask,
    required TResult Function(_DeleteComment value) deleteComment,
    required TResult Function(_SortByDateDescending value) sortByDateDescending,
    required TResult Function(_SortByNameDescending value) sortByNameDescending,
    required TResult Function(_SortByNameAscending value) sortByNameAscending,
    required TResult Function(_SortByDateAscending value) sortByDateAscending,
    required TResult Function(_SortByPriorityDescending value)
        sortByPriorityDescending,
    required TResult Function(_SortByPriorityAscending value)
        sortByPriorityAscending,
  }) {
    return sortByPriorityDescending(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateSelectedTaskTag value)? updateSelectedTaskTag,
    TResult? Function(_RemoveSelectedTaskTag value)? removeSelectedTaskTag,
    TResult? Function(_UpdateSelectedTaskPriority value)?
        updateSelectedTaskPriority,
    TResult? Function(_UpdateSelectedTaskStatus value)?
        updateSelectedTaskStatus,
    TResult? Function(_AddNewTask value)? addNewTask,
    TResult? Function(_AddFullTask value)? updateFullTask,
    TResult? Function(_AddNewComment value)? addNewComment,
    TResult? Function(_Updateomment value)? updateComment,
    TResult? Function(_FetchAllComments value)? fetchAllComments,
    TResult? Function(_FetchAllTasks value)? fetchAllTasks,
    TResult? Function(_SetPickedFileForComment value)? setPickedFileForComment,
    TResult? Function(_SyncData value)? syncData,
    TResult? Function(_SyncDataInServer value)? syncDataInServer,
    TResult? Function(_AddCurrentTimeStampToAllTasksLocally value)?
        addCurrentTimeStampToAllTasksLocally,
    TResult? Function(_UpdateCurrentHomeIndex value)? updateCurrentHomeIndex,
    TResult? Function(_ResetSelectItems value)? resetSelectItems,
    TResult? Function(_UpdateFocusedDate value)? updateFocusedDate,
    TResult? Function(_ResetMessage value)? resetMessage,
    TResult? Function(_UpdateSection value)? updateSection,
    TResult? Function(_UpdateTimer value)? updateTimer,
    TResult? Function(_UpdateTimerState value)? updateTimerState,
    TResult? Function(_UpdateTimerLocally value)? updateTimerLocally,
    TResult? Function(_UpdateTimerStateLocally value)? updateTimerStateLocally,
    TResult? Function(_CompleteTask value)? completeTask,
    TResult? Function(_ReopenTaskTask value)? reopenTask,
    TResult? Function(_StartTask value)? startTask,
    TResult? Function(_DeleteTask value)? deleteTask,
    TResult? Function(_DeleteAllTask value)? deleteAllTask,
    TResult? Function(_DeleteComment value)? deleteComment,
    TResult? Function(_SortByDateDescending value)? sortByDateDescending,
    TResult? Function(_SortByNameDescending value)? sortByNameDescending,
    TResult? Function(_SortByNameAscending value)? sortByNameAscending,
    TResult? Function(_SortByDateAscending value)? sortByDateAscending,
    TResult? Function(_SortByPriorityDescending value)?
        sortByPriorityDescending,
    TResult? Function(_SortByPriorityAscending value)? sortByPriorityAscending,
  }) {
    return sortByPriorityDescending?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateSelectedTaskTag value)? updateSelectedTaskTag,
    TResult Function(_RemoveSelectedTaskTag value)? removeSelectedTaskTag,
    TResult Function(_UpdateSelectedTaskPriority value)?
        updateSelectedTaskPriority,
    TResult Function(_UpdateSelectedTaskStatus value)? updateSelectedTaskStatus,
    TResult Function(_AddNewTask value)? addNewTask,
    TResult Function(_AddFullTask value)? updateFullTask,
    TResult Function(_AddNewComment value)? addNewComment,
    TResult Function(_Updateomment value)? updateComment,
    TResult Function(_FetchAllComments value)? fetchAllComments,
    TResult Function(_FetchAllTasks value)? fetchAllTasks,
    TResult Function(_SetPickedFileForComment value)? setPickedFileForComment,
    TResult Function(_SyncData value)? syncData,
    TResult Function(_SyncDataInServer value)? syncDataInServer,
    TResult Function(_AddCurrentTimeStampToAllTasksLocally value)?
        addCurrentTimeStampToAllTasksLocally,
    TResult Function(_UpdateCurrentHomeIndex value)? updateCurrentHomeIndex,
    TResult Function(_ResetSelectItems value)? resetSelectItems,
    TResult Function(_UpdateFocusedDate value)? updateFocusedDate,
    TResult Function(_ResetMessage value)? resetMessage,
    TResult Function(_UpdateSection value)? updateSection,
    TResult Function(_UpdateTimer value)? updateTimer,
    TResult Function(_UpdateTimerState value)? updateTimerState,
    TResult Function(_UpdateTimerLocally value)? updateTimerLocally,
    TResult Function(_UpdateTimerStateLocally value)? updateTimerStateLocally,
    TResult Function(_CompleteTask value)? completeTask,
    TResult Function(_ReopenTaskTask value)? reopenTask,
    TResult Function(_StartTask value)? startTask,
    TResult Function(_DeleteTask value)? deleteTask,
    TResult Function(_DeleteAllTask value)? deleteAllTask,
    TResult Function(_DeleteComment value)? deleteComment,
    TResult Function(_SortByDateDescending value)? sortByDateDescending,
    TResult Function(_SortByNameDescending value)? sortByNameDescending,
    TResult Function(_SortByNameAscending value)? sortByNameAscending,
    TResult Function(_SortByDateAscending value)? sortByDateAscending,
    TResult Function(_SortByPriorityDescending value)? sortByPriorityDescending,
    TResult Function(_SortByPriorityAscending value)? sortByPriorityAscending,
    required TResult orElse(),
  }) {
    if (sortByPriorityDescending != null) {
      return sortByPriorityDescending(this);
    }
    return orElse();
  }
}

abstract class _SortByPriorityDescending implements HomeEvent {
  const factory _SortByPriorityDescending(final String id) =
      _$SortByPriorityDescendingImpl;

  String get id;
  @JsonKey(ignore: true)
  _$$SortByPriorityDescendingImplCopyWith<_$SortByPriorityDescendingImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SortByPriorityAscendingImplCopyWith<$Res> {
  factory _$$SortByPriorityAscendingImplCopyWith(
          _$SortByPriorityAscendingImpl value,
          $Res Function(_$SortByPriorityAscendingImpl) then) =
      __$$SortByPriorityAscendingImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$SortByPriorityAscendingImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$SortByPriorityAscendingImpl>
    implements _$$SortByPriorityAscendingImplCopyWith<$Res> {
  __$$SortByPriorityAscendingImplCopyWithImpl(
      _$SortByPriorityAscendingImpl _value,
      $Res Function(_$SortByPriorityAscendingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$SortByPriorityAscendingImpl(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SortByPriorityAscendingImpl implements _SortByPriorityAscending {
  const _$SortByPriorityAscendingImpl(this.id);

  @override
  final String id;

  @override
  String toString() {
    return 'HomeEvent.sortByPriorityAscending(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SortByPriorityAscendingImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SortByPriorityAscendingImplCopyWith<_$SortByPriorityAscendingImpl>
      get copyWith => __$$SortByPriorityAscendingImplCopyWithImpl<
          _$SortByPriorityAscendingImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TasksTags tasksTags) updateSelectedTaskTag,
    required TResult Function(int index) removeSelectedTaskTag,
    required TResult Function(TasksPriority taskPriority)
        updateSelectedTaskPriority,
    required TResult Function(TasksStatus tasksStatus) updateSelectedTaskStatus,
    required TResult Function(
            AppLocalizations appLocalization,
            String dueDate,
            String content,
            String description,
            void Function()? Function() onComplete)
        addNewTask,
    required TResult Function(
            AppLocalizations appLocalization,
            String dueDate,
            String content,
            String taskId,
            String description,
            void Function()? Function() onComplete)
        updateFullTask,
    required TResult Function(AppLocalizations appLocalization, String taskId,
            String content, void Function()? Function() onComplete)
        addNewComment,
    required TResult Function(
            AppLocalizations appLocalization,
            String taskId,
            String commentId,
            String content,
            void Function()? Function() onComplete)
        updateComment,
    required TResult Function(
            String taskId, bool isSyncing, InternetState internetState)
        fetchAllComments,
    required TResult Function(bool requiredReload, InternetState internetState)
        fetchAllTasks,
    required TResult Function(File? file) setPickedFileForComment,
    required TResult Function(BuildContext context) syncData,
    required TResult Function() syncDataInServer,
    required TResult Function(int savedTime)
        addCurrentTimeStampToAllTasksLocally,
    required TResult Function(int index) updateCurrentHomeIndex,
    required TResult Function() resetSelectItems,
    required TResult Function(DateTime focusedDate, InternetState internetState)
        updateFocusedDate,
    required TResult Function() resetMessage,
    required TResult Function(String taskId, String fromSectionId,
            String sectionId, List<String> labels)
        updateSection,
    required TResult Function(String taskId, List<String> labels) updateTimer,
    required TResult Function(String taskId, List<String> labels)
        updateTimerState,
    required TResult Function(String taskId, List<String> labels)
        updateTimerLocally,
    required TResult Function(String taskId, List<String> labels)
        updateTimerStateLocally,
    required TResult Function(String taskId, List<String> labels) completeTask,
    required TResult Function(String taskId, List<String> labels) reopenTask,
    required TResult Function(String taskId, List<String> labels) startTask,
    required TResult Function(String taskId) deleteTask,
    required TResult Function(AppLocalizations appLocalization) deleteAllTask,
    required TResult Function(String commentId, String taskId) deleteComment,
    required TResult Function(String id) sortByDateDescending,
    required TResult Function(String id) sortByNameDescending,
    required TResult Function(String id) sortByNameAscending,
    required TResult Function(String id) sortByDateAscending,
    required TResult Function(String id) sortByPriorityDescending,
    required TResult Function(String id) sortByPriorityAscending,
  }) {
    return sortByPriorityAscending(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TasksTags tasksTags)? updateSelectedTaskTag,
    TResult? Function(int index)? removeSelectedTaskTag,
    TResult? Function(TasksPriority taskPriority)? updateSelectedTaskPriority,
    TResult? Function(TasksStatus tasksStatus)? updateSelectedTaskStatus,
    TResult? Function(
            AppLocalizations appLocalization,
            String dueDate,
            String content,
            String description,
            void Function()? Function() onComplete)?
        addNewTask,
    TResult? Function(
            AppLocalizations appLocalization,
            String dueDate,
            String content,
            String taskId,
            String description,
            void Function()? Function() onComplete)?
        updateFullTask,
    TResult? Function(AppLocalizations appLocalization, String taskId,
            String content, void Function()? Function() onComplete)?
        addNewComment,
    TResult? Function(
            AppLocalizations appLocalization,
            String taskId,
            String commentId,
            String content,
            void Function()? Function() onComplete)?
        updateComment,
    TResult? Function(
            String taskId, bool isSyncing, InternetState internetState)?
        fetchAllComments,
    TResult? Function(bool requiredReload, InternetState internetState)?
        fetchAllTasks,
    TResult? Function(File? file)? setPickedFileForComment,
    TResult? Function(BuildContext context)? syncData,
    TResult? Function()? syncDataInServer,
    TResult? Function(int savedTime)? addCurrentTimeStampToAllTasksLocally,
    TResult? Function(int index)? updateCurrentHomeIndex,
    TResult? Function()? resetSelectItems,
    TResult? Function(DateTime focusedDate, InternetState internetState)?
        updateFocusedDate,
    TResult? Function()? resetMessage,
    TResult? Function(String taskId, String fromSectionId, String sectionId,
            List<String> labels)?
        updateSection,
    TResult? Function(String taskId, List<String> labels)? updateTimer,
    TResult? Function(String taskId, List<String> labels)? updateTimerState,
    TResult? Function(String taskId, List<String> labels)? updateTimerLocally,
    TResult? Function(String taskId, List<String> labels)?
        updateTimerStateLocally,
    TResult? Function(String taskId, List<String> labels)? completeTask,
    TResult? Function(String taskId, List<String> labels)? reopenTask,
    TResult? Function(String taskId, List<String> labels)? startTask,
    TResult? Function(String taskId)? deleteTask,
    TResult? Function(AppLocalizations appLocalization)? deleteAllTask,
    TResult? Function(String commentId, String taskId)? deleteComment,
    TResult? Function(String id)? sortByDateDescending,
    TResult? Function(String id)? sortByNameDescending,
    TResult? Function(String id)? sortByNameAscending,
    TResult? Function(String id)? sortByDateAscending,
    TResult? Function(String id)? sortByPriorityDescending,
    TResult? Function(String id)? sortByPriorityAscending,
  }) {
    return sortByPriorityAscending?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TasksTags tasksTags)? updateSelectedTaskTag,
    TResult Function(int index)? removeSelectedTaskTag,
    TResult Function(TasksPriority taskPriority)? updateSelectedTaskPriority,
    TResult Function(TasksStatus tasksStatus)? updateSelectedTaskStatus,
    TResult Function(
            AppLocalizations appLocalization,
            String dueDate,
            String content,
            String description,
            void Function()? Function() onComplete)?
        addNewTask,
    TResult Function(
            AppLocalizations appLocalization,
            String dueDate,
            String content,
            String taskId,
            String description,
            void Function()? Function() onComplete)?
        updateFullTask,
    TResult Function(AppLocalizations appLocalization, String taskId,
            String content, void Function()? Function() onComplete)?
        addNewComment,
    TResult Function(
            AppLocalizations appLocalization,
            String taskId,
            String commentId,
            String content,
            void Function()? Function() onComplete)?
        updateComment,
    TResult Function(
            String taskId, bool isSyncing, InternetState internetState)?
        fetchAllComments,
    TResult Function(bool requiredReload, InternetState internetState)?
        fetchAllTasks,
    TResult Function(File? file)? setPickedFileForComment,
    TResult Function(BuildContext context)? syncData,
    TResult Function()? syncDataInServer,
    TResult Function(int savedTime)? addCurrentTimeStampToAllTasksLocally,
    TResult Function(int index)? updateCurrentHomeIndex,
    TResult Function()? resetSelectItems,
    TResult Function(DateTime focusedDate, InternetState internetState)?
        updateFocusedDate,
    TResult Function()? resetMessage,
    TResult Function(String taskId, String fromSectionId, String sectionId,
            List<String> labels)?
        updateSection,
    TResult Function(String taskId, List<String> labels)? updateTimer,
    TResult Function(String taskId, List<String> labels)? updateTimerState,
    TResult Function(String taskId, List<String> labels)? updateTimerLocally,
    TResult Function(String taskId, List<String> labels)?
        updateTimerStateLocally,
    TResult Function(String taskId, List<String> labels)? completeTask,
    TResult Function(String taskId, List<String> labels)? reopenTask,
    TResult Function(String taskId, List<String> labels)? startTask,
    TResult Function(String taskId)? deleteTask,
    TResult Function(AppLocalizations appLocalization)? deleteAllTask,
    TResult Function(String commentId, String taskId)? deleteComment,
    TResult Function(String id)? sortByDateDescending,
    TResult Function(String id)? sortByNameDescending,
    TResult Function(String id)? sortByNameAscending,
    TResult Function(String id)? sortByDateAscending,
    TResult Function(String id)? sortByPriorityDescending,
    TResult Function(String id)? sortByPriorityAscending,
    required TResult orElse(),
  }) {
    if (sortByPriorityAscending != null) {
      return sortByPriorityAscending(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateSelectedTaskTag value)
        updateSelectedTaskTag,
    required TResult Function(_RemoveSelectedTaskTag value)
        removeSelectedTaskTag,
    required TResult Function(_UpdateSelectedTaskPriority value)
        updateSelectedTaskPriority,
    required TResult Function(_UpdateSelectedTaskStatus value)
        updateSelectedTaskStatus,
    required TResult Function(_AddNewTask value) addNewTask,
    required TResult Function(_AddFullTask value) updateFullTask,
    required TResult Function(_AddNewComment value) addNewComment,
    required TResult Function(_Updateomment value) updateComment,
    required TResult Function(_FetchAllComments value) fetchAllComments,
    required TResult Function(_FetchAllTasks value) fetchAllTasks,
    required TResult Function(_SetPickedFileForComment value)
        setPickedFileForComment,
    required TResult Function(_SyncData value) syncData,
    required TResult Function(_SyncDataInServer value) syncDataInServer,
    required TResult Function(_AddCurrentTimeStampToAllTasksLocally value)
        addCurrentTimeStampToAllTasksLocally,
    required TResult Function(_UpdateCurrentHomeIndex value)
        updateCurrentHomeIndex,
    required TResult Function(_ResetSelectItems value) resetSelectItems,
    required TResult Function(_UpdateFocusedDate value) updateFocusedDate,
    required TResult Function(_ResetMessage value) resetMessage,
    required TResult Function(_UpdateSection value) updateSection,
    required TResult Function(_UpdateTimer value) updateTimer,
    required TResult Function(_UpdateTimerState value) updateTimerState,
    required TResult Function(_UpdateTimerLocally value) updateTimerLocally,
    required TResult Function(_UpdateTimerStateLocally value)
        updateTimerStateLocally,
    required TResult Function(_CompleteTask value) completeTask,
    required TResult Function(_ReopenTaskTask value) reopenTask,
    required TResult Function(_StartTask value) startTask,
    required TResult Function(_DeleteTask value) deleteTask,
    required TResult Function(_DeleteAllTask value) deleteAllTask,
    required TResult Function(_DeleteComment value) deleteComment,
    required TResult Function(_SortByDateDescending value) sortByDateDescending,
    required TResult Function(_SortByNameDescending value) sortByNameDescending,
    required TResult Function(_SortByNameAscending value) sortByNameAscending,
    required TResult Function(_SortByDateAscending value) sortByDateAscending,
    required TResult Function(_SortByPriorityDescending value)
        sortByPriorityDescending,
    required TResult Function(_SortByPriorityAscending value)
        sortByPriorityAscending,
  }) {
    return sortByPriorityAscending(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateSelectedTaskTag value)? updateSelectedTaskTag,
    TResult? Function(_RemoveSelectedTaskTag value)? removeSelectedTaskTag,
    TResult? Function(_UpdateSelectedTaskPriority value)?
        updateSelectedTaskPriority,
    TResult? Function(_UpdateSelectedTaskStatus value)?
        updateSelectedTaskStatus,
    TResult? Function(_AddNewTask value)? addNewTask,
    TResult? Function(_AddFullTask value)? updateFullTask,
    TResult? Function(_AddNewComment value)? addNewComment,
    TResult? Function(_Updateomment value)? updateComment,
    TResult? Function(_FetchAllComments value)? fetchAllComments,
    TResult? Function(_FetchAllTasks value)? fetchAllTasks,
    TResult? Function(_SetPickedFileForComment value)? setPickedFileForComment,
    TResult? Function(_SyncData value)? syncData,
    TResult? Function(_SyncDataInServer value)? syncDataInServer,
    TResult? Function(_AddCurrentTimeStampToAllTasksLocally value)?
        addCurrentTimeStampToAllTasksLocally,
    TResult? Function(_UpdateCurrentHomeIndex value)? updateCurrentHomeIndex,
    TResult? Function(_ResetSelectItems value)? resetSelectItems,
    TResult? Function(_UpdateFocusedDate value)? updateFocusedDate,
    TResult? Function(_ResetMessage value)? resetMessage,
    TResult? Function(_UpdateSection value)? updateSection,
    TResult? Function(_UpdateTimer value)? updateTimer,
    TResult? Function(_UpdateTimerState value)? updateTimerState,
    TResult? Function(_UpdateTimerLocally value)? updateTimerLocally,
    TResult? Function(_UpdateTimerStateLocally value)? updateTimerStateLocally,
    TResult? Function(_CompleteTask value)? completeTask,
    TResult? Function(_ReopenTaskTask value)? reopenTask,
    TResult? Function(_StartTask value)? startTask,
    TResult? Function(_DeleteTask value)? deleteTask,
    TResult? Function(_DeleteAllTask value)? deleteAllTask,
    TResult? Function(_DeleteComment value)? deleteComment,
    TResult? Function(_SortByDateDescending value)? sortByDateDescending,
    TResult? Function(_SortByNameDescending value)? sortByNameDescending,
    TResult? Function(_SortByNameAscending value)? sortByNameAscending,
    TResult? Function(_SortByDateAscending value)? sortByDateAscending,
    TResult? Function(_SortByPriorityDescending value)?
        sortByPriorityDescending,
    TResult? Function(_SortByPriorityAscending value)? sortByPriorityAscending,
  }) {
    return sortByPriorityAscending?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateSelectedTaskTag value)? updateSelectedTaskTag,
    TResult Function(_RemoveSelectedTaskTag value)? removeSelectedTaskTag,
    TResult Function(_UpdateSelectedTaskPriority value)?
        updateSelectedTaskPriority,
    TResult Function(_UpdateSelectedTaskStatus value)? updateSelectedTaskStatus,
    TResult Function(_AddNewTask value)? addNewTask,
    TResult Function(_AddFullTask value)? updateFullTask,
    TResult Function(_AddNewComment value)? addNewComment,
    TResult Function(_Updateomment value)? updateComment,
    TResult Function(_FetchAllComments value)? fetchAllComments,
    TResult Function(_FetchAllTasks value)? fetchAllTasks,
    TResult Function(_SetPickedFileForComment value)? setPickedFileForComment,
    TResult Function(_SyncData value)? syncData,
    TResult Function(_SyncDataInServer value)? syncDataInServer,
    TResult Function(_AddCurrentTimeStampToAllTasksLocally value)?
        addCurrentTimeStampToAllTasksLocally,
    TResult Function(_UpdateCurrentHomeIndex value)? updateCurrentHomeIndex,
    TResult Function(_ResetSelectItems value)? resetSelectItems,
    TResult Function(_UpdateFocusedDate value)? updateFocusedDate,
    TResult Function(_ResetMessage value)? resetMessage,
    TResult Function(_UpdateSection value)? updateSection,
    TResult Function(_UpdateTimer value)? updateTimer,
    TResult Function(_UpdateTimerState value)? updateTimerState,
    TResult Function(_UpdateTimerLocally value)? updateTimerLocally,
    TResult Function(_UpdateTimerStateLocally value)? updateTimerStateLocally,
    TResult Function(_CompleteTask value)? completeTask,
    TResult Function(_ReopenTaskTask value)? reopenTask,
    TResult Function(_StartTask value)? startTask,
    TResult Function(_DeleteTask value)? deleteTask,
    TResult Function(_DeleteAllTask value)? deleteAllTask,
    TResult Function(_DeleteComment value)? deleteComment,
    TResult Function(_SortByDateDescending value)? sortByDateDescending,
    TResult Function(_SortByNameDescending value)? sortByNameDescending,
    TResult Function(_SortByNameAscending value)? sortByNameAscending,
    TResult Function(_SortByDateAscending value)? sortByDateAscending,
    TResult Function(_SortByPriorityDescending value)? sortByPriorityDescending,
    TResult Function(_SortByPriorityAscending value)? sortByPriorityAscending,
    required TResult orElse(),
  }) {
    if (sortByPriorityAscending != null) {
      return sortByPriorityAscending(this);
    }
    return orElse();
  }
}

abstract class _SortByPriorityAscending implements HomeEvent {
  const factory _SortByPriorityAscending(final String id) =
      _$SortByPriorityAscendingImpl;

  String get id;
  @JsonKey(ignore: true)
  _$$SortByPriorityAscendingImplCopyWith<_$SortByPriorityAscendingImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HomeState {
  AddHomeLoadingBlocStatus get addHomeLoadingBlocStatus =>
      throw _privateConstructorUsedError;
  HomeLoadingBlocStatus get homeLoadingBlocStatus =>
      throw _privateConstructorUsedError;
  TaskManagerLoadingBlocStatus get taskManagerLoadingBlocStatus =>
      throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  File? get pickedFileForComment => throw _privateConstructorUsedError;
  DateTime? get focusedDate => throw _privateConstructorUsedError;
  int get currentHomeIndex => throw _privateConstructorUsedError;
  List<TasksTags> get taskTagList => throw _privateConstructorUsedError;
  List<Widget> get homeScreens => throw _privateConstructorUsedError;
  List<TaskModel> get allTasksModel => throw _privateConstructorUsedError;
  List<CommentsModel> get commentModel => throw _privateConstructorUsedError;
  List<TasksPriority> get tasksPriorityList =>
      throw _privateConstructorUsedError;
  List<TasksStatus> get tasksStatusList => throw _privateConstructorUsedError;
  List<TasksTags> get selectedTaskTag => throw _privateConstructorUsedError;
  TasksPriority get selectedTaskPriority => throw _privateConstructorUsedError;
  TasksStatus get selectedTasksStatus => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
  @useResult
  $Res call(
      {AddHomeLoadingBlocStatus addHomeLoadingBlocStatus,
      HomeLoadingBlocStatus homeLoadingBlocStatus,
      TaskManagerLoadingBlocStatus taskManagerLoadingBlocStatus,
      String message,
      File? pickedFileForComment,
      DateTime? focusedDate,
      int currentHomeIndex,
      List<TasksTags> taskTagList,
      List<Widget> homeScreens,
      List<TaskModel> allTasksModel,
      List<CommentsModel> commentModel,
      List<TasksPriority> tasksPriorityList,
      List<TasksStatus> tasksStatusList,
      List<TasksTags> selectedTaskTag,
      TasksPriority selectedTaskPriority,
      TasksStatus selectedTasksStatus});
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? addHomeLoadingBlocStatus = null,
    Object? homeLoadingBlocStatus = null,
    Object? taskManagerLoadingBlocStatus = null,
    Object? message = null,
    Object? pickedFileForComment = freezed,
    Object? focusedDate = freezed,
    Object? currentHomeIndex = null,
    Object? taskTagList = null,
    Object? homeScreens = null,
    Object? allTasksModel = null,
    Object? commentModel = null,
    Object? tasksPriorityList = null,
    Object? tasksStatusList = null,
    Object? selectedTaskTag = null,
    Object? selectedTaskPriority = null,
    Object? selectedTasksStatus = null,
  }) {
    return _then(_value.copyWith(
      addHomeLoadingBlocStatus: null == addHomeLoadingBlocStatus
          ? _value.addHomeLoadingBlocStatus
          : addHomeLoadingBlocStatus // ignore: cast_nullable_to_non_nullable
              as AddHomeLoadingBlocStatus,
      homeLoadingBlocStatus: null == homeLoadingBlocStatus
          ? _value.homeLoadingBlocStatus
          : homeLoadingBlocStatus // ignore: cast_nullable_to_non_nullable
              as HomeLoadingBlocStatus,
      taskManagerLoadingBlocStatus: null == taskManagerLoadingBlocStatus
          ? _value.taskManagerLoadingBlocStatus
          : taskManagerLoadingBlocStatus // ignore: cast_nullable_to_non_nullable
              as TaskManagerLoadingBlocStatus,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      pickedFileForComment: freezed == pickedFileForComment
          ? _value.pickedFileForComment
          : pickedFileForComment // ignore: cast_nullable_to_non_nullable
              as File?,
      focusedDate: freezed == focusedDate
          ? _value.focusedDate
          : focusedDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      currentHomeIndex: null == currentHomeIndex
          ? _value.currentHomeIndex
          : currentHomeIndex // ignore: cast_nullable_to_non_nullable
              as int,
      taskTagList: null == taskTagList
          ? _value.taskTagList
          : taskTagList // ignore: cast_nullable_to_non_nullable
              as List<TasksTags>,
      homeScreens: null == homeScreens
          ? _value.homeScreens
          : homeScreens // ignore: cast_nullable_to_non_nullable
              as List<Widget>,
      allTasksModel: null == allTasksModel
          ? _value.allTasksModel
          : allTasksModel // ignore: cast_nullable_to_non_nullable
              as List<TaskModel>,
      commentModel: null == commentModel
          ? _value.commentModel
          : commentModel // ignore: cast_nullable_to_non_nullable
              as List<CommentsModel>,
      tasksPriorityList: null == tasksPriorityList
          ? _value.tasksPriorityList
          : tasksPriorityList // ignore: cast_nullable_to_non_nullable
              as List<TasksPriority>,
      tasksStatusList: null == tasksStatusList
          ? _value.tasksStatusList
          : tasksStatusList // ignore: cast_nullable_to_non_nullable
              as List<TasksStatus>,
      selectedTaskTag: null == selectedTaskTag
          ? _value.selectedTaskTag
          : selectedTaskTag // ignore: cast_nullable_to_non_nullable
              as List<TasksTags>,
      selectedTaskPriority: null == selectedTaskPriority
          ? _value.selectedTaskPriority
          : selectedTaskPriority // ignore: cast_nullable_to_non_nullable
              as TasksPriority,
      selectedTasksStatus: null == selectedTasksStatus
          ? _value.selectedTasksStatus
          : selectedTasksStatus // ignore: cast_nullable_to_non_nullable
              as TasksStatus,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HomeStateImplCopyWith<$Res>
    implements $HomeStateCopyWith<$Res> {
  factory _$$HomeStateImplCopyWith(
          _$HomeStateImpl value, $Res Function(_$HomeStateImpl) then) =
      __$$HomeStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {AddHomeLoadingBlocStatus addHomeLoadingBlocStatus,
      HomeLoadingBlocStatus homeLoadingBlocStatus,
      TaskManagerLoadingBlocStatus taskManagerLoadingBlocStatus,
      String message,
      File? pickedFileForComment,
      DateTime? focusedDate,
      int currentHomeIndex,
      List<TasksTags> taskTagList,
      List<Widget> homeScreens,
      List<TaskModel> allTasksModel,
      List<CommentsModel> commentModel,
      List<TasksPriority> tasksPriorityList,
      List<TasksStatus> tasksStatusList,
      List<TasksTags> selectedTaskTag,
      TasksPriority selectedTaskPriority,
      TasksStatus selectedTasksStatus});
}

/// @nodoc
class __$$HomeStateImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$HomeStateImpl>
    implements _$$HomeStateImplCopyWith<$Res> {
  __$$HomeStateImplCopyWithImpl(
      _$HomeStateImpl _value, $Res Function(_$HomeStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? addHomeLoadingBlocStatus = null,
    Object? homeLoadingBlocStatus = null,
    Object? taskManagerLoadingBlocStatus = null,
    Object? message = null,
    Object? pickedFileForComment = freezed,
    Object? focusedDate = freezed,
    Object? currentHomeIndex = null,
    Object? taskTagList = null,
    Object? homeScreens = null,
    Object? allTasksModel = null,
    Object? commentModel = null,
    Object? tasksPriorityList = null,
    Object? tasksStatusList = null,
    Object? selectedTaskTag = null,
    Object? selectedTaskPriority = null,
    Object? selectedTasksStatus = null,
  }) {
    return _then(_$HomeStateImpl(
      addHomeLoadingBlocStatus: null == addHomeLoadingBlocStatus
          ? _value.addHomeLoadingBlocStatus
          : addHomeLoadingBlocStatus // ignore: cast_nullable_to_non_nullable
              as AddHomeLoadingBlocStatus,
      homeLoadingBlocStatus: null == homeLoadingBlocStatus
          ? _value.homeLoadingBlocStatus
          : homeLoadingBlocStatus // ignore: cast_nullable_to_non_nullable
              as HomeLoadingBlocStatus,
      taskManagerLoadingBlocStatus: null == taskManagerLoadingBlocStatus
          ? _value.taskManagerLoadingBlocStatus
          : taskManagerLoadingBlocStatus // ignore: cast_nullable_to_non_nullable
              as TaskManagerLoadingBlocStatus,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      pickedFileForComment: freezed == pickedFileForComment
          ? _value.pickedFileForComment
          : pickedFileForComment // ignore: cast_nullable_to_non_nullable
              as File?,
      focusedDate: freezed == focusedDate
          ? _value.focusedDate
          : focusedDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      currentHomeIndex: null == currentHomeIndex
          ? _value.currentHomeIndex
          : currentHomeIndex // ignore: cast_nullable_to_non_nullable
              as int,
      taskTagList: null == taskTagList
          ? _value._taskTagList
          : taskTagList // ignore: cast_nullable_to_non_nullable
              as List<TasksTags>,
      homeScreens: null == homeScreens
          ? _value._homeScreens
          : homeScreens // ignore: cast_nullable_to_non_nullable
              as List<Widget>,
      allTasksModel: null == allTasksModel
          ? _value._allTasksModel
          : allTasksModel // ignore: cast_nullable_to_non_nullable
              as List<TaskModel>,
      commentModel: null == commentModel
          ? _value._commentModel
          : commentModel // ignore: cast_nullable_to_non_nullable
              as List<CommentsModel>,
      tasksPriorityList: null == tasksPriorityList
          ? _value._tasksPriorityList
          : tasksPriorityList // ignore: cast_nullable_to_non_nullable
              as List<TasksPriority>,
      tasksStatusList: null == tasksStatusList
          ? _value._tasksStatusList
          : tasksStatusList // ignore: cast_nullable_to_non_nullable
              as List<TasksStatus>,
      selectedTaskTag: null == selectedTaskTag
          ? _value._selectedTaskTag
          : selectedTaskTag // ignore: cast_nullable_to_non_nullable
              as List<TasksTags>,
      selectedTaskPriority: null == selectedTaskPriority
          ? _value.selectedTaskPriority
          : selectedTaskPriority // ignore: cast_nullable_to_non_nullable
              as TasksPriority,
      selectedTasksStatus: null == selectedTasksStatus
          ? _value.selectedTasksStatus
          : selectedTasksStatus // ignore: cast_nullable_to_non_nullable
              as TasksStatus,
    ));
  }
}

/// @nodoc

class _$HomeStateImpl implements _HomeState {
  const _$HomeStateImpl(
      {required this.addHomeLoadingBlocStatus,
      required this.homeLoadingBlocStatus,
      required this.taskManagerLoadingBlocStatus,
      required this.message,
      required this.pickedFileForComment,
      required this.focusedDate,
      required this.currentHomeIndex,
      required final List<TasksTags> taskTagList,
      required final List<Widget> homeScreens,
      required final List<TaskModel> allTasksModel,
      required final List<CommentsModel> commentModel,
      required final List<TasksPriority> tasksPriorityList,
      required final List<TasksStatus> tasksStatusList,
      required final List<TasksTags> selectedTaskTag,
      required this.selectedTaskPriority,
      required this.selectedTasksStatus})
      : _taskTagList = taskTagList,
        _homeScreens = homeScreens,
        _allTasksModel = allTasksModel,
        _commentModel = commentModel,
        _tasksPriorityList = tasksPriorityList,
        _tasksStatusList = tasksStatusList,
        _selectedTaskTag = selectedTaskTag;

  @override
  final AddHomeLoadingBlocStatus addHomeLoadingBlocStatus;
  @override
  final HomeLoadingBlocStatus homeLoadingBlocStatus;
  @override
  final TaskManagerLoadingBlocStatus taskManagerLoadingBlocStatus;
  @override
  final String message;
  @override
  final File? pickedFileForComment;
  @override
  final DateTime? focusedDate;
  @override
  final int currentHomeIndex;
  final List<TasksTags> _taskTagList;
  @override
  List<TasksTags> get taskTagList {
    if (_taskTagList is EqualUnmodifiableListView) return _taskTagList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_taskTagList);
  }

  final List<Widget> _homeScreens;
  @override
  List<Widget> get homeScreens {
    if (_homeScreens is EqualUnmodifiableListView) return _homeScreens;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_homeScreens);
  }

  final List<TaskModel> _allTasksModel;
  @override
  List<TaskModel> get allTasksModel {
    if (_allTasksModel is EqualUnmodifiableListView) return _allTasksModel;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_allTasksModel);
  }

  final List<CommentsModel> _commentModel;
  @override
  List<CommentsModel> get commentModel {
    if (_commentModel is EqualUnmodifiableListView) return _commentModel;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_commentModel);
  }

  final List<TasksPriority> _tasksPriorityList;
  @override
  List<TasksPriority> get tasksPriorityList {
    if (_tasksPriorityList is EqualUnmodifiableListView)
      return _tasksPriorityList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tasksPriorityList);
  }

  final List<TasksStatus> _tasksStatusList;
  @override
  List<TasksStatus> get tasksStatusList {
    if (_tasksStatusList is EqualUnmodifiableListView) return _tasksStatusList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tasksStatusList);
  }

  final List<TasksTags> _selectedTaskTag;
  @override
  List<TasksTags> get selectedTaskTag {
    if (_selectedTaskTag is EqualUnmodifiableListView) return _selectedTaskTag;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_selectedTaskTag);
  }

  @override
  final TasksPriority selectedTaskPriority;
  @override
  final TasksStatus selectedTasksStatus;

  @override
  String toString() {
    return 'HomeState(addHomeLoadingBlocStatus: $addHomeLoadingBlocStatus, homeLoadingBlocStatus: $homeLoadingBlocStatus, taskManagerLoadingBlocStatus: $taskManagerLoadingBlocStatus, message: $message, pickedFileForComment: $pickedFileForComment, focusedDate: $focusedDate, currentHomeIndex: $currentHomeIndex, taskTagList: $taskTagList, homeScreens: $homeScreens, allTasksModel: $allTasksModel, commentModel: $commentModel, tasksPriorityList: $tasksPriorityList, tasksStatusList: $tasksStatusList, selectedTaskTag: $selectedTaskTag, selectedTaskPriority: $selectedTaskPriority, selectedTasksStatus: $selectedTasksStatus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeStateImpl &&
            (identical(
                    other.addHomeLoadingBlocStatus, addHomeLoadingBlocStatus) ||
                other.addHomeLoadingBlocStatus == addHomeLoadingBlocStatus) &&
            (identical(other.homeLoadingBlocStatus, homeLoadingBlocStatus) ||
                other.homeLoadingBlocStatus == homeLoadingBlocStatus) &&
            (identical(other.taskManagerLoadingBlocStatus,
                    taskManagerLoadingBlocStatus) ||
                other.taskManagerLoadingBlocStatus ==
                    taskManagerLoadingBlocStatus) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.pickedFileForComment, pickedFileForComment) ||
                other.pickedFileForComment == pickedFileForComment) &&
            (identical(other.focusedDate, focusedDate) ||
                other.focusedDate == focusedDate) &&
            (identical(other.currentHomeIndex, currentHomeIndex) ||
                other.currentHomeIndex == currentHomeIndex) &&
            const DeepCollectionEquality()
                .equals(other._taskTagList, _taskTagList) &&
            const DeepCollectionEquality()
                .equals(other._homeScreens, _homeScreens) &&
            const DeepCollectionEquality()
                .equals(other._allTasksModel, _allTasksModel) &&
            const DeepCollectionEquality()
                .equals(other._commentModel, _commentModel) &&
            const DeepCollectionEquality()
                .equals(other._tasksPriorityList, _tasksPriorityList) &&
            const DeepCollectionEquality()
                .equals(other._tasksStatusList, _tasksStatusList) &&
            const DeepCollectionEquality()
                .equals(other._selectedTaskTag, _selectedTaskTag) &&
            (identical(other.selectedTaskPriority, selectedTaskPriority) ||
                other.selectedTaskPriority == selectedTaskPriority) &&
            (identical(other.selectedTasksStatus, selectedTasksStatus) ||
                other.selectedTasksStatus == selectedTasksStatus));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      addHomeLoadingBlocStatus,
      homeLoadingBlocStatus,
      taskManagerLoadingBlocStatus,
      message,
      pickedFileForComment,
      focusedDate,
      currentHomeIndex,
      const DeepCollectionEquality().hash(_taskTagList),
      const DeepCollectionEquality().hash(_homeScreens),
      const DeepCollectionEquality().hash(_allTasksModel),
      const DeepCollectionEquality().hash(_commentModel),
      const DeepCollectionEquality().hash(_tasksPriorityList),
      const DeepCollectionEquality().hash(_tasksStatusList),
      const DeepCollectionEquality().hash(_selectedTaskTag),
      selectedTaskPriority,
      selectedTasksStatus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      __$$HomeStateImplCopyWithImpl<_$HomeStateImpl>(this, _$identity);
}

abstract class _HomeState implements HomeState {
  const factory _HomeState(
      {required final AddHomeLoadingBlocStatus addHomeLoadingBlocStatus,
      required final HomeLoadingBlocStatus homeLoadingBlocStatus,
      required final TaskManagerLoadingBlocStatus taskManagerLoadingBlocStatus,
      required final String message,
      required final File? pickedFileForComment,
      required final DateTime? focusedDate,
      required final int currentHomeIndex,
      required final List<TasksTags> taskTagList,
      required final List<Widget> homeScreens,
      required final List<TaskModel> allTasksModel,
      required final List<CommentsModel> commentModel,
      required final List<TasksPriority> tasksPriorityList,
      required final List<TasksStatus> tasksStatusList,
      required final List<TasksTags> selectedTaskTag,
      required final TasksPriority selectedTaskPriority,
      required final TasksStatus selectedTasksStatus}) = _$HomeStateImpl;

  @override
  AddHomeLoadingBlocStatus get addHomeLoadingBlocStatus;
  @override
  HomeLoadingBlocStatus get homeLoadingBlocStatus;
  @override
  TaskManagerLoadingBlocStatus get taskManagerLoadingBlocStatus;
  @override
  String get message;
  @override
  File? get pickedFileForComment;
  @override
  DateTime? get focusedDate;
  @override
  int get currentHomeIndex;
  @override
  List<TasksTags> get taskTagList;
  @override
  List<Widget> get homeScreens;
  @override
  List<TaskModel> get allTasksModel;
  @override
  List<CommentsModel> get commentModel;
  @override
  List<TasksPriority> get tasksPriorityList;
  @override
  List<TasksStatus> get tasksStatusList;
  @override
  List<TasksTags> get selectedTaskTag;
  @override
  TasksPriority get selectedTaskPriority;
  @override
  TasksStatus get selectedTasksStatus;
  @override
  @JsonKey(ignore: true)
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
