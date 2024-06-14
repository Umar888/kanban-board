
import 'package:easy_date_timeline/easy_date_timeline.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:kanban_board/constant/string_constants.dart';
import 'package:kanban_board/modules/home/models/tasks_model.dart';
import 'package:kanban_board/services/extensions/string_extension.dart';
import 'package:pull_down_button/pull_down_button.dart';

import 'constant/color.dart';
import 'helpers/internet/internet_cubit.dart';
import 'modules/home/bloc/home_bloc.dart';
import 'modules/home/screens/home_detail.dart';
import 'modules/home/widgets/task_card_widget_single.dart';



class SingleBoardList extends StatefulWidget {
  const SingleBoardList({super.key});

  @override
  State<SingleBoardList> createState() => _SingleBoardListState();
}

class _SingleBoardListState extends State<SingleBoardList> {

  @override
  void initState() {
    super.initState();
    homeBloc =  context.read<HomeBloc>();
    homeBloc.add(HomeEvent.updateFocusedDate(focusedDate: homeBloc.state.focusedDate??DateTime.now(), internetState: context.read<InternetCubit>().state));

    }
  late HomeBloc homeBloc;
  final EasyInfiniteDateTimelineController _controller = EasyInfiniteDateTimelineController();


  @override
  Widget build(BuildContext context) {
    return BlocConsumer<InternetCubit, InternetState>(
        listenWhen: (prev, current) => prev != current,
        listener: (context,internetState) {
        },
        builder: (context,internetState) {
        return BlocBuilder<HomeBloc, HomeState>(
            builder: (context,state){
            return Column(
              children: [
                SizedBox(
                  width: double.infinity,
                  child: EasyInfiniteDateTimeLine(
                    controller: _controller,
                    headerBuilder: (context, dateTime){
                      return Padding(
                        padding: const EdgeInsets.only(left: 12,right: 12,bottom: 12),
                        child: Row(
                          children: [
                            Text("${DateFormat("MMM dd, yyy").format(dateTime)} (${DateFormat("EEEE").format(dateTime)})",
                            style: const TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.w600
                            ),),
                            const Spacer(),
                            IconButton(
                              onPressed: () async {
                                final DateTime firstDate = DateTime(1600);
                                final DateTime? pickedDate = await showDatePicker(
                                  context: context,
                                  initialDate: state.focusedDate,
                                  firstDate: firstDate,
                                  lastDate: DateTime(2100),
                                );
                                if (pickedDate != null) {
                                  homeBloc.add(HomeEvent.updateFocusedDate(focusedDate: pickedDate,internetState: internetState));
                                  _controller.animateToDate(pickedDate);
                                }
                              },
                              icon: const Icon(CupertinoIcons.calendar),
                              visualDensity: const VisualDensity(horizontal: -4,vertical: -4),
                              padding: EdgeInsets.zero
                            ),
                            PullDownButton(
                              itemBuilder: (context) => [
                                PullDownMenuItem(
                                  title: 'Scroll to focused date',
                                  icon: CupertinoIcons.calendar,
                                  onTap: () {
                                    _controller.animateToFocusDate();
                                  },
                                ),
                                const PullDownMenuDivider(),
                                PullDownMenuItem(
                                  title: 'Scroll to current date',
                                  icon: CupertinoIcons.calendar_today,
                                  onTap: () {

                                    _controller.animateToCurrentData();
                                    },
                                ),
                              ],
                              buttonBuilder: (context, showMenu) => CupertinoButton(
                                onPressed: showMenu,
                                minSize: 10,
                                padding: EdgeInsets.zero,
                                child: const Icon(CupertinoIcons.ellipsis_circle,color: Colors.black,),
                              ),
                            )
                          ],
                        ),
                      );
                    },
                    dayProps: EasyDayProps(
                      height: 75,
                      width: 75,
                      inactiveDayStyle: DayStyle(
                        decoration: BoxDecoration(
                          border: Border.all(color: AppColors.primaryColor.withOpacity(0.5)),
                          borderRadius: BorderRadius.circular(100)
                        )
                      ),
                      activeDayStyle: DayStyle(
                        decoration: BoxDecoration(
                            color: AppColors.primaryColor,
                          border: Border.all(color: AppColors.primaryColor.withOpacity(0.5)),
                          borderRadius: BorderRadius.circular(100)
                        )
                      )
                    ),
                    timeLineProps: const EasyTimeLineProps(
                      hPadding: 0,
                      separatorPadding: 8,
                    ),
                    physics: const BouncingScrollPhysics(),
                    firstDate: DateTime(1600),
                    focusDate: state.focusedDate,
                    lastDate: DateTime(2100),
                    onDateChange: (selectedDate) {
                      homeBloc.add(HomeEvent.updateFocusedDate(focusedDate: selectedDate,internetState: internetState));
                    },
                  ),
                ),
                const SizedBox(height: 20,),
                Expanded(
                  child: state.taskManagerLoadingBlocStatus == TaskManagerLoadingBlocStatus.isSuccess?
                  (state.allTasksModel).isNotEmpty?
                       SingleChildScrollView(
                         child: Column(
                           children: (state.allTasksModel??[]).map((e){
                             return TaskCardSingle(
                               taskModel: e,
                               homeBloc: homeBloc,
                             );
                           }).toList(),
                         ),
                       )
                      :Center(child: Text("No tasks added for ${DateFormat("MMM dd, yyyy").format(state.focusedDate??DateTime.now())}",
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 18
                        ))):
                      const Center(child: CircularProgressIndicator(color: AppColors.primaryColor,)),
                ),
              ],
            );
          }
        );
      }
    );
  }
}
