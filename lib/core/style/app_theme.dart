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
    colorScheme: const ColorScheme(
      brightness: Brightness.light,
      primary: AppColor.primary,
      onPrimary: Colors.white,
      secondary: Colors.orangeAccent,
      onSecondary: Colors.white,
      error: Colors.red,
      onError: Colors.white,
      background: Colors.white,
      onBackground: AppColor.black,
      surface: AppColor.black,
      onSurface: Colors.white,
    ),
  );
}
