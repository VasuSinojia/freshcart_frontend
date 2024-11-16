import 'package:flutter/material.dart';
import 'package:freshcart_frontend/core/constants/ui_constants.dart';

class AppThemes {
  static ThemeData get main {
    return ThemeData(
      useMaterial3: false,
      primarySwatch: Colors.amber,
      scaffoldBackgroundColor: Colors.black,
      fontFamily: 'Poppins',
      primaryColor: ApplicationColors.primaryGreen,
      textTheme: const TextTheme(
        displayLarge: TextStyle(
            fontSize: 93, fontWeight: FontWeight.w300, letterSpacing: -1.5),
        displayMedium: TextStyle(
            fontSize: 58, fontWeight: FontWeight.w300, letterSpacing: -0.5),
        displaySmall: TextStyle(fontSize: 47, fontWeight: FontWeight.w400),
        headlineLarge: TextStyle(
            fontSize: 33, fontWeight: FontWeight.w400, letterSpacing: 0),
        headlineMedium: TextStyle(
            fontSize: 33, fontWeight: FontWeight.w400, letterSpacing: 0.25),
        headlineSmall: TextStyle(fontSize: 23, fontWeight: FontWeight.w400),
        titleLarge: TextStyle(
            fontSize: 19, fontWeight: FontWeight.w500, letterSpacing: 0.15),
        titleMedium: TextStyle(
            fontSize: 16, fontWeight: FontWeight.w400, letterSpacing: 0.15),
        titleSmall: TextStyle(
            fontSize: 14, fontWeight: FontWeight.w500, letterSpacing: 0.1),
        bodyLarge: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w400,
          letterSpacing: 0.5,
          color: Colors.white,
        ),
        bodyMedium: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w400,
          letterSpacing: 0.25,
          color: Colors.white,
        ),
        labelLarge: TextStyle(
            fontSize: 14, fontWeight: FontWeight.w500, letterSpacing: 1.25),
        bodySmall: TextStyle(
            fontSize: 12, fontWeight: FontWeight.w400, letterSpacing: 0.4),
        labelSmall: TextStyle(
            fontSize: 10, fontWeight: FontWeight.w400, letterSpacing: 1.5),
      ),
    );
  }
}
