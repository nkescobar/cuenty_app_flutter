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
      labelLarge: TextStyle(
          fontSize: 30.0,
          fontWeight: FontWeight.bold,
          color: AppColors.brandPrimaryColor),
      labelMedium: TextStyle(
          fontSize: 20.0,
          fontWeight: FontWeight.w400,
          color: AppColors.brandLigthDarkColor),
      labelSmall: TextStyle(
          fontSize: 16.0,
          fontWeight: FontWeight.bold,
          color: AppColors.brandDarkColor),
      bodyLarge: TextStyle(fontSize: AppSizes.fontSizeM),
      bodyMedium: TextStyle(fontSize: AppSizes.fontSizeS),
      bodySmall: TextStyle(fontSize: AppSizes.fontSizeXS),
    ),
  );
}
