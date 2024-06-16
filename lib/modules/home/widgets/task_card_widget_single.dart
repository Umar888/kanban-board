
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:kanban_board/constant/string_constants.dart';
import 'package:kanban_board/intermediate_widget/count_up_timer/count_up_timer.dart';
import 'package:kanban_board/modules/home/models/tasks_model.dart';
import 'package:kanban_board/services/extensions/string_extension.dart';
import 'package:provider/provider.dart';
import '../../../constant/color.dart';
import '../../../helpers/internet/internet_cubit.dart';
import '../../../services/providers/locale_provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../bloc/home_bloc.dart';
import '../screens/home_detail.dart';

class TaskCardSingle extends StatefulWidget {
  final TaskModel taskModel;
  final HomeBloc homeBloc;

  const TaskCardSingle({
    super.key,
    required this.taskModel,
    required this.homeBloc,
  });

  @override
  _TaskCardSingleState createState() => _TaskCardSingleState();
}
class _TaskCardSingleState extends State<TaskCardSingle> {
  late CountTimerController _timerController;
  bool triggerUI = false;
  late HomeBloc homeBloc;

  @override
  void initState() {
    super.initState();
    homeBloc = context.read<HomeBloc>();
    _timerController = CountTimerController(
      onTimeUpdate: (duration){
        final TaskModel taskModel = widget.homeBloc.state.allTasksModel
            .where((e) => e.id == widget.taskModel.id)
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
        .where((e) => e.id == widget.taskModel.id)
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
      builder: (context, localeProvider, consumerWidget) {
        return BlocConsumer<InternetCubit, InternetState>(
          listenWhen: (prev, current) => prev != current,
          listener: (context,internetState) {},
          builder: (context,internetState) {
          return BlocBuilder<HomeBloc, HomeState>(
              builder: (context,state){
                TaskModel e= state.allTasksModel.where((e) => e.id == widget.taskModel.id).toList().first;
                List<String> taskLabels = e.labels??[];
                if (taskLabels.first == inProgressStatusId) {
                  print(" : ${taskLabels.last}");
                  if(taskLabels.last.contains("play")){
                    _timerController.start(startFromSeconds: int.parse(taskLabels[taskLabels.length-2].replaceAll("ztimer-", "")));
                  }
                  else{
                    _timerController.setDuration(seconds: int.parse(taskLabels[taskLabels.length-2].replaceAll("ztimer-", "")));
                  }
                }

                return Card(
                  color: Colors.white,
                  elevation: 3,
                  margin: const EdgeInsets.symmetric(horizontal: 10,vertical:5),
                  child: ListTile(
                    onTap: () async {
                      homeBloc.add(const HomeEvent.syncDataInServer());
                      await Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => HomeDetail(taskId: e.id??"")
                          )
                      );
                      // widget.homeBloc.add(const HomeEvent.syncDataInServer());
                      homeBloc.add(HomeEvent.fetchAllTasks(requiredReload: false,internetState: internetState));
                    },
                    contentPadding: const EdgeInsets.symmetric(horizontal: 10),
                    isThreeLine: true,
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          e.content??"",
                          style: const TextStyle(
                              color: Colors.black,
                              fontSize: 16
                          ),
                        ),
                        _buildPriorityLabel(context,e)
                      ],
                    ),
                    dense: true,
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "${AppLocalizations.of(context)!.dueDate} ${DateFormat("MMM dd, yyyy",(localeProvider.getLocale??const Locale("en","US")).languageCode).format((e.datetime??"").toDateTime())}",
                          style: const TextStyle(
                              color: Colors.black38,
                              fontSize: 14
                          ),

                        ),
                        const SizedBox(height: 2,),

                        Row(
                          children: [
                            Text(
                              (e.labels??[]).first == todoStatusId?AppLocalizations.of(context)!.yetToStart:
                              (e.labels??[]).first == inProgressStatusId?AppLocalizations.of(context)!.taskInProgress:AppLocalizations.of(context)!.taskCompleted,
                              style: TextStyle(
                                  color: (e.labels??[]).first == todoStatusId?Colors.red:
                                  (e.labels??[]).first == inProgressStatusId?Colors.yellow[800]:Colors.green[800],
                                  fontSize: 15
                              ),

                            ),
                            const Spacer(),
                            if(taskLabels.first == inProgressStatusId)
                              Padding(
                                padding: const EdgeInsets.only(left: 10.0),
                                child: CountTimer(
                                  format: CountTimerFormat.hoursMinutesSeconds,
                                  enableDescriptions: false,
                                  spacerWidth: 1,
                                  timeTextStyle:  TextStyle(
                                      color: (e.labels??[]).first == todoStatusId?Colors.red:
                                      (e.labels??[]).first == inProgressStatusId?Colors.yellow[800]:Colors.green[800],
                                      fontSize: 15
                                  ),
                                  colonsTextStyle:  TextStyle(
                                      color: (e.labels??[]).first == todoStatusId?Colors.red:
                                      (e.labels??[]).first == inProgressStatusId?Colors.yellow[800]:Colors.green[800],
                                      fontSize: 15
                                  ),
                                  controller: _timerController,
                                ),
                              ),
                          ],
                        ),
                        const SizedBox(height: 5,),

                        Text(
                          e.description??"",
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                              color: Colors.black,
                              fontSize: 14
                          ),
                        ),
                        const SizedBox(height: 5,),
                        _buildTags(e)
                      ],
                    ),
                  ),
                );
            }
          );
        }
      );
      }
    );
  }


  TasksTags? stringToTasksTag(String tag) {
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
  Widget _buildTags(TaskModel task) {
    List<TasksTags> taskTags = (task.labels??[]) .map((tag) => stringToTasksTag(tag))
        .where((tag) => tag != null)
        .cast<TasksTags>()
        .toList();

    return Wrap(
      runSpacing: 5,
      spacing: 5,
      runAlignment: WrapAlignment.start,
      crossAxisAlignment: WrapCrossAlignment.start,
      children: taskTags.map((e) {
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

        return Container(
          padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            color: tagColor,
          ),
          child: Text(
            _getTagName(context,e),
            style:  const TextStyle(
              color: Colors.black,
              fontSize: 13,
              fontWeight: FontWeight.w500,
            ),
          ),
        );
      }).toList(),
    );
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
  Widget _buildPriorityLabel(BuildContext context,TaskModel taskModel) {
    Color priorityColor;
    String priorityText;

    // Determine priority color and text based on widget.item.tasksPriority
    switch (taskModel.priority) {
      case 4:
        priorityColor = Colors.red.shade900.withOpacity(0.2);
        priorityText = AppLocalizations.of(context)!.highestPriority;
        break;
      case 3:
        priorityColor = Colors.redAccent.withOpacity(0.2);
        priorityText = AppLocalizations.of(context)!.highPriority;
        break;
      case 2:
        priorityColor = Colors.orange.withOpacity(0.2);
        priorityText = AppLocalizations.of(context)!.normalPriority;
        break;
      case 1:
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


}
