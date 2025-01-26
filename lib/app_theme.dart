import 'package:flutter/material.dart';

class AppTheme {
  static Color primary = Color(0xff5669FF);
  static Color backGround = Color(0xffF0F0F0);
  static Color white = Color(0xffffffff);
  static Color black = Color(0xff1C1C1C);
  static Color grey = Color(0xff7B7B7B);
  static Color red = Color(0xffFF5659);

  static ThemeData lightTheme = ThemeData(
    primaryColor: primary,
    scaffoldBackgroundColor: backGround,
    appBarTheme: AppBarTheme(
      backgroundColor: backGround,
      foregroundColor: primary,
      centerTitle: true,
      titleTextStyle: TextStyle(
        color: primary,
        fontSize: 22,
        fontWeight: FontWeight.w400,
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      hintStyle: TextStyle(
        fontSize: 16,
        color: grey,
      ),
      border: OutlineInputBorder(
        borderSide: BorderSide(width: 1, color: AppTheme.grey),
        borderRadius: BorderRadius.circular(16),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(width: 1, color: AppTheme.grey),
        borderRadius: BorderRadius.circular(16),
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(width: 1, color: AppTheme.grey),
        borderRadius: BorderRadius.circular(16),
      ),
      disabledBorder: OutlineInputBorder(
        borderSide: BorderSide(width: 1, color: AppTheme.grey),
        borderRadius: BorderRadius.circular(16),
      ),
      errorBorder: OutlineInputBorder(
        borderSide: BorderSide(width: 1, color: AppTheme.red),
        borderRadius: BorderRadius.circular(16),
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: primary,
        foregroundColor: white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: primary,
        textStyle: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w400,
          color: black,
          decoration: TextDecoration.underline,
          fontStyle: FontStyle.italic,
        ),
      ),
    ),
    textTheme: TextTheme(
      labelSmall:
          TextStyle(fontSize: 10, fontWeight: FontWeight.w400, color: black),
      labelLarge:
          TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: black),
      bodySmall:
          TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: black),
      bodyMedium:
          TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: black),
      bodyLarge:
          TextStyle(fontSize: 20, fontWeight: FontWeight.w400, color: black),
      titleSmall:
          TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: white),
      titleLarge:
          TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: white),
    ),
  );
  static ThemeData darkTheme = ThemeData();
}
