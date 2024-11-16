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
  static const primaryRed = Color(0xFFEE6464);
  static const lightAstro = Color(0xFFFFE8BE);
  static const errorColor = Colors.red;
  static const grey = Color(0xFFB3B3B3);
  static const iconGrey = Color(0xFF525252);
  static const primaryColorDark = Color(0xFFFF6666);
  static const green = Color(0xFF33FE91);
  static const textGreen = Color(0xFF00B664);
  static const black = Color(0xFF000000);
  static const lightGrey = Color(0xFF36363B);
  static const textGrey = Color(0xFFB6B6BA);
  static const fillWhite = Color(0xFFF8F7FE);
  static const scaffoldLight = Color(0xFFFFF6DE);
  static const scaffoldDark = Color(0xFF252529);
  static const gossip = Color(0xFFEE6464);
  static const astro = Color(0xFFFFC947);
  static const love = Color(0xFFAF45D4);
  static const blue = Color(0xFF0E9BC8);
  static const lightRed = Color(0xFFFFEDED);
  static const lightYellow = Color(0xFFFFF0DA);
  static const gold = Color(0xFFFFD700);
  static const primaryGold = Color(0xFFF9C564);
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
      fontSize: FontSize.xXXXL,
      fontWeight: Weight.bold,
      color: ApplicationColors.black);
  static const TextStyle h2 = TextStyle(
      fontSize: FontSize.xXXL,
      fontWeight: Weight.heavy,
      color: ApplicationColors.black);
  static const TextStyle h3 = TextStyle(
      fontSize: FontSize.M, fontWeight: Weight.heavy, color: Colors.white);
  static const TextStyle buttonText = TextStyle(
      fontSize: FontSize.L, fontWeight: Weight.heavy, color: Colors.white);
  static const TextStyle bodyText = TextStyle(
      fontSize: FontSize.M,
      fontWeight: Weight.normal,
      color: ApplicationColors.black);
  static TextStyle smallText = const TextStyle(
      fontSize: FontSize.S, fontWeight: Weight.normal, color: Colors.white);
}
