import 'package:docdoc/core/style/app_color.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    primaryColor: AppColor.primary,
    scaffoldBackgroundColor: Colors.white,
    brightness: Brightness.light,
    useMaterial3: true,
    splashColor: AppColor.primary,
    primaryColorLight: AppColor.primary,
  );
}
