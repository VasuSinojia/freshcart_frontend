import 'package:flutter/material.dart';
import 'package:freshcart_frontend/core/constants/ui_constants.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class AppThemes {
  static ThemeData get main {
    return ThemeData(
      useMaterial3: false,
      primarySwatch: Swatch().myGreen,
      primaryColor: ApplicationColors.primaryGreen,
      inputDecorationTheme: InputDecorationTheme(
        fillColor: Get.theme.primaryColor,
        focusColor: Get.theme.primaryColor,
      ),
      textTheme: TextTheme(
        displayLarge: GoogleFonts.firaSans(
            fontSize: 93, fontWeight: FontWeight.w300, letterSpacing: -1.5),
        displayMedium: GoogleFonts.firaSans(
            fontSize: 58, fontWeight: FontWeight.w300, letterSpacing: -0.5),
        displaySmall:
            GoogleFonts.firaSans(fontSize: 47, fontWeight: FontWeight.w400),
        headlineLarge: GoogleFonts.firaSans(
            fontSize: 33, fontWeight: FontWeight.w400, letterSpacing: 0),
        headlineMedium: GoogleFonts.firaSans(
            fontSize: 33, fontWeight: FontWeight.w400, letterSpacing: 0.25),
        headlineSmall:
            GoogleFonts.firaSans(fontSize: 23, fontWeight: FontWeight.w400),
        titleLarge: GoogleFonts.firaSans(
            fontSize: 19, fontWeight: FontWeight.w500, letterSpacing: 0.15),
        titleMedium: GoogleFonts.firaSans(
            fontSize: 16, fontWeight: FontWeight.w400, letterSpacing: 0.15),
        titleSmall: GoogleFonts.firaSans(
            fontSize: 14, fontWeight: FontWeight.w500, letterSpacing: 0.1),
        bodyLarge: GoogleFonts.firaSans(
          fontSize: 16,
          fontWeight: FontWeight.w400,
          letterSpacing: 0.5,
          color: Colors.white,
        ),
        bodyMedium: GoogleFonts.firaSans(
          fontSize: 14,
          fontWeight: FontWeight.w400,
          letterSpacing: 0.25,
          color: Colors.white,
        ),
        labelLarge: GoogleFonts.firaSans(
            fontSize: 14, fontWeight: FontWeight.w500, letterSpacing: 1.25),
        bodySmall: GoogleFonts.firaSans(
            fontSize: 12, fontWeight: FontWeight.w400, letterSpacing: 0.4),
        labelSmall: GoogleFonts.firaSans(
            fontSize: 10, fontWeight: FontWeight.w400, letterSpacing: 1.5),
      ),
    );
  }
}
