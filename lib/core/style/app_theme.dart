import 'package:docdoc/core/style/app_color.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    primaryColor: AppColor.primaryColor,
    scaffoldBackgroundColor: Colors.white,
    brightness: Brightness.light,
  );
}
