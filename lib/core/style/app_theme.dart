import 'package:flutter/material.dart';

class Apptheme {
  static ThemeData lightTheme = ThemeData(
      primaryColor: const Color(0xffB7935F),
      colorScheme: ColorScheme.fromSeed(seedColor: Colors.transparent),
      useMaterial3: true,
      appBarTheme: const AppBarTheme(
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          titleTextStyle: TextStyle(
            color: Colors.black,
            fontSize: 28,
            fontWeight: FontWeight.bold,
          )),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: Color(0xffB7935F),
          type: BottomNavigationBarType.fixed,
          selectedIconTheme: IconThemeData(
            color: Colors.black,
            size: 30,
          ),
          selectedItemColor: Colors.black,
          selectedLabelStyle: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
          showSelectedLabels: true,
          showUnselectedLabels: false,
          unselectedIconTheme: IconThemeData(color: Colors.white, size: 26)));
}
