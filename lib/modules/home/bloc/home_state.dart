part of 'home_bloc.dart';


enum AddHomeLoadingBlocStatus {
  isUnknown,
  isLoading,
  isSuccess,
  isFail
}

enum HomeLoadingBlocStatus {
  isUnknown,
  isLoading,
  isSuccess,
  isFail
}

enum TaskManagerLoadingBlocStatus {
  isUnknown,
  isLoading,
  isSuccess,
  isFail
}

enum TasksStatus {
  todo, // 157786521
  inProgress, // 157786541
  done, // 157786551
}
enum TasksPriority {
  lowPriority,      // Priority level 1
  normalPriority,   // Priority level 2
  highPriority,     // Priority level 3
  highestPriority,  // Priority level 4
}



enum TasksTags {
  fun,
  travel,
  health,
  work,
  education,
  family,
  finance,
  shopping,
  exercise,
  leisure,
  social,
  project,
  hobby,
  volunteer,
  technology,
}


@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    required AddHomeLoadingBlocStatus addHomeLoadingBlocStatus,
    required HomeLoadingBlocStatus homeLoadingBlocStatus,
    required TaskManagerLoadingBlocStatus taskManagerLoadingBlocStatus,
    required String message,
    required File? pickedFileForComment,
    required DateTime? focusedDate,
    required int currentHomeIndex,
    required List<TasksTags> taskTagList,
    required List<Widget> homeScreens,
    required List<TaskModel> allTasksModel,
    required List<CommentsModel> commentModel,
    required List<TasksPriority> tasksPriorityList,
    required List<TasksStatus> tasksStatusList,
    required List<TasksTags> selectedTaskTag,
    required TasksPriority selectedTaskPriority,
    required TasksStatus selectedTasksStatus,
  }) = _HomeState;

  factory HomeState.initial() {
    return HomeState(
      addHomeLoadingBlocStatus: AddHomeLoadingBlocStatus.isUnknown,
      homeLoadingBlocStatus: HomeLoadingBlocStatus.isUnknown,
      taskManagerLoadingBlocStatus: TaskManagerLoadingBlocStatus.isUnknown,
      selectedTaskTag: [],
      allTasksModel: [],
      commentModel: [],
      pickedFileForComment: null,
      focusedDate: DateTime.now(),
      currentHomeIndex: 0,
      homeScreens:[
        const MultiBoardList(),
        Container(),
        const SingleBoardList(),
      ],
      message: "",
      tasksStatusList: TasksStatus.values,
      selectedTasksStatus: TasksStatus.todo,
      tasksPriorityList: TasksPriority.values,
      taskTagList: TasksTags.values,
      selectedTaskPriority: TasksPriority.normalPriority,
    );
  }
}