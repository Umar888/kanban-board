import 'package:flutter/material.dart';

import '../../constant/color.dart';

extension InputDecorationExtension on InputDecoration {
  InputDecoration applyInputDecoration({
    bool isDropDown = false,
    Widget suffix = const SizedBox.shrink(),
    required double borderRadius,
    required String? errorText,
    required BuildContext context,
  }) {
    return InputDecoration(
      filled: true,
      fillColor: Colors.white10,
      errorStyle: const TextStyle(fontSize: 13, height: 1, color: Colors.red),
      errorMaxLines: 1,
      helperStyle: const TextStyle(height: 0.5),
      constraints: const BoxConstraints(),
      isCollapsed: true,
      isDense: true,
      suffixIconConstraints: const BoxConstraints(maxHeight: 38),
      suffixIconColor: AppColors.primaryColor,
      suffixIcon: suffix,
      prefix: isDropDown?
      const SizedBox.shrink():
      const Padding(
          padding: EdgeInsets.only(left: 15.0)
      ),
      contentPadding: EdgeInsets.symmetric(horizontal: isDropDown?0:0, vertical: isDropDown?0:10),
      border: isDropDown ? InputBorder.none : OutlineInputBorder(
        borderSide: const BorderSide(color: Colors.black87, width: 1),
        borderRadius: BorderRadius.circular(borderRadius),
      ),
      focusedBorder: isDropDown ? InputBorder.none : OutlineInputBorder(
        borderSide: const BorderSide(color: AppColors.primaryColor, width: 1),
        borderRadius: BorderRadius.circular(borderRadius),
      ),
      enabledBorder: isDropDown ? InputBorder.none : OutlineInputBorder(
        borderSide: const BorderSide(color: Colors.black87, width: 1),
        borderRadius: BorderRadius.circular(borderRadius),
      ),
      errorBorder: isDropDown ? InputBorder.none : OutlineInputBorder(
        borderSide: const BorderSide(color: Colors.red, width: 1),
        borderRadius: BorderRadius.circular(borderRadius),
      ),
      focusedErrorBorder: isDropDown ? InputBorder.none : OutlineInputBorder(
        borderSide: const BorderSide(color: Colors.red, width: 1),
        borderRadius: BorderRadius.circular(borderRadius),
      ),
    );
  }
}

