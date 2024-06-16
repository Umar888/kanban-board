import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:kanban_board/app.dart';
import 'package:kanban_board/constant/string_constants.dart';
import 'package:kanban_board/helpers/internet/internet_cubit.dart';
import 'package:kanban_board/intermediate_widget/3d_button/3d_buttons.dart';
import 'package:kanban_board/intermediate_widget/count_up_timer/count_up_timer.dart';
import 'package:kanban_board/intermediate_widget/count_up_timer/src/count_timer.dart';
import 'package:kanban_board/modules/home/models/tasks_model.dart';
import 'package:kanban_board/services/extensions/int_extension.dart';
import 'package:kanban_board/services/extensions/string_extension.dart';
import 'package:provider/provider.dart';
import 'package:pull_down_button/pull_down_button.dart';
import 'package:timer_count_down/timer_count_down.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../../constant/color.dart';
import '../../../services/debouncer.dart';
import '../../../services/providers/locale_provider.dart';
import '../bloc/home_bloc.dart';
import '../widgets/add_task_bottom_sheet.dart';
import '../widgets/comment_modification.dart';
import '../widgets/delete_dialog.dart';

class HomeDetail extends StatefulWidget {
  final String taskId;
  const HomeDetail({super.key,required this.taskId});

  @override
  _HomeDetailState createState() => _HomeDetailState();
}

class _HomeDetailState extends State<HomeDetail> {
  late HomeBloc homeBloc;

