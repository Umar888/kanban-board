import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flexi_chip/flexi_chip.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:kanban_board/services/extensions/input_decoration_extension.dart';
import 'package:kanban_board/services/extensions/string_extension.dart';
import 'package:kanban_board/services/providers/locale_provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:motion_toast/motion_toast.dart';
import 'package:provider/provider.dart';

import '../../../constant/color.dart';
import '../../../helpers/internet/internet_cubit.dart';
import '../bloc/home_bloc.dart';
import 'close_button_widget.dart';


class AddTaskBottomSheet extends StatefulWidget {
  final bool isUpdate;
  final String? taskName;
  final String? taskId;
  final String? taskDescription;
  final TasksStatus? taskStatus;
  final TasksPriority? taskPriority;
  final List<TasksTags>? taskTags;
  final String? taskDate;

  const AddTaskBottomSheet({
    super.key,
    this.isUpdate = false,
    this.taskName,
    this.taskId,
    this.taskDescription,
    this.taskStatus,
    this.taskPriority,
    this.taskTags,
    this.taskDate,
  });

  @override
  _AddTaskBottomSheetState createState() => _AddTaskBottomSheetState();
}
class _AddTaskBottomSheetState extends State<AddTaskBottomSheet> {
  late TextEditingController taskNameController;
  late FocusNode taskNameFocusNode;
  late TextEditingController taskDateController;
  late FocusNode taskDateFocusNode;
  late TextEditingController taskTimeController;
  late FocusNode taskTimeFocusNode;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  late TextEditingController taskDescriptionController;
  late FocusNode taskDescriptionFocusNode;
  late FocusNode taskPriorityFocusNode;
  late FocusNode taskStatusFocusNode;
  late FocusNode taskTagsFocusNode;
  TasksStatus? _selectedTaskStatus;
  TasksPriority? _selectedTaskPriority;
  List<TasksTags>? _selectedTaskTags;

  @override
  void initState() {
    super.initState();
    taskNameController = TextEditingController(text: widget.taskName);
    taskNameFocusNode = FocusNode();
    taskDateController = TextEditingController(text: widget.taskDate);
    taskDateFocusNode = FocusNode();
    taskTimeController = TextEditingController();
    taskTimeFocusNode = FocusNode();
    taskDescriptionController = TextEditingController(text: widget.taskDescription);
    taskDescriptionFocusNode = FocusNode();
    taskPriorityFocusNode = FocusNode();
    taskStatusFocusNode = FocusNode();
    taskTagsFocusNode = FocusNode();
    if(widget.isUpdate){
      context.read<HomeBloc>().add(HomeEvent.updateSelectedTaskStatus(tasksStatus:  widget.taskStatus!));
      context.read<HomeBloc>().add(HomeEvent.updateSelectedTaskPriority(taskPriority:  widget.taskPriority!));
      for(TasksTags tasksTags in widget.taskTags??[]){
        context.read<HomeBloc>().add(HomeEvent.updateSelectedTaskTag(tasksTags:  tasksTags));
      }
    }

    taskNameFocusNode.addListener(_onFocusChange);
    taskDescriptionFocusNode.addListener(_onFocusChange);
    taskPriorityFocusNode.addListener(_onFocusChange);
    taskStatusFocusNode.addListener(_onFocusChange);
    taskTagsFocusNode.addListener(_onFocusChange);
    taskDateFocusNode.addListener(_onFocusChange);
    taskTimeFocusNode.addListener(_onFocusChange);
  }

  void _onFocusChange() {
    setState(() {});
  }

