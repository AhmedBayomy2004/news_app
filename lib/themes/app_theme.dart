import 'package:flutter/material.dart';

abstract class AppTheme {
  static ThemeData appTheme = ThemeData(
    scaffoldBackgroundColor: Color(0xff202020),
    appBarTheme: AppBarTheme(
      backgroundColor: Color(0xff1877F2),
      centerTitle: true,
      titleTextStyle: TextStyle(
        color: Colors.white,
        fontWeight: .bold,
        fontSize: 22,
      ),
    ),
    textTheme: TextTheme(
      bodyLarge: TextStyle(
        color: Colors.white,
        fontSize: 36,
        fontWeight: .w400,
      ),
      bodyMedium: TextStyle(
        color: Colors.white,
        fontSize: 16,
        fontWeight: .w400,
      ),
      bodySmall: TextStyle(
        color: Colors.white,
        fontSize: 12,
        fontWeight: .w300,
      ),
    ),
  );
}
