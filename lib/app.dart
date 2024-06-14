
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kanban_board/modules/home/screens/home_page.dart';
import 'package:kanban_board/services/shared_preference/shared_preference.dart';
import 'package:overlay_support/overlay_support.dart';
import 'helpers/internet/internet_cubit.dart';
import 'modules/home/bloc/home_bloc.dart';

GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
class App extends StatelessWidget {
  const App({super.key, required this.connectivity});

  final Connectivity connectivity;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<InternetCubit>(
          create: (context) => InternetCubit(connectivity: connectivity),
        ),
        BlocProvider<HomeBloc>(
          create: (context) => HomeBloc(),
        ),
      ],
      child: const AppView()
    );
  }
}
final GlobalKey<ScaffoldMessengerState> scaffoldMessengerKey=GlobalKey<ScaffoldMessengerState>();

class AppView extends StatefulWidget {
  const AppView({super.key});

  @override
  _AppViewState createState() => _AppViewState();
}

class _AppViewState extends State<AppView> with WidgetsBindingObserver {
  SharedPreference sharedPreference = SharedPreference();
  late HomeBloc homeBloc;

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    super.didChangeAppLifecycleState(state);
    if (state == AppLifecycleState.inactive) {
      saveLocalTime();
    }
  }

  void saveLocalTime() async {
    await sharedPreference.saveInt("localTime", DateTime.now().millisecondsSinceEpoch);
  }

  Future<void> getLocalTime() async {
    int localTime = await sharedPreference.readInt("localTime");
    print("Local time retrieved: $localTime");
    if (localTime > 0) {
      homeBloc.add(HomeEvent.addCurrentTimeStampToAllTasksLocally(savedTime: localTime));
      await sharedPreference.saveInt("localTime", 0);
    }
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    homeBloc = context.read<HomeBloc>();
    getLocalTime();
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return OverlaySupport.global(
      child: MaterialApp(
        navigatorKey: navigatorKey,
        scaffoldMessengerKey: scaffoldMessengerKey,
        locale: const Locale("en"),
        debugShowCheckedModeBanner: false,
        home: const HomePage(),
      ),
    );
  }
}

