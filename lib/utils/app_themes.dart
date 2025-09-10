import 'package:flutter/material.dart';

class AppThemes {
  // ligth theme
  static final light = ThemeData(
    primaryColor: const Color(0xffff5722),
    scaffoldBackgroundColor: Colors.white,
    brightness: Brightness.light,
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.white,
      elevation: 0,
      iconTheme: IconThemeData(color: Colors.black),
    ),
    colorScheme: ColorScheme.fromSeed(
      seedColor: const Color(0xffff5722),
      primary: const Color(0xffff5722),
      brightness: Brightness.light,
      surface: Colors.white,
    ),
    cardColor: Colors.white,
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: Colors.white,
      selectedItemColor: Color(0xffff5722),
      unselectedItemColor: Colors.grey,
    ),
  );

  // dark theme
  static final dark = ThemeData(
    primaryColor: const Color(0xffff5722),
    scaffoldBackgroundColor: const Color(0xff121212),
    brightness: Brightness.dark,
    appBarTheme: const AppBarTheme(
      backgroundColor: Color(0xff121212),
      elevation: 0,
      iconTheme: IconThemeData(color: Colors.white),
    ),
    colorScheme: ColorScheme.fromSeed(
      seedColor: const Color(0xffff5722),
      primary: const Color(0xffff5722),
      brightness: Brightness.dark,
      surface: Color(0xff121212),
    ),
    cardColor: const Color(0xff1e1e1e),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: Color(0xff1e1e1e),
      selectedItemColor: Color(0xffff5722),
      unselectedItemColor: Colors.grey,
    ),
  );
}
