import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kanban_board/helpers/internet/internet_cubit.dart';
import 'package:kanban_board/modules/home/models/tasks_model.dart';
import 'package:kanban_board/services/extensions/string_extension.dart';
import 'package:pull_down_button/pull_down_button.dart';
import '../../../constant/color.dart';
import '../../../constant/string_constants.dart';
import '../../../intermediate_widget/kanban_board_ui/kanban_board_ui.dart';
import '../bloc/home_bloc.dart';
import '../widgets/task_card_widget.dart';
import '../widgets/task_item.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';




class MultiBoardList extends StatefulWidget {
  const MultiBoardList({super.key});

  @override
  State<MultiBoardList> createState() => _MultiBoardListState();
}

class _MultiBoardListState extends State<MultiBoardList> {
  late AppFlowyBoardController controller;
  late AppFlowyBoardScrollController boardController;
  late HomeBloc homeBloc;
  late AppLocalizations appLocalizations;

  late AppFlowyGroupData<dynamic> todoGroup = AppFlowyGroupData(id: "To Do", name: "To Do", items: []);
  late AppFlowyGroupData<dynamic> progressGroup = AppFlowyGroupData(id: "In Progress", name: AppLocalizations.of(context)!.inProgress ,items: []);
  late AppFlowyGroupData<dynamic> doneGroup= AppFlowyGroupData(id: "Done", name: AppLocalizations.of(context)!.done, items: []);

  @override
  void initState() {
    super.initState();
    boardController = AppFlowyBoardScrollController();
   // todoGroup = AppFlowyGroupData(id: "To Do", name: AppLocalizations.of(context)!.todos, items: []);
   // progressGroup = AppFlowyGroupData(id: "In Progress", name: AppLocalizations.of(context)!.inProgress ,items: []);
   // doneGroup = AppFlowyGroupData(id: "Done", name: AppLocalizations.of(context)!.done, items: []);

    homeBloc = context.read<HomeBloc>();
    homeBloc.add(HomeEvent.fetchAllTasks(requiredReload: true,internetState: context.read<InternetCubit>().state));

    controller = AppFlowyBoardController(
      onMoveGroup: (fromGroupId, fromIndex, toGroupId, toIndex) {
        debugPrint('Move item from $fromIndex to $toIndex');
      },
      onMoveGroupItem: (groupId, fromIndex, toIndex) {
        debugPrint('Move $groupId:$fromIndex to $groupId:$toIndex');
      },
      onMoveGroupItemToGroup: (fromGroupId, fromIndex, toGroupId, toIndex) {
        debugPrint('Move -- $fromGroupId:$fromIndex to $toGroupId:$toIndex');
        if (fromGroupId == "To Do") {
          List<TaskModel> tasks = homeBloc.state.allTasksModel.where((e) => (e.labels ?? []).first == todoStatusId).toList();
          if (tasks.isNotEmpty && fromIndex < tasks.length) {
            List<String> labels = List.from(tasks[fromIndex].labels ?? []);
            if (labels.isNotEmpty) {
              labels.removeAt(0); // Remove the first element
            }
            homeBloc.add(HomeEvent.updateSection(
              taskId: tasks[fromIndex].id ?? "",
              labels: labels,
              sectionId: toGroupId,
              fromSectionId: fromGroupId,
            ));
          }
        } else if (fromGroupId == "In Progress") {
          List<TaskModel> tasks = homeBloc.state.allTasksModel.where((e) => (e.labels ?? []).first == inProgressStatusId).toList();
          if (tasks.isNotEmpty && fromIndex < tasks.length) {
            List<String> labels = List.from(tasks[fromIndex].labels ?? []);
            if (labels.isNotEmpty) {
              labels.removeAt(0); // Remove the first element
            }
            homeBloc.add(HomeEvent.updateSection(
              taskId: tasks[fromIndex].id ?? "",
              labels: labels,
              sectionId: toGroupId,
              fromSectionId: fromGroupId,
            ));
          }
        } else if (fromGroupId == "Done") {
          List<TaskModel> tasks = homeBloc.state.allTasksModel.where((e) => (e.labels ?? []).first == doneStatusId).toList();
          if (tasks.isNotEmpty && fromIndex < tasks.length) {
            List<String> labels = List.from(tasks[fromIndex].labels ?? []);
            if (labels.isNotEmpty) {
              labels.removeAt(0); // Remove the first element
            }
            homeBloc.add(HomeEvent.updateSection(
              taskId: tasks[fromIndex].id ?? "",
              labels: labels,
              fromSectionId: fromGroupId,
              sectionId: toGroupId,
            ));
          }
        }

      },
    );

  }

