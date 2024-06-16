import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

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
              child: Text(AppLocalizations.of(context)!.no, style: TextStyle(color: Colors.black)),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            CupertinoButton(
              child: Text(AppLocalizations.of(context)!.yes, style: TextStyle(color: Colors.red)),
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