  @override
  void dispose() {
    taskNameController.dispose();
    taskNameFocusNode.dispose();
    taskDescriptionController.dispose();
    taskDescriptionFocusNode.dispose();
    taskPriorityFocusNode.dispose();
    taskDateController.dispose();
    taskDateFocusNode.dispose();
    taskTimeController.dispose();
    taskTimeFocusNode.dispose();
    super.dispose();
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

  String _getTagStatus(BuildContext context, TasksStatus status) {

    switch (status) {
      case TasksStatus.todo:
        return AppLocalizations.of(context)!.todos;
      case TasksStatus.inProgress:
        return AppLocalizations.of(context)!.inProgress;
      case TasksStatus.done:
        return AppLocalizations.of(context)!.done;
      default:
        return "";
    }
  }

  String _getTagPriority(BuildContext context, TasksPriority priority) {

    switch (priority) {
      case TasksPriority.lowPriority:
        return AppLocalizations.of(context)!.lowPriority;
      case TasksPriority.highPriority:
        return AppLocalizations.of(context)!.highPriority;
      case TasksPriority.normalPriority:
        return AppLocalizations.of(context)!.normalPriority;
      case TasksPriority.highestPriority:
        return AppLocalizations.of(context)!.highestPriority;
      default:
        return "";
    }
  }

  List<DropdownMenuItem<TasksStatus>> _addDividersAfterTasksStatusItems(List<TasksStatus> items) {
    final List<DropdownMenuItem<TasksStatus>> menuItems = [];
    for (final TasksStatus item in items) {
      menuItems.addAll(
        [
          DropdownMenuItem<TasksStatus>(
            value: item,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(
                _getTagStatus(context, item),
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 13,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          if (item != items.last)
            const DropdownMenuItem<TasksStatus>(
              enabled: false,
              child: Divider(color: Colors.black),
            ),
        ],
      );
    }
    return menuItems;
  }

  List<double> _getCustomTasksStatusItemsHeights(List<TasksStatus> items) {
    final List<double> itemsHeights = [];
    for (int i = 0; i < (items.length * 2) - 1; i++) {
      if (i.isEven) {
        itemsHeights.add(40);
      }
      if (i.isOdd) {
        itemsHeights.add(4);
      }
    }
    return itemsHeights;
  }

  List<DropdownMenuItem<TasksTags>> _addDividersAfterTasksTagsItems(List<TasksTags> items) {
    final List<DropdownMenuItem<TasksTags>> menuItems = [];
    for (final TasksTags item in items) {
      menuItems.addAll(
        [
          DropdownMenuItem<TasksTags>(
            value: item,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(
                _getTagName(context, item),
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 13,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          if (item != items.last)
            const DropdownMenuItem<TasksTags>(
              enabled: false,
              child: Divider(color: Colors.black),
            ),
        ],
      );
    }
    return menuItems;
  }

  List<double> _getCustomTasksTagsItemsHeights(List<TasksTags> items) {
    final List<double> itemsHeights = [];
    for (int i = 0; i < (items.length * 2) - 1; i++) {
      if (i.isEven) {
        itemsHeights.add(40);
      }
      if (i.isOdd) {
        itemsHeights.add(4);
      }
    }
    return itemsHeights;
  }

  List<DropdownMenuItem<TasksPriority>> _addDividersAfterTaskPriorityItems(List<TasksPriority> items) {
    final List<DropdownMenuItem<TasksPriority>> menuItems = [];
    for (final TasksPriority item in items) {
      menuItems.addAll(
        [
          DropdownMenuItem<TasksPriority>(
            value: item,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(
                _getTagPriority(context,item).toNormalString().capitalizeEachWord(),
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 13,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          if (item != items.last)
            const DropdownMenuItem<TasksPriority>(
              enabled: false,
              child: Divider(color: Colors.black),
            ),
        ],
      );
    }
    return menuItems;
  }

  List<double> _getCustomTaskPriorityItemsHeights(List<TasksPriority> items) {
    final List<double> itemsHeights = [];
    for (int i = 0; i < (items.length * 2) - 1; i++) {
      if (i.isEven) {
        itemsHeights.add(40);
      }
      if (i.isOdd) {
        itemsHeights.add(4);
      }
    }
    return itemsHeights;
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<LocaleProvider>(
      builder: (context, localeProvider, consumerWidget) {
        return BlocBuilder<InternetCubit, InternetState>(

            builder: (context,internetState) {
            return Padding(
              padding: MediaQuery.of(context).viewInsets,
              child: Container(
                color: Colors.transparent,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const CloseButtonWidget(),
                    Flexible(
                      child: BlocBuilder<HomeBloc, HomeState>(
                        builder: (context, state) {
                          return Container(
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                                color: Theme.of(context).scaffoldBackgroundColor,
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(40),
                                topRight: Radius.circular(40)
                              )
                            ),
                            padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 16),
                            child: Form(
                              key: _formKey,
                              child: SingleChildScrollView(
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Center(
                                      child: Text(
                                        AppLocalizations.of(context)!.add_new_task,
                                        style: const TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    const SizedBox(height: 10),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(horizontal: 4),
                                      child: Text(
                                        AppLocalizations.of(context)!.task_name,
                                        style: TextStyle(
                                          color: taskNameFocusNode.hasFocus ? AppColors.primaryColor : Colors.black,
                                          fontSize: 16,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(height: 5),
                                    TextFormField(
                                      controller: taskNameController,
                                      focusNode: taskNameFocusNode,
                                      cursorColor: AppColors.primaryColor,
                                      textCapitalization: TextCapitalization.words,
                                      validator: (text) {
                                        if (text != null && text.length > 2) {
                                          return null;
                                        }
                                        return AppLocalizations.of(context)!.task_name_error;
                                      },
                                      style: const TextStyle(color: AppColors.primaryColor, fontSize: 15),
                                      decoration: const InputDecoration().applyInputDecoration(borderRadius: 100, errorText: '', context: context),

                                    ),
                                    const SizedBox(height: 10),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(horizontal: 4),
                                      child: Text(
                                        AppLocalizations.of(context)!.task_description,
                                        style: TextStyle(
                                          color: taskDescriptionFocusNode.hasFocus ? AppColors.primaryColor : Colors.black,
                                          fontSize: 16,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(height: 5),
                                    TextFormField(
                                      controller: taskDescriptionController,
                                      focusNode: taskDescriptionFocusNode,
                                      textCapitalization: TextCapitalization.sentences,
                                      cursorColor: AppColors.primaryColor,
                                      validator: (text) {
                                        if (text != null && text.isNotEmpty) {
                                          return null;
                                        }
                                        return AppLocalizations.of(context)!.task_description_error;
                                      },
                                      style: const TextStyle(color: AppColors.primaryColor, fontSize: 15),
                                      maxLines: 5,
                                      decoration: const InputDecoration().applyInputDecoration(borderRadius: 10, errorText: '', context: context),
                                    ),
                                    const SizedBox(height: 10),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(horizontal: 4),
                                      child: Text(
                                        AppLocalizations.of(context)!.task_status,
                                        style: TextStyle(
                                          color: taskStatusFocusNode.hasFocus ? AppColors.primaryColor : Colors.black,
                                          fontSize: 16,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(height: 5),
                                    DropdownButtonFormField2<TasksStatus>(
                                      focusNode: taskStatusFocusNode,
                                      customButton: Container(
                                        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                                        decoration: BoxDecoration(
                                          border: Border.all(color: taskStatusFocusNode.hasFocus ? AppColors.primaryColor : Colors.black),
                                          borderRadius: BorderRadius.circular(1000),
                                        ),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.end,
                                          children: [
                                            Text(
                                              _getTagStatus(context,state.selectedTasksStatus).toNormalString().capitalizeEachWord(),
                                              style: const TextStyle(
                                                color: AppColors.primaryColor,
                                                fontSize: 15,
                                              ),
                                            ),
                                            const Spacer(),
                                            Icon(
                                              Icons.expand_more,
                                              color: taskStatusFocusNode.hasFocus ? AppColors.primaryColor : Colors.black,
                                              size: 18,
                                            ),
                                          ],
                                        ),
                                      ),

                                      dropdownStyleData: DropdownStyleData(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(14),
                                          border: Border.all(color: Colors.black),
                                          color: Colors.white,
                                        ),
                                        padding: EdgeInsets.zero,
                                        useSafeArea: false,
                                        scrollPadding: EdgeInsets.zero,
                                      ),
                                      menuItemStyleData: MenuItemStyleData(
                                        customHeights: _getCustomTasksStatusItemsHeights(state.tasksStatusList),
                                        padding: EdgeInsets.zero,
                                      ),
                                      items: _addDividersAfterTasksStatusItems(state.tasksStatusList),
                                      onChanged: (TasksStatus? value) async {
                                        if (value != null) {
                                          context.read<HomeBloc>().add(HomeEvent.updateSelectedTaskStatus(tasksStatus: value));
                                        }
                                      },
                                      style: const TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w400,
                                      ),
                                      decoration:  const InputDecoration().applyInputDecoration(borderRadius: 0, errorText: "", context: context,isDropDown: true),
                                    ),
                                    const SizedBox(height: 10),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(horizontal: 4),
                                      child: Text(
                                        AppLocalizations.of(context)!.task_priority,
                                        style: TextStyle(
                                          color: taskPriorityFocusNode.hasFocus ? AppColors.primaryColor : Colors.black,
                                          fontSize: 16,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(height: 5),
                                    DropdownButtonFormField2<TasksPriority>(
                                      focusNode: taskPriorityFocusNode,
                                      customButton: Container(
                                        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                                        decoration: BoxDecoration(
                                          border: Border.all(color: taskPriorityFocusNode.hasFocus ? AppColors.primaryColor : Colors.black),
                                          borderRadius: BorderRadius.circular(1000),
                                        ),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.end,
                                          children: [
                                            Text(
                                              _getTagPriority(context,state.selectedTaskPriority).toNormalString().capitalizeEachWord(),
                                              style: const TextStyle(
                                                color: AppColors.primaryColor,
                                                fontSize: 15,
                                              ),
                                            ),
                                            const Spacer(),
                                            Icon(
                                              Icons.expand_more,
                                              color: taskPriorityFocusNode.hasFocus ? AppColors.primaryColor : Colors.black,
                                              size: 18,
                                            ),
                                          ],
                                        ),
                                      ),

                                      dropdownStyleData: DropdownStyleData(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(14),
                                          border: Border.all(color: Colors.black),
                                          color: Colors.white,
                                        ),
                                        padding: EdgeInsets.zero,
                                        useSafeArea: false,
                                        scrollPadding: EdgeInsets.zero,
                                      ),
                                      menuItemStyleData: MenuItemStyleData(
                                        customHeights: _getCustomTaskPriorityItemsHeights(state.tasksPriorityList),
                                        padding: EdgeInsets.zero,
                                      ),
                                      items: _addDividersAfterTaskPriorityItems(state.tasksPriorityList),
                                      onChanged: (TasksPriority? value) async {
                                        if (value != null) {
                                          context.read<HomeBloc>().add(HomeEvent.updateSelectedTaskPriority(taskPriority: value));
                                        }
                                      },
                                      style: const TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w400,
                                      ),
                                      decoration:  const InputDecoration().applyInputDecoration(borderRadius: 0, errorText: "", context: context,isDropDown: true),
                                    ),
                                    const SizedBox(height: 10),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(horizontal: 4),
                                      child: Text(
                                        AppLocalizations.of(context)!.task_tags,
                                        style: TextStyle(
                                          color: taskTagsFocusNode.hasFocus ? AppColors.primaryColor : Colors.black,
                                          fontSize: 16,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(height: 5),
                                    DropdownButtonFormField2<TasksTags>(
                                      focusNode: taskTagsFocusNode,

                                      customButton: Container(
                                        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                                        decoration: BoxDecoration(
                                          border: Border.all(color: taskTagsFocusNode.hasFocus ? AppColors.primaryColor : Colors.black),
                                          borderRadius: BorderRadius.circular(1000),
                                        ),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.end,
                                          children: [
                                            Text(
                                              AppLocalizations.of(context)!.select_task_tags,
                                              style: TextStyle(
                                                color: taskTagsFocusNode.hasFocus ? AppColors.primaryColor : Colors.black,
                                                fontSize: 15,
                                              ),
                                            ),
                                            const Spacer(),
                                            Icon(
                                              Icons.expand_more,
                                              color: taskTagsFocusNode.hasFocus ? AppColors.primaryColor : Colors.black,
                                              size: 18,
                                            ),
                                          ],
                                        ),
                                      ),
                                      validator: (value){
                                        if(state.selectedTaskTag.isEmpty){
                                          return AppLocalizations.of(context)!.task_tags_error;
                                        }
                                        return null;
                                      },

                                      dropdownStyleData: DropdownStyleData(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(14),
                                          border: Border.all(color: Colors.black),
                                          color: Colors.white,
                                        ),
                                        padding: EdgeInsets.zero,
                                        useSafeArea: false,
                                        scrollPadding: EdgeInsets.zero,
                                      ),
                                      menuItemStyleData: MenuItemStyleData(
                                        customHeights: _getCustomTasksTagsItemsHeights(state.taskTagList),
                                        padding: EdgeInsets.zero,
                                      ),
                                      items: _addDividersAfterTasksTagsItems(state.taskTagList),
                                      onChanged: (TasksTags? value) async {
                                        if (value != null) {
                                          context.read<HomeBloc>().add(HomeEvent.updateSelectedTaskTag(tasksTags: value));
                                        }
                                      },
                                      style: const TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w400,
                                      ),
                                      decoration:  const InputDecoration().applyInputDecoration(borderRadius: 0, errorText: "", context: context,isDropDown: true),
                                    ),
                                    SizedBox(height: state.selectedTaskTag.isNotEmpty?10:0),
                                    Wrap(
                                      runSpacing: 5,
                                      spacing: 5,
                                      children: state.selectedTaskTag.map((e) {
                                        int index = state.selectedTaskTag.indexOf(e);
                                        return FlexiChip(
                                          label: Text(_getTagName(context, e)),
                                          style: FlexiChipStyle.outlined(
                                            borderWidth: 1,
                                            borderOpacity: 1,
                                            borderRadius: BorderRadius.circular(100),
                                            borderStyle: BorderStyle.solid,
                                            backgroundOpacity: 1,
                                            backgroundColor: e == TasksTags.travel
                                                ? AppColors.travelTagColor
                                                : e == TasksTags.work
                                                ? AppColors.workTagColor
                                                : e == TasksTags.fun
                                                ? AppColors.funTagColor
                                                : e == TasksTags.health
                                                ? AppColors.healthTagColor
                                                : e == TasksTags.education
                                                ? AppColors.educationTagColor
                                                : e == TasksTags.family
                                                ? AppColors.familyTagColor
                                                : e == TasksTags.finance
                                                ? AppColors.financeTagColor
                                                : e == TasksTags.shopping
                                                ? AppColors.shoppingTagColor
                                                : e == TasksTags.exercise
                                                ? AppColors.exerciseTagColor
                                                : e == TasksTags.leisure
                                                ? AppColors.leisureTagColor
                                                : e == TasksTags.social
                                                ? AppColors.socialTagColor
                                                : e == TasksTags.project
                                                ? AppColors.projectTagColor
                                                : e == TasksTags.hobby
                                                ? AppColors.hobbyTagColor
                                                : e == TasksTags.volunteer
                                                ? AppColors.volunteerTagColor
                                                : e == TasksTags.technology
                                                ? AppColors.technologyTagColor
                                                : AppColors.otherTagColor,
                                          ),
                                          selected: false,
                                          disabled: false,
                                          deleteIcon: const Icon(CupertinoIcons.minus_circle),
                                          onPressed: (){

                                          },
                                          onDeleted: () {
                                            context.read<HomeBloc>().add(HomeEvent.removeSelectedTaskTag(index: index));
                                          },
                                        );
                                      }).toList(),
                                    ),
                                    const SizedBox(height: 10),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(horizontal: 4),
                                      child: Text(
                                        AppLocalizations.of(context)!.task_date,
                                        style: TextStyle(
                                          color: taskNameFocusNode.hasFocus ? AppColors.primaryColor : Colors.black,
                                          fontSize: 16,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(height: 5),
                                    TextFormField(
                                      controller: taskDateController,
                                      focusNode: taskDateFocusNode,
                                      onTap: (){
                                        _selectDateTime(context,localeProvider);
                                      },
                                      readOnly: true,
                                      cursorColor: AppColors.primaryColor,
                                      validator: (text) {
                                        if (text != null && text.length > 2) {
                                          return null;
                                        }
                                        return AppLocalizations.of(context)!.task_date_error;
                                      },
                                      style: const TextStyle(color: AppColors.primaryColor, fontSize: 15),
                                      decoration: const InputDecoration().applyInputDecoration(borderRadius: 100, errorText: '', context: context),

                                    ),

                                    const SizedBox(height: 20),
                                    Center(
                                      child: ElevatedButton(
                                        onPressed: state.addHomeLoadingBlocStatus == AddHomeLoadingBlocStatus.isLoading?null
                                            :(){
                                          if (_formKey.currentState?.validate() ?? false) {
                                          if(internetState is InternetDisconnected){
                                            MotionToast.warning(
                                            title:  Text(AppLocalizations.of(context)!.error),
                                            description:  Text(AppLocalizations.of(context)!.check_internet),
                                            ).show(context);
                                          }
                                          else{

                                            if(widget.isUpdate){

                                              context.read<HomeBloc>().add(HomeEvent.updateFullTask(
                                                  appLocalization: AppLocalizations.of(context)!,
                                                  taskId: widget.taskId??"",
                                                  dueDate:taskDateController.text,content: taskNameController.text, description: taskDescriptionController.text,
                                                  onComplete: (){
                                                    Navigator.pop(context);
                                                  }));
                                            }
                                            else{
                                              context.read<HomeBloc>().add(HomeEvent.addNewTask(
                                                  appLocalization: AppLocalizations.of(context)!,
                                                  dueDate:taskDateController.text,content: taskNameController.text, description: taskDescriptionController.text,
                                                  onComplete: (){
                                                    Navigator.pop(context);
                                                  }));
                                            }
                                          }
                                          }
                                        },
                                        style: ButtonStyle(
                                          backgroundColor: MaterialStateProperty.all<Color>(
                                              AppColors.primaryColor
                                          ),
                                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                            RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(20.0), // Adjust the border radius as needed
                                            ),
                                          ),
                                        ),
                                        child: Container(
                                          height: 44,
                                          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 0.0),
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              state.addHomeLoadingBlocStatus == AddHomeLoadingBlocStatus.isLoading?
                                              const CupertinoActivityIndicator(color: Colors.white,):
                                              Text(
                                                widget.isUpdate?AppLocalizations.of(context)!.update_task:AppLocalizations.of(context)!.add_new_task,
                                                style: const TextStyle(fontSize: 20.0,color: Colors.white)
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            );
          }
        );
      }
    );
  }
  Future<void> _selectDateTime(BuildContext context, LocaleProvider localeProvider) async {
    final DateTime now = DateTime.now();
    final DateTime firstDate = now.add(const Duration(days: 0));

    Locale locale = localeProvider.getLocale ?? const Locale("en", "US");
    print("Using locale: ${locale.toString()}");

    final DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: firstDate,
      firstDate: firstDate,
      lastDate: DateTime(2101),
      locale: locale,
    );

    print("Picked date: $pickedDate");

    if (pickedDate != null && context.mounted) {
      final TimeOfDay? pickedTime = await showTimePicker(
        context: context,
        initialTime: TimeOfDay.fromDateTime(now),
      );

      if (pickedTime != null) {
        final DateTime pickedDateTime = DateTime(
          pickedDate.year,
          pickedDate.month,
          pickedDate.day,
          pickedTime.hour,
          pickedTime.minute,
        );

        final DateFormat rfc3339Format = DateFormat("yyyy-MM-dd'T'HH:mm:ss'Z'", locale.languageCode);
        final String formattedDateTime = rfc3339Format.format(pickedDateTime.toUtc());

        setState(() {
          taskDateController.text = formattedDateTime;
        });
      }
    }
    taskDateFocusNode.unfocus();
  }
}

