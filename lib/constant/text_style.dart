import 'package:flutter/material.dart';

mixin DisagnTool {
  static TextStyle textDisagnSetting({required double fontSize, Color? renk}) {
    return TextStyle(
      fontSize: fontSize,
      color: renk ?? Colors.black,
    );
  }
}
