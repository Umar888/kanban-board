import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kanban_board/helpers/internet/internet_cubit.dart';
import 'package:kanban_board/modules/home/widgets/delete_dialog.dart';
import 'package:kanban_board/services/shared_preference/shared_preference.dart';
import 'package:motion_toast/motion_toast.dart';
import 'package:overlay_support/overlay_support.dart';
import 'package:provider/provider.dart';
import 'package:pull_down_button/pull_down_button.dart';

import '../../../constant/string_constants.dart';
import '../../../intermediate_widget/bottom_navigation.dart';
import '../../../services/providers/locale_provider.dart';
import '../bloc/home_bloc.dart';
import '../widgets/add_task_bottom_sheet.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class HomeForm extends StatefulWidget {
  const HomeForm({super.key});

  @override
  _HomeFormState createState() => _HomeFormState();
}

class _HomeFormState extends State<HomeForm> with SingleTickerProviderStateMixin,WidgetsBindingObserver {
  late TabController _tabController;
  late HomeBloc homeBloc;
  final SharedPreference sharedPreference = SharedPreference();

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
                  title:  Text(AppLocalizations.of(context)!.success),
                  description:  Text(state.message),
                ).show(context);
                homeBloc.add(const HomeEvent.resetMessage());
              }
              else if(state.message.isNotEmpty && state.addHomeLoadingBlocStatus == AddHomeLoadingBlocStatus.isFail){
                MotionToast.error(
                  title:  Text(AppLocalizations.of(context)!.error),
                  description:  Text(state.message),
                ).show(context);
                homeBloc.add(const HomeEvent.resetMessage());
              }
              else if(state.message.isNotEmpty && state.homeLoadingBlocStatus == HomeLoadingBlocStatus.isSuccess){
                MotionToast.success(
                  title:  Text(AppLocalizations.of(context)!.success),
                  description:  Text(state.message),
                ).show(context);
                homeBloc.add(const HomeEvent.resetMessage());
              }
            },
            builder: (context, state) {
            return Scaffold(
                backgroundColor:Colors.white ,
                appBar: AppBar(
                  title: Text(AppLocalizations.of(context)!.kanbanBoard),
                    surfaceTintColor: Colors.white,
                    centerTitle: true,
                    forceMaterialTransparency: true,
                  actions: [
                    PullDownButton(
                      itemBuilder: (context) => [
                        PullDownMenuItem(
                          title: AppLocalizations.of(context)!.changeLanguage,
                          icon: Icons.translate,
                          onTap: () {

                          },
                        ),

                        const PullDownMenuDivider(),
                       PullDownMenuActionsRow.medium(
                          items: [
                            PullDownMenuItem(
                              onTap: () async {
                                final provider = Provider.of<LocaleProvider>(context, listen: false);
                                provider.setLocale(const Locale('en', 'US'));
                                await sharedPreference.saveString(languageId, 'en');

                              },
                              title: AppLocalizations.of(context)!.english,
                              icon: Icons.language,
                            ),
                            PullDownMenuItem(
                              onTap: () async {
                                final provider = Provider.of<LocaleProvider>(context, listen: false);
                                provider.setLocale(const Locale('de', 'DE'));
                                await sharedPreference.saveString(languageId, 'de');

                              },
                              title: AppLocalizations.of(context)!.german,
                              icon: Icons.language,
                            ),
                            PullDownMenuItem(
                              onTap: () async {
                                final provider = Provider.of<LocaleProvider>(context, listen: false);
                                provider.setLocale(const Locale('fr', 'FR'));
                                await sharedPreference.saveString(languageId, 'fr');

                              },
                              title: AppLocalizations.of(context)!.french,
                              icon: Icons.language,
                            ),
                          ],
                        ),
                        PullDownMenuActionsRow.medium(
                          items: [
                            PullDownMenuItem(
                              onTap: () async {
                                final provider = Provider.of<LocaleProvider>(context, listen: false);
                                provider.setLocale(const Locale('ru', 'RU'));
                                await sharedPreference.saveString(languageId, 'ru');

                              },
                              title: AppLocalizations.of(context)!.russian,
                              icon: Icons.language,
                            ),
                            PullDownMenuItem(
                              onTap: () async {
                                final provider = Provider.of<LocaleProvider>(context, listen: false);
                                provider.setLocale(const Locale('it', 'IT'));
                                await sharedPreference.saveString(languageId, 'it');

                              },
                              title: AppLocalizations.of(context)!.italian,
                              icon: Icons.language,
                            ),
                            PullDownMenuItem(
                              onTap: () async {
                                final provider = Provider.of<LocaleProvider>(context, listen: false);
                                provider.setLocale(const Locale('es', 'ES'));
                                await sharedPreference.saveString(languageId, 'es');

                              },
                              title: AppLocalizations.of(context)!.spanish,
                              icon: Icons.language,
                            ),
                          ],
                        ),
                        const PullDownMenuDivider.large(),
                        PullDownMenuItem(
                          title: AppLocalizations.of(context)!.deleteAllTasks,
                          icon: CupertinoIcons.delete_solid,
                          isDestructive: true,
                          onTap: () {
                            showDeleteDialog(
                                context: context,
                                title: AppLocalizations.of(context)!.delete_all_tasks,
                                content: AppLocalizations.of(context)!.delete_all_tasks_confirmation,
                                onConfirm: (){
                                  if(internetState is InternetDisconnected){
                                    MotionToast.warning(
                                      title:  Text(AppLocalizations.of(context)!.error),
                                      description:  Text(AppLocalizations.of(context)!.check_internet),
                                    ).show(context);
                                  }
                                  else{
                                    homeBloc.add(HomeEvent.deleteAllTask(appLocalization: AppLocalizations.of(context)!));
                                  }
                                }
                             );
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