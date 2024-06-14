import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flexi_chip/flexi_chip.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:kanban_board/services/extensions/input_decoration_extension.dart';
import 'package:kanban_board/services/extensions/string_extension.dart';

import '../../../constant/color.dart';
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
                item.name.toNormalString().capitalizeEachWord(),
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
                item.name.toNormalString().capitalizeEachWord(),
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
                item.name.toNormalString().capitalizeEachWord(),
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
                            const Center(
                              child: Text(
                                'Add New Task',
                                style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
                              ),
                            ),
                            const SizedBox(height: 10),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 4),
                              child: Text(
                                "Task Name",
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
                                return "Please enter a valid task name";
                              },
                              style: const TextStyle(color: AppColors.primaryColor, fontSize: 15),
                              decoration: const InputDecoration().applyInputDecoration(borderRadius: 100, errorText: '', context: context),

                            ),
                            const SizedBox(height: 10),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 4),
                              child: Text(
                                "Task Description",
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
                                return "Please enter a task description";
                              },
                              style: const TextStyle(color: AppColors.primaryColor, fontSize: 15),
                              maxLines: 5,
                              decoration: const InputDecoration().applyInputDecoration(borderRadius: 10, errorText: '', context: context),
                            ),
                            const SizedBox(height: 10),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 4),
                              child: Text(
                                "Task Status",
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
                                      state.selectedTasksStatus.name.toNormalString().capitalizeEachWord(),
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
                                "Task Priority",
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
                                      state.selectedTaskPriority.name.toNormalString().capitalizeEachWord(),
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
                                "Task Tags",
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
                                      "Select Task Tags",
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
                                  return "Please select at least 1 tag for your task";
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
                                  label: Text(e.name.toNormalString().capitalizeEachWord()),
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
                                "Task Date",
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
                                _selectDateTime(context);
                              },
                              readOnly: true,
                              cursorColor: AppColors.primaryColor,
                              validator: (text) {
                                if (text != null && text.length > 2) {
                                  return null;
                                }
                                return "Task due date is required";
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
                                    if(widget.isUpdate){

                                      context.read<HomeBloc>().add(HomeEvent.updateFullTask(
                                          taskId: widget.taskId??"",
                                          dueDate:taskDateController.text,content: taskNameController.text, description: taskDescriptionController.text,
                                          onComplete: (){
                                            Navigator.pop(context);
                                          }));
                                    }
                                    else{
                                      context.read<HomeBloc>().add(HomeEvent.addNewTask(dueDate:taskDateController.text,content: taskNameController.text, description: taskDescriptionController.text,
                                          onComplete: (){
                                            Navigator.pop(context);
                                          }));
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
                                        widget.isUpdate?"Update Task":"Add New Task",
                                        style: TextStyle(fontSize: 20.0,color: Colors.white)
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
  Future<void> _selectDateTime(BuildContext context) async {
    final DateTime now = DateTime.now();
    final DateTime firstDate = now.add(const Duration(days: 0));
    final DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: firstDate,
      firstDate: firstDate,
      lastDate: DateTime(2101),
    );

    if (pickedDate != null) {
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

        final DateFormat rfc3339Format = DateFormat("yyyy-MM-dd'T'HH:mm:ss'Z'");
        final String formattedDateTime = rfc3339Format.format(pickedDateTime.toUtc());

        setState(() {
          taskDateController.text = formattedDateTime;
        });
      }
    }
    taskDateFocusNode.unfocus();
  }
}

