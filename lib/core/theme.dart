import 'package:axio_driver/core/app_colors.dart';
import 'package:flutter/material.dart';

final themeData = ThemeData(
  primaryColor: AppColors.primaryBlue,
  scaffoldBackgroundColor: AppColors.backgroundColor,
  visualDensity: VisualDensity.adaptivePlatformDensity,
  appBarTheme: const AppBarTheme(elevation: 0.0),
  fontFamily: 'Poppins',
  textTheme: const TextTheme(
    displayLarge: TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.bold,
    ),
    displayMedium: TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.bold,
    ),
    displaySmall: TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.bold,
    ),
    headlineMedium: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.bold,
    ),
    headlineSmall: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.bold,
    ),
    titleLarge: TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.bold,
    ),
    bodyLarge: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.normal,
    ),
    bodyMedium: TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.normal,
    ),
  ),
);