  @override
  void initState() {
    super.initState();
    homeBloc = context.read<HomeBloc>();
    homeBloc.add(HomeEvent.fetchAllComments(taskId: widget.taskId,isSyncing: false,internetState: context.read<InternetCubit>().state));
    controller = CountTimerController(
        onTimeUpdate10Sec: (){
          saveDataToServer();
        },
        onTimeUpdate: (duration){
          final TaskModel taskModel = homeBloc.state.allTasksModel
              .where((e) => e.id == widget.taskId)
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
              homeBloc.add(HomeEvent.updateTimerLocally(taskId: taskModel.id ?? "",labels: taskLabels));
            }
          }
        }
    );

  }
  final _debouncer = Debouncer(milliseconds: 0);


  @override
  void dispose() {
    _debouncer.run(() => saveDataToServer());
    controller.dispose();
    super.dispose();
  }

  void saveDataToServer() {
    final TaskModel taskModel = homeBloc.state.allTasksModel
        .where((e) => e.id == widget.taskId)
        .first;
    List<String> taskLabels = taskModel.labels ?? [];
    if (taskLabels.first == inProgressStatusId) {
      List<String> labels = taskLabels.where((e) => e.startsWith("ztimer-state")).toList();
      if(labels.isNotEmpty){
        String label = labels.first;
        if(label.contains("play")){
          taskLabels.removeWhere((e) => e.startsWith("ztimer-"));
          taskLabels.add("ztimer-${controller.duration.inSeconds.toString()}");
          taskLabels.add("ztimer-state-play");
          taskLabels.sort();
        }
        else{
          taskLabels.removeWhere((e) => e.startsWith("ztimer-"));
          taskLabels.add("ztimer-${controller.duration.inSeconds.toString()}");
          taskLabels.add("ztimer-state-pause");
          taskLabels.sort();
        }
        homeBloc.add(HomeEvent.updateTimer(taskId: taskModel.id ?? "",labels: taskLabels));
      }
    }
  }

  late CountTimerController controller;
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


  @override
  Widget build(BuildContext context) {
    return Consumer<LocaleProvider>(
        builder: (context, localeProvider, consumerWidget) {
        return BlocBuilder<InternetCubit, InternetState>(
            builder: (context,internetState) {
            return BlocConsumer<HomeBloc, HomeState>(
                listener: (context, state) {

                },
                builder: (context, state) {
                TaskModel taskModel= state.allTasksModel.where((e) => e.id == widget.taskId).toList().first;
                List<String> taskLabels = taskModel.labels??[];
                if(taskLabels.first ==  inProgressStatusId){
                  if(taskLabels.last.contains("play")){

                    controller.start(startFromSeconds: int.parse(taskLabels[taskLabels.length-2].replaceAll("ztimer-", "")));
                  }
                  else{
                    controller.setDuration(seconds: int.parse(taskLabels[taskLabels.length-2].replaceAll("ztimer-", "")));
                  }
                }

                if(taskLabels.isNotEmpty){
                  return Scaffold(
                    appBar: AppBar(
                        title: Text(taskModel.content??"",style: const TextStyle(color: Colors.white),),
                        surfaceTintColor: AppColors.primaryColor,
                        backgroundColor: AppColors.primaryColor,
                        automaticallyImplyLeading: false,
                        actions: [
                          PullDownButton(
                            itemBuilder: (context) => (taskModel.isUpdating??false)?[]:[
                              if((taskModel.labels??[]).first == todoStatusId || (taskModel.labels??[]).first == inProgressStatusId)
                                PullDownMenuItem(
                                  title: AppLocalizations.of(context)!.complete_task,
                                  icon: CupertinoIcons.check_mark_circled,
                                  onTap: () {
                                    List<String> newLabels = taskLabels;
                                    newLabels.removeAt(0);
                                    homeBloc.add(HomeEvent.completeTask(taskId: taskModel.id??"", labels: newLabels));
                                  },
                                ),
                              if((taskModel.labels??[]).first == doneStatusId)
                                PullDownMenuItem(
                                  title: AppLocalizations.of(context)!.reopen_task,
                                  icon: CupertinoIcons.question_circle,
                                  onTap: () {
                                    List<String> newLabels = taskLabels;
                                    newLabels.removeAt(0);
                                    homeBloc.add(HomeEvent.reopenTask(taskId: taskModel.id??"", labels: newLabels));
                                  },
                                ),
                              if((taskModel.labels??[]).first == todoStatusId)
                                const PullDownMenuDivider(),
                              if((taskModel.labels??[]).first == todoStatusId)
                                PullDownMenuItem(
                                  title: AppLocalizations.of(context)!.start_task,
                                  icon: CupertinoIcons.timer,
                                  onTap: () {
                                    List<String> newLabels = taskLabels;
                                    newLabels.removeAt(0);
                                    homeBloc.add(HomeEvent.startTask(taskId: taskModel.id??"", labels: newLabels));
                                  },
                                ),
                              const PullDownMenuDivider(),
                              PullDownMenuItem(
                                title: AppLocalizations.of(context)!.update_task,
                                icon: CupertinoIcons.pencil_circle,
                                isDestructive: false,
                                onTap: () async {
                                  showModalBottomSheet(
                                    context: context,
                                    isScrollControlled: true,
                                    backgroundColor: Colors.transparent,
                                    builder: (BuildContext context) {
                                      return BlocProvider.value(
                                        value: homeBloc,
                                        child:  AddTaskBottomSheet(
                                          isUpdate: true,
                                          taskId: taskModel.id??"",
                                          taskName: taskModel.content??"",
                                          taskDescription: taskModel.description??"",
                                          taskDate: taskModel.datetime??"",
                                          taskPriority: taskModel.priority == 1?
                                          TasksPriority.lowPriority:
                                          taskModel.priority == 2?
                                          TasksPriority.normalPriority:
                                          taskModel.priority == 3?
                                          TasksPriority.highPriority:
                                          TasksPriority.highestPriority,
                                          taskTags: (taskModel.labels??[]).map((tag) => stringToTasksTag(tag))
                                              .where((tag) => tag != null)
                                              .cast<TasksTags>()
                                              .toList(),
                                          taskStatus:
                                          (taskModel.labels??[]).first == todoStatusId?TasksStatus.todo:
                                          (taskModel.labels??[]).first == inProgressStatusId?TasksStatus.inProgress:
                                          TasksStatus.done,
                                        ),
                                      );
                                    },
                                  );
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
                                      Navigator.pop(context);
                                      homeBloc.add(HomeEvent.deleteTask(taskId: taskModel.id??""));
                                    },
                                  );
                                },
                              ),
                            ],
                            buttonBuilder: (context, showMenu) => CupertinoButton(
                              onPressed: showMenu,
                              padding: EdgeInsets.zero,
                              child: (taskModel.isUpdating??false)?const CupertinoActivityIndicator(color: Colors.white,):const Icon(CupertinoIcons.ellipsis_circle,color: Colors.white,),
                            ),
                          )
                        ],
                        leading: IconButton(
                          icon: const Icon(CupertinoIcons.back,color: Colors.white),
                          visualDensity: const VisualDensity(horizontal: -4,vertical: -4),
                          padding: EdgeInsets.zero,
                          onPressed: (){
                            Navigator.pop(context);
                          },
                        ),

                        centerTitle: false,
                        forceMaterialTransparency: false
                    ),
                    body: Column(
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height*0.3,
                          decoration: const BoxDecoration(
                            gradient: LinearGradient(
                              colors: [AppColors.primaryColor, Colors.black87],
                              stops: [0.01, 1], // Defines where each color ends
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                            ),
                          ),
                          child:
                          taskModel.labels!.first == todoStatusId?
                          Center(
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 20.0),
                              child: Button3d(
                                stretch: true,
                                borderThickness: 1,
                                borderRadius: 100,
                                startColor: AppColors.startColorOf3dButton,
                                endColor: AppColors.endColorOf3dButton,
                                borderColor: AppColors.endColorOf3dButton,
                                gradientOrientation: GradientOrientation.vertical,
                                onTap: (finish) {
                                  List<String> newLabels = taskLabels;
                                  newLabels.removeAt(0);
                                  homeBloc.add(HomeEvent.startTask(taskId: taskModel.id??"", labels: newLabels));
                                },
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [

                                    const Icon(CupertinoIcons.alarm,color: Colors.white,),
                                    const SizedBox(width: 10,),
                                    Text(
                                      AppLocalizations.of(context)!.start_task,
                                      style: const TextStyle(color: Colors.white, fontSize: 18),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ):
                          taskModel.labels!.first == doneStatusId?
                          Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("${AppLocalizations.of(context)!.youHaveSpent} ${int.parse(taskModel.labels!.last.replaceAll("ztimer-", "")).formatElapsedTime()} ${AppLocalizations.of(context)!.onThisTask}",
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,

                                ),),
                                const SizedBox(height: 10,),
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                                  child: Button3d(
                                    stretch: true,
                                    borderThickness: 1,
                                    borderRadius: 100,
                                    startColor: AppColors.startColorOf3dButton,
                                    endColor: AppColors.endColorOf3dButton,
                                    borderColor: AppColors.endColorOf3dButton,
                                    gradientOrientation: GradientOrientation.vertical,
                                    onTap: (finish) {
                                      List<String> newLabels = taskLabels;
                                      newLabels.removeAt(0);
                                      homeBloc.add(HomeEvent.reopenTask(taskId: taskModel.id??"", labels: newLabels));
                                    },
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        const Icon(CupertinoIcons.question_circle,color: Colors.white,),
                                        const SizedBox(width: 10,),
                                        Center(
                                          child: Text(
                                            AppLocalizations.of(context)!.reopen_task,
                                            style: const TextStyle(color: Colors.white, fontSize: 18),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ):
                          taskModel.labels!.first == inProgressStatusId?
                          Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CountTimer(
                                  format: CountTimerFormat.daysHoursMinutesSeconds,
                                  spacerWidth: 8,
                                  daysDescription: AppLocalizations.of(context)!.days,
                                  hoursDescription: AppLocalizations.of(context)!.hours,
                                  minutesDescription: AppLocalizations.of(context)!.minutes,
                                  secondsDescription: AppLocalizations.of(context)!.seconds,

                                  timeTextStyle: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold
                                  ),
                                  descriptionTextStyle: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                  ),
                                  colonsTextStyle: const TextStyle(
                                    color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold
                                  ),

                                  controller: controller,
                                ),
                                const SizedBox(height: 15,),
                                Button3d(
                                  stretch: false,
                                  borderThickness: 1,
                                  borderRadius: 100,
                                  width: 90,
                                  height: 90,
                                  startColor: AppColors.startColorOf3dButton,
                                  endColor: AppColors.endColorOf3dButton,
                                  borderColor: AppColors.endColorOf3dButton,
                                  gradientOrientation: GradientOrientation.vertical,
                                  onTap: (finish) {
                                    print(taskLabels[taskLabels.length-2]);
                                    if(controller.isPlaying){

                                      if(taskLabels[taskLabels.length-2].replaceAll("ztimer-", "").isNumeric()){
                                        if(taskLabels.first == inProgressStatusId){
                                          setState(() {
                                            controller.pause();
                                          });
                                          if(taskLabels.last.startsWith("ztimer-state-")){
                                            taskLabels.removeLast();
                                            taskLabels.insert(taskLabels.length - 1, "ztimer-state-pause");
                                            taskLabels.sort();
                                          }
                                          homeBloc.add(HomeEvent.updateTimerState(taskId: taskModel.id??"",labels: taskLabels));
                                        }
                                      }
                                    }
                                    else{
                                      if(taskLabels[taskLabels.length-2].replaceAll("ztimer-", "").isNumeric()){
                                        if(taskLabels.first == inProgressStatusId){
                                          setState(() {
                                            controller.start(startFromSeconds: int.parse(taskLabels[taskLabels.length-2].replaceAll("ztimer-", "")));
                                          });

                                          if(taskLabels.last.startsWith("ztimer-state-")){
                                            taskLabels.removeLast();
                                            taskLabels.insert(taskLabels.length - 1, "ztimer-state-play");
                                            taskLabels.sort();
                                          }
                                          //saveDataToServer();
                                          homeBloc.add(HomeEvent.updateTimerState(taskId: taskModel.id??"",labels: taskLabels));
                                        }
                                      }
                                    }

                                  },
                                  child: Center(child: Icon(!controller.isPlaying?CupertinoIcons.play_arrow_solid:CupertinoIcons.pause_fill,color: Colors.white,size: 48,)),
                                ),
                              ],
                            ),
                          ):
                          Center(
                            child: Button3d(
                              stretch: false,
                              borderThickness: 1,
                              borderRadius: 100,
                              startColor: AppColors.startColorOf3dButton,
                              endColor: AppColors.endColorOf3dButton,
                              borderColor: AppColors.endColorOf3dButton,
                              gradientOrientation: GradientOrientation.vertical,
                              onTap: (finish) {
                                print('On tap called ${taskModel.labels!.first}');
                              },
                              child: const Center(child: CircularProgressIndicator(color: Colors.white,)),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            width: double.infinity,
                            decoration: const BoxDecoration(
                                color: Colors.black87
                            ),
                            child: SingleChildScrollView(
                              child: Column(
                                children: [
                                  Container(
                                    width: double.infinity,
                                    padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                                    margin: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      border: Border.all(color: Colors.white),
                                      color: Colors.white10
                                    ),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(taskModel.content??"",
                                            style: const TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20
                                            ),),
                                            _buildPriorityLabel(context,taskModel),
                                          ],
                                        ),
                                        const SizedBox(height: 5,),
                                        Text(taskModel.description??"",
                                        style: const TextStyle(
                                          color: Colors.white,
                                          fontSize: 14
                                        ),),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    width: double.infinity,
                                    padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                                    margin: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      border: Border.all(color: Colors.white),
                                      color: Colors.white10
                                    ),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Text(AppLocalizations.of(context)!.time_left,
                                        style: const TextStyle(
                                          color: Colors.white,
                                          fontSize: 16
                                        ),),
                                        const SizedBox(height: 5,),
                                        (taskModel.datetime??"").calculateTimeUntil() != null?
                                        Countdown(
                                          seconds: (taskModel.datetime??"").calculateTimeUntil() ?? 0,
                                          build: (BuildContext context, double time) {
                                           // setState(() {});
                                            return Text(time.toInt().toDurationString(),
                                              style: const TextStyle(
                                                  color: Colors.green,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 22
                                              ),);
                                          },
                                          interval: const Duration(milliseconds: 1000),
                                          onFinished: () {
                                            print('Timer is done!');
                                          },
                                        ):
                                        Text(AppLocalizations.of(context)!.task_due_date_passed,
                                          textAlign: TextAlign.center,
                                          style: const TextStyle(
                                              color: Colors.red,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 22
                                          ),),
                                      ],
                                    ),
                                  ),
                                  Container(
                                      width: double.infinity,
                                      padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                                      margin: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(20),
                                          border: Border.all(color: Colors.white),
                                          color: Colors.white10
                                      ),child: _buildTags(taskModel)),
                                  Container(
                                    width: double.infinity,
                                    padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                                    margin: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        border: Border.all(color: Colors.white),
                                        color: Colors.white10
                                    ),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(AppLocalizations.of(context)!.comments,
                                              style: const TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 20
                                              ),),
                                            IconButton(onPressed: (){
                                             homeBloc.add(const HomeEvent.setPickedFileForComment(null));
                                              showModalBottomSheet(
                                                context: context,
                                                isScrollControlled: true, // To make the bottom sheet expand to full height
                                                builder: (context) {
                                                  return CommentModification(
                                                  isUpdate: false,
                                                  taskId: taskModel.id ?? "",
                                                  initialComment: "",
                                                  homeBloc: homeBloc,
                                                  onComplete: () {},
                                                  );
                                                },
                                              );

                                            }, icon: const Icon(CupertinoIcons.add_circled,color: Colors.white,),
                                            visualDensity: const VisualDensity(horizontal: -4,vertical: -4),),
                                          ],
                                        ),
                                        const SizedBox(height: 5,),
                                        if(state.homeLoadingBlocStatus == HomeLoadingBlocStatus.isLoading)
                                          SizedBox(
                                            height: MediaQuery.of(context).size.height * 0.15,
                                            child: const Center(
                                              child: CircularProgressIndicator(color: Colors.white,),
                                            ),
                                          ),
                                        if(state.homeLoadingBlocStatus != HomeLoadingBlocStatus.isLoading && state.commentModel.isEmpty)
                                          SizedBox(
                                            height: MediaQuery.of(context).size.height * 0.15,
                                            child: Center(
                                              child: Text(AppLocalizations.of(context)!.no_comments_found,
                                                textAlign: TextAlign.center,
                                                style: const TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 14
                                                ),),
                                            ),
                                          ),
                                        if(state.homeLoadingBlocStatus != HomeLoadingBlocStatus.isLoading && state.commentModel.isNotEmpty)
                                          Column(
                                            children: state.commentModel.map((e){
                                              return ListTile(
                                                dense: true,
                                                leading: const Icon(CupertinoIcons.person_alt_circle,color: Colors.white60,),
                                                minLeadingWidth: 32,
                                                title: Text(e.content??"",
                                                    style: const TextStyle(color: Colors.white,
                                                    fontSize: 16, fontWeight: FontWeight.w500)),
                                                visualDensity: const VisualDensity(horizontal: -4,vertical: 0),
                                                contentPadding: EdgeInsets.zero,

                                                trailing: (e.isUpdating??false)?
                                                const CupertinoActivityIndicator(color: Colors.white,):
                                                Row(
                                                  mainAxisSize: MainAxisSize.min,
                                                  children: [
                                                    const SizedBox(width: 5,),
                                                    IconButton(onPressed: (){
                                                      showModalBottomSheet(
                                                        context: context,
                                                        isScrollControlled: true, // To make the bottom sheet expand to full height
                                                        builder: (context) {
                                                          return CommentModification(
                                                            isUpdate: true,
                                                            taskId: taskModel.id ?? "",
                                                            commentId: e.id ?? "",
                                                            initialComment: e.content??"",
                                                            homeBloc: homeBloc,
                                                            onComplete: () {},
                                                          );
                                                        },
                                                      );
                                                    }, icon: const Icon(CupertinoIcons.pencil_circle, color: Colors.white,),visualDensity: const VisualDensity(horizontal: -4,vertical: -4),padding: EdgeInsets.zero,),
                                                    IconButton(onPressed: () async {
                                                      await showDeleteDialog(
                                                        context: context,
                                                        title: AppLocalizations.of(context)!.delete_comment,
                                                        content: AppLocalizations.of(context)!.delete_comment_confirmation,
                                                        onConfirm: () {
                                                          homeBloc.add(HomeEvent.deleteComment(commentId: e.id??"", taskId: widget.taskId));
                                                        },
                                                      );

                                                    }, icon: const Icon(CupertinoIcons.delete_solid, color: Colors.white,),visualDensity: const VisualDensity(horizontal: -4,vertical: -4),padding: EdgeInsets.zero,)
                                                  ],
                                                ),
                                                subtitle: Text(DateFormat("MMM dd, yyyy hh:mm a",(localeProvider.getLocale??const Locale("en","US")).languageCode).format((e.postedAt??"").toDateTime()),
                                                style: const TextStyle(color: Colors.white60),),
                                              );
                                            }).toList(),
                                          ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                }
                return Container();
              }
            );
          }
        );
      }
    );
  }


}