  TasksTags? stringToTasksTag(String tag, BuildContext context) {
    final localizations = AppLocalizations.of(context)!;

    switch (tag.toLowerCase()) {
      case 'fun':
        return TasksTags.fun;
      case 'travel':
        return TasksTags.travel;
      case 'health':
        return TasksTags.health;
      case 'work':
        return TasksTags.work;
      case 'education':
        return TasksTags.education;
      case 'family':
        return TasksTags.family;
      case 'finance':
        return TasksTags.finance;
      case 'shopping':
        return TasksTags.shopping;
      case 'exercise':
        return TasksTags.exercise;
      case 'leisure':
        return TasksTags.leisure;
      case 'social':
        return TasksTags.social;
      case 'project':
        return TasksTags.project;
      case 'hobby':
        return TasksTags.hobby;
      case 'volunteer':
        return TasksTags.volunteer;
      case 'technology':
        return TasksTags.technology;
      default:
        return null;
    }
  }


  @override
  Widget build(BuildContext context) {
    const config = AppFlowyBoardConfig(
      groupBackgroundColor: AppColors.groupBackgroundColor,
      stretchGroupHeight: true,
      groupCornerRadius: 20,
      boardCornerRadius: 20,
      groupMargin: EdgeInsets.symmetric(horizontal: 4, vertical: 5),
    );

    return BlocConsumer<InternetCubit, InternetState>(
        listenWhen: (prev, current) => prev != current,
        listener: (context,internetState) {
            homeBloc.add(HomeEvent.fetchAllTasks(requiredReload: true,internetState: internetState));
        },
        builder: (context,internetState) {
        return BlocConsumer<HomeBloc, HomeState>(
            listenWhen: (previous,current) => previous.allTasksModel != current.allTasksModel,
            listener: (context,state){
              print("state updated: ${state.allTasksModel.length}");
              if(state.allTasksModel.isNotEmpty){
                controller.removeGroup(todoGroup.id);
                controller.removeGroup(progressGroup.id);
                controller.removeGroup(doneGroup.id);
                List<AppFlowyGroupItem> progressItems= [];
                List<AppFlowyGroupItem> todoItems= [];
                List<AppFlowyGroupItem> doneItems= [];


                for(TaskModel taskModel in state.allTasksModel){
                  if((taskModel.labels??[]).first == inProgressStatusId){
                    progressItems.add(
                        TaskItem(
                            title: taskModel.content??"",
                            isUpdating: taskModel.isUpdating??false,
                            taskId: taskModel.id??"",
                            subtitle: taskModel.description??"",
                            totalComments: taskModel.commentCount??0,
                            groupId: taskModel.labels!.first,
                            labels: taskModel.labels??[],
                            seconds: taskModel.labels![(taskModel.labels??[]).length - 2].replaceAll("ztimer-", "").isNumeric()?int.parse(taskModel.labels![(taskModel.labels??[]).length - 2].replaceAll("ztimer-", "")):0,
                            isPlaying: taskModel.labels!.last.contains("play"),
                            tag: (taskModel.labels??[]) .map((tag) => stringToTasksTag(tag,context))
                                .where((tag) => tag != null)
                                .cast<TasksTags>()
                                .toList(),
                            tasksPriority:
                            taskModel.priority == 1?
                            TasksPriority.lowPriority:
                            taskModel.priority == 2?
                            TasksPriority.normalPriority:
                            taskModel.priority == 3?
                            TasksPriority.highPriority:
                            TasksPriority.highestPriority,
                            dateTime: (taskModel.createdAt??"").toDateTime())
                    );
                  }
                  else if((taskModel.labels??[]).first== doneStatusId){
                    doneItems.add(
                        TaskItem(
                            isUpdating: taskModel.isUpdating??false,
                            labels: taskModel.labels??[],
                            title: taskModel.content??"",
                            taskId: taskModel.id??"",
                            subtitle: taskModel.description??"",
                            groupId: taskModel.labels!.first,
                            totalComments: taskModel.commentCount??0,
                            tag: (taskModel.labels??[]) .map((tag) => stringToTasksTag(tag,context))
                                .where((tag) => tag != null)
                                .cast<TasksTags>()
                                .toList(),
                            tasksPriority:
                            taskModel.priority == 1?
                            TasksPriority.lowPriority:
                            taskModel.priority == 2?
                            TasksPriority.normalPriority:
                            taskModel.priority == 3?
                            TasksPriority.highPriority:
                            TasksPriority.highestPriority,
                            dateTime: (taskModel.createdAt??"").toDateTime())
                    );
                  }
                  else if((taskModel.labels??[]).first== todoStatusId){
                    todoItems.add(
                        TaskItem(
                            isUpdating: taskModel.isUpdating??false,
                            title: taskModel.content??"",
                            taskId: taskModel.id??"",
                            labels: taskModel.labels??[],
                            groupId: taskModel.labels!.first,
                            subtitle: taskModel.description??"",
                            totalComments: taskModel.commentCount??0,
                            tag: (taskModel.labels??[]) .map((tag) => stringToTasksTag(tag,context))
                                .where((tag) => tag != null)
                                .cast<TasksTags>()
                                .toList(),
                            tasksPriority:
                            taskModel.priority == 1?
                            TasksPriority.lowPriority:
                            taskModel.priority == 2?
                            TasksPriority.normalPriority:
                            taskModel.priority == 3?
                            TasksPriority.highPriority:
                            TasksPriority.highestPriority,
                            dateTime: (taskModel.createdAt??"").toDateTime())
                    );
                  }
                }

                todoGroup = AppFlowyGroupData(id: "To Do", name: AppLocalizations.of(context)!.todos, items: todoItems);
                progressGroup = AppFlowyGroupData(id: "In Progress", name: AppLocalizations.of(context)!.inProgress, items: progressItems);
                doneGroup = AppFlowyGroupData(id: "Done", name: AppLocalizations.of(context)!.done, items: doneItems);

                controller.addGroup(todoGroup);
                controller.addGroup(progressGroup);
                controller.addGroup(doneGroup);
              }
            },
            builder: (context,state){
              if(state.homeLoadingBlocStatus == HomeLoadingBlocStatus.isSuccess){
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: AppFlowyBoard(
                    controller: controller,
                    cardBuilder: (context, group, groupItem) {
                      return AppFlowyGroupCard(
                        key: ValueKey(groupItem.id),
                        margin: EdgeInsets.zero,

                        decoration: BoxDecoration(color: Colors.transparent, borderRadius: BorderRadius.circular(10)),
                        child: TaskCard(
                            homeBloc: homeBloc,
                            group: group,item: groupItem as TaskItem),
                      );
                    },
                    boardScrollController: boardController,
                    headerBuilder: (context, columnData) {
                      return Container(
                        width: double.infinity,
                        padding: const EdgeInsets.symmetric(vertical: 3, horizontal: 10),
                        margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 12),
                        decoration: BoxDecoration(
                          color: columnData.id == "To Do"
                              ? AppColors.todoColor
                              : columnData.id == "In Progress"
                              ? AppColors.inProgressColor
                              : AppColors.doneColor,
                          borderRadius: BorderRadius.circular(100),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              padding: const EdgeInsets.all(10),
                              decoration: const BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.circle,
                              ),
                              child: Text(
                                columnData.items.length.toString(),
                                style: TextStyle(
                                  color: columnData.id == "To Do"
                                      ? AppColors.todoColor
                                      : columnData.id == "In Progress"
                                      ? AppColors.inProgressColor
                                      : AppColors.doneColor,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            const SizedBox(width: 10),
                            Text(
                              columnData.id == "To Do"?AppLocalizations.of(context)!.todos:
                              columnData.id == "In Progress"?AppLocalizations.of(context)!.inProgress:
                              AppLocalizations.of(context)!.done,
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const Spacer(),
                            PullDownButton(
                              itemBuilder: (context) => [
                                PullDownMenuItem(
                                  title: AppLocalizations.of(context)!.sort_by_name_za,
                                  icon: CupertinoIcons.up_arrow,
                                  onTap: () {
                                    homeBloc.add(HomeEvent.sortByNameDescending(columnData.id == "To Do"?todoStatusId:columnData.id == "In Progress"?inProgressStatusId:doneStatusId));
                                  },
                                ),
                                const PullDownMenuDivider(),
                                PullDownMenuItem(
                                  title: AppLocalizations.of(context)!.sort_by_name_az,
                                  icon: CupertinoIcons.down_arrow,
                                  onTap: () {
                                    homeBloc.add( HomeEvent.sortByNameAscending(columnData.id == "To Do"?todoStatusId:columnData.id == "In Progress"?inProgressStatusId:doneStatusId));
                                  },
                                ),
                                const PullDownMenuDivider(),
                                PullDownMenuItem(
                                  title: AppLocalizations.of(context)!.sort_by_date_newest,
                                  icon: CupertinoIcons.up_arrow,
                                  onTap: () {
                                    homeBloc.add( HomeEvent.sortByDateDescending(columnData.id == "To Do"?todoStatusId:columnData.id == "In Progress"?inProgressStatusId:doneStatusId));
                                  },
                                ),
                                const PullDownMenuDivider(),
                                PullDownMenuItem(
                                  title: AppLocalizations.of(context)!.sort_by_date_oldest,
                                  icon: CupertinoIcons.down_arrow,
                                  onTap: () {
                                    homeBloc.add( HomeEvent.sortByDateAscending(columnData.id == "To Do"?todoStatusId:columnData.id == "In Progress"?inProgressStatusId:doneStatusId));
                                  },
                                ),
                                PullDownMenuItem(
                                  title: AppLocalizations.of(context)!.sort_by_priority_highest,
                                  icon: CupertinoIcons.up_arrow,
                                  onTap: () {
                                    homeBloc.add( HomeEvent.sortByPriorityDescending(columnData.id == "To Do"?todoStatusId:columnData.id == "In Progress"?inProgressStatusId:doneStatusId));
                                  },
                                ),
                                const PullDownMenuDivider(),
                                PullDownMenuItem(
                                  title: AppLocalizations.of(context)!.sort_by_priority_lowest,
                                  icon: CupertinoIcons.down_arrow,
                                  onTap: () {
                                    homeBloc.add( HomeEvent.sortByPriorityAscending(columnData.id == "To Do"?todoStatusId:columnData.id == "In Progress"?inProgressStatusId:doneStatusId));
                                  },
                                ),
                              ],
                              buttonBuilder: (context, showMenu) => CupertinoButton(
                                onPressed: showMenu,
                                minSize: 10,
                                padding: EdgeInsets.zero,
                                child: const Icon(CupertinoIcons.ellipsis_circle,color: Colors.white,),
                              ),
                            )
                          ],
                        ),
                      );
                    },
                    groupConstraints: const BoxConstraints.tightFor(width: 260),
                    config: config,
                  ),
                );
              }
              else{
                return const Center(child: CircularProgressIndicator(color: AppColors.primaryColor));
              }
          }
        );
      }
    );
  }
}


