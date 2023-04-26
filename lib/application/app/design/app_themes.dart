import 'package:flutter/material.dart';
import 'package:cuenty_app/application/app/design/index.dart'
    show AppSizes, AppColors;

class AppThemes {
  AppThemes._();
  static ThemeData defaultTheme = ThemeData(
    fontFamily: 'RobotoMono',
    primaryColor: AppColors.brandPrimaryColor,
    textTheme: const TextTheme(
      displayLarge: TextStyle(
          fontSize: AppSizes.fontSizeXXL,
          fontWeight: FontWeight.bold,
          color: AppColors.brandLightColor),
      displayMedium: TextStyle(
          fontSize: AppSizes.fontSizeXL,
          fontWeight: FontWeight.bold,
          color: AppColors.brandLightColor),
      displaySmall: TextStyle(
          fontSize: AppSizes.fontSizeL,
          fontWeight: FontWeight.bold,
          color: AppColors.brandLightColor),
      headlineLarge: TextStyle(
          fontSize: AppSizes.fontSizeXL, color: AppColors.brandPrimaryColor),
      bodyLarge: TextStyle(fontSize: AppSizes.fontSizeM),
      bodyMedium: TextStyle(fontSize: AppSizes.fontSizeS),
      bodySmall: TextStyle(fontSize: AppSizes.fontSizeXS),
    ),
  );
}
