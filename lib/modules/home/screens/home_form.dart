import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kanban_board/helpers/internet/internet_cubit.dart';
import 'package:motion_toast/motion_toast.dart';
import 'package:pull_down_button/pull_down_button.dart';

import '../../../intermediate_widget/bottom_navigation.dart';
import '../bloc/home_bloc.dart';
import '../widgets/add_task_bottom_sheet.dart';

class HomeForm extends StatefulWidget {
  const HomeForm({super.key});

  @override
  _HomeFormState createState() => _HomeFormState();
}

class _HomeFormState extends State<HomeForm> with SingleTickerProviderStateMixin,WidgetsBindingObserver {
  late TabController _tabController;
  late HomeBloc homeBloc;

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);

    _tabController = TabController(length: 3, vsync: this);
    homeBloc = context.read<HomeBloc>();
  }

  goToPreviousItem(int value){
    setState(()  {
      homeBloc.add(HomeEvent.updateCurrentHomeIndex(index: value));
      _tabController.animateTo(value);
    });
  }
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<InternetCubit, InternetState>(
      listenWhen: (prev, current) => prev != current,
        listener: (context,internetState) {
          if(internetState is InternetConnected){
             homeBloc.add(HomeEvent.syncData(context: context));
          }
        },
        builder: (context,internetState) {
        return BlocConsumer<HomeBloc, HomeState>(
          listenWhen: (previous,current) => previous.message != current.message,
            listener: (context, state) {
              if(state.message.isNotEmpty && state.addHomeLoadingBlocStatus == AddHomeLoadingBlocStatus.isSuccess){
                MotionToast.success(
                  title:  const Text("Success"),
                  description:  Text(state.message),
                ).show(context);
                homeBloc.add(const HomeEvent.resetMessage());
              }
              else if(state.message.isNotEmpty && state.addHomeLoadingBlocStatus == AddHomeLoadingBlocStatus.isFail){
                MotionToast.error(
                  title:  const Text("Error"),
                  description:  Text(state.message),
                ).show(context);
                homeBloc.add(const HomeEvent.resetMessage());
              }
            },
            builder: (context, state) {
            return Scaffold(
                backgroundColor:Colors.white ,
                appBar: AppBar(
                    title: const Text('Kanban Board'),
                    surfaceTintColor: Colors.white,
                    centerTitle: true,
                    forceMaterialTransparency: true,
                  actions: [
                    PullDownButton(
                      itemBuilder: (context) => [
                        PullDownMenuItem(
                          title: 'Change Language',
                          icon: Icons.translate,
                          onTap: () {

                          },
                        ),
                       PullDownMenuActionsRow.medium(
                          items: [
                            PullDownMenuItem(
                              onTap: () {},
                              title: 'Reply',
                              icon: CupertinoIcons.arrowshape_turn_up_left,
                            ),
                            PullDownMenuItem(
                              onTap: () {},
                              title: 'Copy',
                              icon: CupertinoIcons.doc_on_doc,
                            ),
                            PullDownMenuItem(
                              onTap: () {},
                              title: 'Edit',
                              icon: CupertinoIcons.pencil,
                            ),
                          ],
                        ),
                        const PullDownMenuDivider.large(),
                        PullDownMenuItem(
                          title: 'Delete all tasks',
                          icon: CupertinoIcons.delete_solid,
                          isDestructive: true,
                          onTap: () {


                          },
                        ),
                      ],
                      buttonBuilder: (context, showMenu) => CupertinoButton(
                        onPressed: showMenu,
                        minSize: 10,
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: const Icon(CupertinoIcons.ellipsis_vertical,color: Colors.black,),
                      ),
                    )
                  ],
                ),
                body: Container(color: Colors.white, child: state.homeScreens[state.currentHomeIndex]),
                bottomNavigationBar: BottomNavigationBarWidget(
                  tabController: _tabController,
                  onTap: (index){
                    if(index == 1){
                      goToPreviousItem(state.currentHomeIndex);
                      showModalBottomSheet(
                        context: context,
                        isScrollControlled: true,
                        backgroundColor: Colors.transparent,
                        builder: (BuildContext context) {
                          return BlocProvider.value(
                            value: homeBloc,
                            child: const AddTaskBottomSheet(),
                          );
                        },
                      ).then((_){
                        homeBloc.add(const HomeEvent.resetSelectItems());
                      });
                    }
                    else{
                      homeBloc.add(HomeEvent.updateCurrentHomeIndex(index: index));
                    }
                  },
                  index: state.currentHomeIndex,
                )
            );
          }
        );
      }
    );
  }

}