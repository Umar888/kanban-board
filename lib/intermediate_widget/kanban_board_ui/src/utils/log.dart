import "package:flutter/material.dart";

class Log {
  static const enableLog = false;

  static void trace(String? message) {
    if (enableLog) {
      debugPrint(
        "${_now()} Kanban Board: 🔎 TRACE - $message",
      );
    }
  }

  static void debug(String? message) {
    if (enableLog) {
      debugPrint(
        "${_now()} Kanban Board: 🐛 DEBUG - $message",
      );
    }
  }

  static void info(String? message) {
    if (enableLog) {
      debugPrint(
        "${_now()} Kanban Board: ℹ️ INFO - $message",
      );
    }
  }

  static void warn(String? message) {
    if (enableLog) {
      debugPrint(
        "${_now()} Kanban Board: ⚠️ WARN - $message",
      );
    }
  }

  static void error(String? message) {
    debugPrint(
      "${_now()} Kanban Board: ❌ ERROR - $message",
    );
  }

  static String _now() {
    final dateTime = DateTime.now();
    return "${dateTime.year}-${_twoDigits(dateTime.month)}-${_twoDigits(dateTime.day)} "
        "${_twoDigits(dateTime.hour)}:${_twoDigits(dateTime.minute)}:${_twoDigits(dateTime.second)}";
  }

  static String _twoDigits(int n) {
    if (n >= 10) {
      return "$n";
    }
    return "0$n";
  }
}
