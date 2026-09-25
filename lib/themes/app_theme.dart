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
  );
}
