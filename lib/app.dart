
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:kanban_board/modules/home/screens/home_page.dart';
import 'package:kanban_board/services/shared_preference/shared_preference.dart';
import 'package:overlay_support/overlay_support.dart';
import 'package:provider/provider.dart';
import 'constant/string_constants.dart';
import 'helpers/internet/internet_cubit.dart';
import 'l10n/l10n.dart';
import 'modules/home/bloc/home_bloc.dart';
import 'services/providers/locale_provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

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
      child: MultiProvider(
          providers: [
            ChangeNotifierProvider<LocaleProvider>(create: (_) => LocaleProvider()),
          ],
          builder: (context,child) {
          return const AppView();
        }
      )
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
    if (localTime > 0) {
      homeBloc.add(HomeEvent.addCurrentTimeStampToAllTasksLocally(savedTime: localTime));
      await sharedPreference.saveInt("localTime", 0);
    }
    var langId = await sharedPreference.readString(languageId);
    if(langId == "de"){
      if(mounted){
        final provider = Provider.of<LocaleProvider>(context, listen:false);
        provider.setLocale(const Locale('de', 'DE'));
      }
    }
    else if(langId == "fr"){
      if(mounted){
        final provider = Provider.of<LocaleProvider>(context, listen:false);
        provider.setLocale(const Locale('fr', 'FR'));
      }
    }
    else if(langId == "it"){
      if(context.mounted){
        final provider = Provider.of<LocaleProvider>(context, listen:false);
        provider.setLocale(const Locale('it', 'IT'));
      }
    }
    else if(langId == "es"){
      if(mounted){
        final provider = Provider.of<LocaleProvider>(context, listen:false);
        provider.setLocale(const Locale('es', 'ES'));
      }
    }
    else{
      if(mounted){
        final provider = Provider.of<LocaleProvider>(context, listen:false);
        provider.setLocale(const Locale('en', 'US'));
      }
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

          final provider = Provider.of<LocaleProvider>(context);

          return OverlaySupport.global(
            child: MaterialApp(
              navigatorKey: navigatorKey,
              scaffoldMessengerKey: scaffoldMessengerKey,
              locale: provider.getLocale,
              supportedLocales: L10n.all,
              localizationsDelegates:  const [
                AppLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
                GlobalMaterialLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate
              ],
              debugShowCheckedModeBanner: false,
              home: const HomePage()
            ),
          );

  }
}

