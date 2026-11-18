import 'package:facebook_task/theme/app_color.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData themeData = ThemeData(
    textTheme: TextTheme(
      titleLarge: TextStyle(
        fontWeight: FontWeight.bold,
        color: AppColor.black,
        fontSize: 24
      ),
      titleMedium: TextStyle(
          fontWeight: FontWeight.bold,
          color: AppColor.black,
          fontSize: 16
      ),
      bodyLarge: TextStyle(
          fontWeight:FontWeight.w400,
          color: AppColor.gray,
          fontSize: 16
      )
    ),
  );
}
