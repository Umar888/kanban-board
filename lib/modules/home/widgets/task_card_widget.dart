import 'dart:ui';

import 'package:kanban_board/intermediate_widget/kanban_board_ui/kanban_board_ui.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:kanban_board/constant/string_constants.dart';
import 'package:kanban_board/intermediate_widget/count_up_timer/count_up_timer.dart';
import 'package:kanban_board/modules/home/models/tasks_model.dart';
import 'package:kanban_board/modules/home/widgets/task_item.dart';
import 'package:kanban_board/services/extensions/string_extension.dart';
import 'package:kanban_board/services/providers/locale_provider.dart';
import 'package:provider/provider.dart';
import 'package:pull_down_button/pull_down_button.dart';
import '../../../constant/color.dart';
import '../../../helpers/internet/internet_cubit.dart';
import '../../../services/debouncer.dart';
import '../bloc/home_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../screens/home_detail.dart';
import 'delete_dialog.dart';

class TaskCard extends StatefulWidget {
  final HomeBloc homeBloc;
  final AppFlowyGroupData<dynamic> group;
  final TaskItem item;

  const TaskCard({
    super.key,
    required this.homeBloc,
    required this.group,
    required this.item,
  });

  @override
  _TaskCardState createState() => _TaskCardState();
}
class _TaskCardState extends State<TaskCard> {
  late CountTimerController _timerController;
  bool triggerUI = false;

  @override
  void initState() {
    super.initState();
    _timerController = CountTimerController(
      onTimeUpdate: (duration){
        final TaskModel taskModel = widget.homeBloc.state.allTasksModel
            .where((e) => e.id == widget.item.taskId)
            .first;
        List<String> taskLabels = taskModel.labels ?? [];
        if (taskLabels.first == inProgressStatusId) {
          List<String> labels = taskLabels.where((e) => e.startsWith("ztimer-state")).toList();
          if(labels.isNotEmpty){
            String label = labels.first;
            if(label.contains("play")){
              taskLabels.removeWhere((e) => e.startsWith("ztimer-"));
              taskLabels.add("ztimer-${duration.inSeconds.toString()}");
              taskLabels.add("ztimer-state-play");
              taskLabels.sort();
            }
            widget.homeBloc.add(HomeEvent.updateTimerLocally(taskId: taskModel.id ?? "",labels: taskLabels));
          }
        }
      },
      onTimeUpdate10Sec: (){
        saveDataToServer();
    }
    );

  }
  void saveDataToServer() {
    final TaskModel taskModel = widget.homeBloc.state.allTasksModel
        .where((e) => e.id == widget.item.taskId)
        .first;
    List<String> taskLabels = taskModel.labels ?? [];
    if (taskLabels.first == inProgressStatusId) {
      List<String> labels = taskLabels.where((e) => e.startsWith("ztimer-state")).toList();
      if(labels.isNotEmpty){
        String label = labels.first;
        if(label.contains("play")){
          taskLabels.removeWhere((e) => e.startsWith("ztimer-"));
          taskLabels.add("ztimer-${_timerController.duration.inSeconds.toString()}");
          taskLabels.add("ztimer-state-play");
          taskLabels.sort();
        }
        else{
          taskLabels.removeWhere((e) => e.startsWith("ztimer-"));
          taskLabels.add("ztimer-${_timerController.duration.inSeconds.toString()}");
          taskLabels.add("ztimer-state-pause");
          taskLabels.sort();
        }
        widget.homeBloc.add(HomeEvent.updateTimer(taskId: taskModel.id ?? "",labels: taskLabels));
      }
    }
  }

