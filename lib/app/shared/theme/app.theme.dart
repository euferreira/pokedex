import 'package:flutter/material.dart';

import 'app.styles.dart';

class AppTheme {
  AppTheme._();

  static final lightTheme = ThemeData(
    fontFamily: "SF Pro Display",
    brightness: Brightness.light,
    backgroundColor: AppStyles.white1000,
    textTheme: const TextTheme(
      titleLarge: TextStyle(
        fontSize: 100,
        fontWeight: FontWeight.bold,
        fontFamily: "SF Pro Display",
      ),
      titleMedium: TextStyle(
        fontSize: 32,
        fontWeight: FontWeight.bold,
        fontFamily: "SF Pro Display",
      ),
      titleSmall: TextStyle(
        fontSize: 26,
        fontWeight: FontWeight.bold,
        fontFamily: "SF Pro Display",
      ),
      bodyLarge: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.bold,
        fontFamily: "SF Pro Display",
      ),
      labelLarge: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w400,
        fontFamily: "SF Pro Display",
      ),
      labelMedium: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.bold,
        fontFamily: "SF Pro Display",
      ),
      labelSmall: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w500,
        fontFamily: "SF Pro Display",
      ),
    ),
    appBarTheme: const AppBarTheme(
      color: AppStyles.white1000,
      elevation: 0,
      iconTheme: IconThemeData(
        color: AppStyles.backgroundWhite,
      ),
      titleTextStyle: TextStyle(
        color: AppStyles.black500,
        fontSize: 24,
        fontWeight: FontWeight.bold,
        fontFamily: "SF Pro Display",
      ),
    ),
    scaffoldBackgroundColor: AppStyles.white1000,
    inputDecorationTheme: InputDecorationTheme(
      fillColor: AppStyles.backgroundDefaultInput,
      filled: true,
      border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(
            style: BorderStyle.none,
          )),
      enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(
            style: BorderStyle.none,
          )),
      focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(
            style: BorderStyle.none,
          )),
      focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(
            style: BorderStyle.none,
          )),
    ),
  );

  static final darkTheme = ThemeData();
}
