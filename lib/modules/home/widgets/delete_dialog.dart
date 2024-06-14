import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Future<void> showDeleteDialog({
  required BuildContext context,
  required String title,
  required String content,
  required Function onConfirm,
}) async {
  await showCupertinoDialog(
    barrierDismissible: true,
    context: context,
    builder: (BuildContext context) {
      return BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
        child: CupertinoAlertDialog(
          title: Text(
            title,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          content: Text(content),
          actions: [
            CupertinoButton(
              child: const Text("NO", style: TextStyle(color: Colors.black)),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            CupertinoButton(
              child: const Text("YES", style: TextStyle(color: Colors.red)),
              onPressed: () {
                Navigator.of(context).pop("remove");
              },
            ),
          ],
        ),
      );
    },
  ).then((value) {
    if (value == "remove") {
      onConfirm();
    }
  });
}
