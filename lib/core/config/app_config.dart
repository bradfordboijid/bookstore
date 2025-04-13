import 'package:bookstore/core/values/app_colors.dart';
import 'package:flutter/material.dart' hide CarouselController;

class AppConfig {
  TextTheme? textTheme;

  TextTheme getTextTheme() {
    return TextTheme(
      displayLarge: TextStyle(
        fontSize: 60,
        height: 1.21,
        fontWeight: FontWeight.w700,
        color: AppColors().inkColor,
      ),
      displayMedium: TextStyle(
        fontSize: 26,
        height: 1.21,
        fontWeight: FontWeight.w700,
        color: AppColors().inkColor,
      ),
      titleLarge: TextStyle(
        fontSize: 24,
        height: 1.2,
        color: AppColors().inkColor,
        fontWeight: FontWeight.w900,
      ),
      titleMedium: TextStyle(
        fontSize: 20,
        height: 1.2,
        color: AppColors().inkColor,
        fontWeight: FontWeight.w700,
      ),
      titleSmall: TextStyle(
        fontSize: 18,
        height: 1.2,
        color: AppColors().inkColor,
        fontWeight: FontWeight.w700,
      ),
      labelMedium: TextStyle(
        fontSize: 18,
        height: 1.2,
        color: AppColors().inkColor,
        fontWeight: FontWeight.w400,
      ),
      bodyLarge: TextStyle(
        fontSize: 16,
        height: 1.2,
        color: AppColors().inkColor,
        fontWeight: FontWeight.w700,
      ),
      bodyMedium: TextStyle(
        fontSize: 16,
        height: 1.2,
        color: AppColors().inkColor,
        fontWeight: FontWeight.w400,
      ),
      bodySmall: TextStyle(
        fontSize: 14,
        height: 1.2,
        color: AppColors().inkColor,
        fontWeight: FontWeight.w700,
      ),
      labelSmall: TextStyle(
        fontSize: 14,
        height: 1.2,
        color: AppColors().inkColor,
        fontWeight: FontWeight.w400,
      ),
    );
  }
}
