import 'package:flutter/material.dart';

class UIConstants {
  static const backgroundColor = Color(0xFFFFFFFF);
  static const cardColor = Color(0xFF1F1F1F);
  static const inputColor = Color(0xFF2C2C2C);
  static const strokeOutline = Color(0xFFD9D9D9);

  static LinearGradient yellowGradient({bool fromTopToBottom = false}) {
    return LinearGradient(
      begin: fromTopToBottom ? Alignment.topCenter : Alignment.centerLeft,
      end: fromTopToBottom ? Alignment.bottomCenter : Alignment.centerRight,
      colors: const [
        Color(0xFFF9C564),
        Color(0xFFDFBA74),
        Color(0xFFFCE7C3),
        Color(0xFFDDB262),
        Color(0xFFBC9855),
      ],
    );
  }
}

class ApplicationColors {
  static const primaryGreen = Color(0xFF53B175);
}

class Swatch {
  MaterialColor myGreen = MaterialColor(0xFF53B175, {
    50: const Color(0xFF53B175).withOpacity(0.005),
    100: const Color(0xFF53B175).withOpacity(0.1),
    200: const Color(0xFF53B175).withOpacity(0.2),
    300: const Color(0xFF53B175).withOpacity(0.3),
    400: const Color(0xFF53B175).withOpacity(0.4),
    500: const Color(0xFF53B175).withOpacity(0.5),
    600: const Color(0xFF53B175).withOpacity(0.6),
    700: const Color(0xFF53B175).withOpacity(0.7),
    800: const Color(0xFF53B175).withOpacity(0.8),
    900: const Color(0xFF53B175).withOpacity(0.9)
  });
}

class FontSize {
  static const double xS = 9.0;
  static const double S = 10.0;
  static const double M = 12.0;
  static const double L = 14.0;
  static const double xL = 16.0;
  static const double xXL = 18.0;
  static const double xXXL = 20.0;
  static const double xXXXL = 28.0;
}

class Weight {
  static const FontWeight light = FontWeight.w200;
  static const FontWeight normal = FontWeight.w400;
  static const FontWeight heavy = FontWeight.w600;
  static const FontWeight bold = FontWeight.w800;
}

class TextStyles {
  static const TextStyle h1 = TextStyle(
      fontSize: FontSize.xXXXL, fontWeight: Weight.bold, color: Colors.black);
  static const TextStyle h2 = TextStyle(
      fontSize: FontSize.xXXL, fontWeight: Weight.heavy, color: Colors.black);
  static const TextStyle h3 = TextStyle(
      fontSize: FontSize.M, fontWeight: Weight.heavy, color: Colors.white);
  static const TextStyle buttonText = TextStyle(
      fontSize: FontSize.L, fontWeight: Weight.heavy, color: Colors.white);
  static const TextStyle bodyText = TextStyle(
      fontSize: FontSize.M, fontWeight: Weight.normal, color: Colors.black);
  static TextStyle smallText = const TextStyle(
      fontSize: FontSize.S, fontWeight: Weight.normal, color: Colors.white);
}
