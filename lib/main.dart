import 'dart:async';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:kanban_board/services/notifications.dart';
import 'app.dart';
import 'package:timezone/data/latest.dart' as tz;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  NotificationPlugin().init();
  tz.initializeTimeZones();

  runApp(App(
      connectivity: Connectivity(),
    ));
}