  @override
  void dispose() {
    _timerController.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Consumer<LocaleProvider>(
      builder: (context,localeProvider,localeWidget) {
        return BlocConsumer<InternetCubit, InternetState>(
            listenWhen: (prev, current) => prev != current,
            listener: (context,internetState) {},
            builder: (context,internetState) {
            return BlocBuilder<HomeBloc, HomeState>(
                builder: (context,state){
                  TaskModel taskModel= state.allTasksModel.where((e) => e.id == widget.item.taskId).toList().first;
                  List<String> taskLabels = taskModel.labels??[];
                  if (taskLabels.first == inProgressStatusId) {
                    print(" : ${taskLabels.last}");
                    if(taskLabels.last.contains("play")){
                      _timerController.start(startFromSeconds: int.parse(taskLabels[taskLabels.length-2].replaceAll("ztimer-", "")));
                    }
                    else{
                      _timerController.setDuration(seconds: int.parse(taskLabels[taskLabels.length-2].replaceAll("ztimer-", "")));
                    }
                  }

                  return GestureDetector(
                    onTap: () async {
                      widget.homeBloc.add(const HomeEvent.syncDataInServer());
                      await Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => HomeDetail(taskId: widget.item.taskId)
                          )
                      );
                      // widget.homeBloc.add(const HomeEvent.syncDataInServer());
                     widget.homeBloc.add(HomeEvent.fetchAllTasks(requiredReload: false,internetState: internetState));
                    },
                    child: Card(
                      color: Colors.white,
                      elevation: 2,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            _buildHeader(context),
                            const SizedBox(height: 5),
                            Row(
                              children: [
                                Text(
                                  widget.item.title,
                                  maxLines: 1,
                                  style: const TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const Spacer(),
                                if(widget.item.groupId == inProgressStatusId)
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10.0),
                                    child: CountTimer(
                                      format: CountTimerFormat.hoursMinutesSeconds,
                                      enableDescriptions: false,
                                      spacerWidth: 1,
                                      timeTextStyle: const TextStyle(
                                          color: Colors.black,
                                        fontSize: 11
                                      ),
                                      colonsTextStyle: const TextStyle(
                                          color: Colors.black,
                                          fontSize: 10
                                      ),
                                      controller: _timerController,
                                    ),
                                  ),

                              ],
                            ),
                            const SizedBox(height: 5),
                            Text(
                              widget.item.subtitle,
                              maxLines: 3,
                              overflow: TextOverflow.ellipsis,
                              style: const TextStyle(
                                color: Colors.black54,
                                fontSize: 14,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                            if (widget.item.tag.isNotEmpty) const SizedBox(height: 5),
                            if (widget.item.tag.isNotEmpty) _buildTags(),
                            const SizedBox(height: 5),
                            _buildFooter(localeProvider),
                          ],
                        ),
                      )
                    ),
                  );
              }
            );
          }
        );
      }
    );
  }

  Widget _buildHeader(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Flexible(child: _buildPriorityLabel(context)),
        const SizedBox(width: 5,),
        PullDownButton(
          itemBuilder: (context) => widget.item.isUpdating ? [] : _buildMenuItems(context),
          buttonBuilder: (context, showMenu) => CupertinoButton(
            onPressed: showMenu,
            minSize: 8,
            padding: EdgeInsets.zero,
            child: widget.item.isUpdating
                ? const CupertinoActivityIndicator(color: Colors.black54)
                : const Icon(CupertinoIcons.ellipsis_circle, color: Colors.black54),
          ),
        ),
      ],
    );
  }

  Widget _buildPriorityLabel(BuildContext context) {
    Color priorityColor;
    String priorityText;

    // Determine priority color and text based on widget.item.tasksPriority
    switch (widget.item.tasksPriority) {
      case TasksPriority.highestPriority:
        priorityColor = Colors.red.shade900.withOpacity(0.2);
        priorityText = AppLocalizations.of(context)!.highestPriority;
        break;
      case TasksPriority.highPriority:
        priorityColor = Colors.redAccent.withOpacity(0.2);
        priorityText = AppLocalizations.of(context)!.highPriority;
        break;
      case TasksPriority.normalPriority:
        priorityColor = Colors.orange.withOpacity(0.2);
        priorityText = AppLocalizations.of(context)!.normalPriority;
        break;
      case TasksPriority.lowPriority:
        priorityColor = Colors.yellow.shade600.withOpacity(0.2);
        priorityText = AppLocalizations.of(context)!.lowPriority;
        break;
      default:
        priorityColor = Colors.black.withOpacity(0.2);
        priorityText = "";
    }

    return Container(
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: priorityColor,
      ),
      child: Text(
        priorityText.replaceAll(AppLocalizations.of(context)!.priority, ""),
        style: TextStyle(
          color: priorityColor.withOpacity(1),
          fontWeight: FontWeight.w500,
          fontSize: 12,
        ),
      ),
    );
  }

  List<PullDownMenuEntry> _buildMenuItems(BuildContext context) {
    return [
      if (widget.group.id == "To Do" || widget.group.id == "In Progress")
        PullDownMenuItem(
          title: AppLocalizations.of(context)!.complete_task,
          icon: CupertinoIcons.check_mark_circled,
          onTap: () {
            widget.homeBloc.add(HomeEvent.completeTask(taskId: widget.item.taskId ?? "", labels: widget.item.labels));
          },
        ),
      if (widget.group.id == "Done")
        PullDownMenuItem(
          title: AppLocalizations.of(context)!.reopen_task,
          icon: CupertinoIcons.question_circle,
          onTap: () {
            widget.homeBloc.add(HomeEvent.reopenTask(taskId: widget.item.taskId ?? "", labels: widget.item.labels));
          },
        ),
      if (widget.group.id == "To Do")
        const PullDownMenuDivider(),
      if (widget.group.id == "To Do")
        PullDownMenuItem(
          title: AppLocalizations.of(context)!.start_task,
          icon: CupertinoIcons.timer,
          onTap: () {
            widget.homeBloc.add(HomeEvent.startTask(taskId: widget.item.taskId ?? "", labels: widget.item.labels));
          },
        ),
      const PullDownMenuDivider(),
      PullDownMenuItem(
        title: AppLocalizations.of(context)!.delete_task,
        icon: CupertinoIcons.delete_solid,
        isDestructive: true,
        onTap: () async {
          await showDeleteDialog(
            context: context,
            title: AppLocalizations.of(context)!.delete_task,
            content: AppLocalizations.of(context)!.delete_task_confirmation,
            onConfirm: () {
              widget.homeBloc.add(HomeEvent.deleteTask(taskId: widget.item.taskId ?? ""));
            },
          );
        },
      ),
    ];
  }

  String _getTagName(BuildContext context, TasksTags tag) {

    switch (tag) {
      case TasksTags.travel:
        return AppLocalizations.of(context)!.travel;
      case TasksTags.work:
        return AppLocalizations.of(context)!.work;
      case TasksTags.fun:
        return AppLocalizations.of(context)!.fun;
      case TasksTags.health:
        return AppLocalizations.of(context)!.health;
      case TasksTags.education:
        return AppLocalizations.of(context)!.education;
      case TasksTags.family:
        return AppLocalizations.of(context)!.family;
      case TasksTags.finance:
        return AppLocalizations.of(context)!.finance;
      case TasksTags.shopping:
        return AppLocalizations.of(context)!.shopping;
      case TasksTags.exercise:
        return AppLocalizations.of(context)!.exercise;
      case TasksTags.leisure:
        return AppLocalizations.of(context)!.leisure;
      case TasksTags.social:
        return AppLocalizations.of(context)!.social;
      case TasksTags.project:
        return AppLocalizations.of(context)!.project;
      case TasksTags.hobby:
        return AppLocalizations.of(context)!.hobby;
      case TasksTags.volunteer:
        return AppLocalizations.of(context)!.volunteer;
      case TasksTags.technology:
        return AppLocalizations.of(context)!.technology;
      default:
        return "";
    }
  }

  Widget _buildTags() {
    return Wrap(
      runSpacing: 5,
      spacing: 5,
      children: widget.item.tag.map((e) {
        Color tagColor;
        switch (e) {
          case TasksTags.travel:
            tagColor = AppColors.travelTagColor;
            break;
          case TasksTags.work:
            tagColor = AppColors.workTagColor;
            break;
          case TasksTags.fun:
            tagColor = AppColors.funTagColor;
            break;
          case TasksTags.health:
            tagColor = AppColors.healthTagColor;
            break;
          case TasksTags.education:
            tagColor = AppColors.educationTagColor;
            break;
          case TasksTags.family:
            tagColor = AppColors.familyTagColor;
            break;
          case TasksTags.finance:
            tagColor = AppColors.financeTagColor;
            break;
          case TasksTags.shopping:
            tagColor = AppColors.shoppingTagColor;
            break;
          case TasksTags.exercise:
            tagColor = AppColors.exerciseTagColor;
            break;
          case TasksTags.leisure:
            tagColor = AppColors.leisureTagColor;
            break;
          case TasksTags.social:
            tagColor = AppColors.socialTagColor;
            break;
          case TasksTags.project:
            tagColor = AppColors.projectTagColor;
            break;
          case TasksTags.hobby:
            tagColor = AppColors.hobbyTagColor;
            break;
          case TasksTags.volunteer:
            tagColor = AppColors.volunteerTagColor;
            break;
          case TasksTags.technology:
            tagColor = AppColors.technologyTagColor;
            break;
          default:
            tagColor = AppColors.otherTagColor;
        }
        String tagName = _getTagName(context,e);

        return Container(
          padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            color: tagColor,
          ),
          child: Text(
            tagName.toLowerCase(),
            style: const TextStyle(
              color: Colors.black,
              fontSize: 12,
              fontWeight: FontWeight.w500,
            ),
          ),
        );
      }).toList(),
    );
  }

  Widget _buildFooter(localeProvider) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          DateFormat('MMM dd, yyyy hh:mm a',(localeProvider.getLocale??const Locale("en","US")).languageCode).format(widget.item.dateTime),
          style: const TextStyle(
            color: Colors.black54,
            fontSize: 11,
            fontWeight: FontWeight.normal,
          ),
        ),
        Row(
          children: [
            const Icon(
              Icons.comment_outlined,
              size: 14,
              color: Colors.black54,
            ),
            const SizedBox(width: 5),
            Text(
              widget.item.totalComments.toString(),
              style: const TextStyle(
                color: Colors.black54,
                fontSize: 13,
                fontWeight: FontWeight.normal,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
