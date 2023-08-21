import 'package:flutter/material.dart';

class MyTheme {
  static Color lightprimary = const Color(0xffB7935F);
  static Color darkprimary = const Color(0xFF141A2E);

  static ThemeMode thememode = ThemeMode.dark;

  static ThemeData lightTheme = ThemeData(
    primaryColor: lightprimary,
    canvasColor: const Color(0xFFFACC10),
    colorScheme: ColorScheme.fromSeed(seedColor: Colors.transparent),
    useMaterial3: true,
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.transparent,
      elevation: 0,
      centerTitle: true,
      // titleTextStyle: Theme.of(context).textTheme.titleLarge,
    ),
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
        unselectedIconTheme: IconThemeData(color: Colors.white, size: 26)),
    textTheme: const TextTheme(
        titleLarge: TextStyle(
          fontSize: 30.0,
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
        titleMedium: TextStyle(
            fontSize: 25, fontWeight: FontWeight.bold, color: Colors.black),
        bodySmall: TextStyle(
          fontSize: 20,
          color: Colors.black,
        ),
        bodyLarge: TextStyle(
            fontSize: 25, fontWeight: FontWeight.bold, color: Colors.red),
        bodyMedium: TextStyle(
            fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black)),
  );

  static ThemeData darkTheme = ThemeData(
      primaryColor: darkprimary,
      canvasColor: const Color(0xFFFACC10),
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: const AppBarTheme(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          centerTitle: true,
          titleTextStyle: TextStyle(
            color: Colors.white,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
          iconTheme: IconThemeData(color: Colors.white)),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: Color(0xFF141A2E),
          type: BottomNavigationBarType.fixed,
          showUnselectedLabels: false,
          selectedIconTheme: IconThemeData(color: Color(0xFFFACC10), size: 34),
          selectedLabelStyle: TextStyle(color: Color(0xFFFACC10), fontSize: 20),
          selectedItemColor: Color(0xFFFACC10),
          unselectedItemColor: Colors.white,
          unselectedIconTheme: IconThemeData(
            color: Colors.white,
            size: 26,
          ),
          unselectedLabelStyle: TextStyle(
            color: Colors.white,
            fontSize: 16,
          )),
      textTheme: const TextTheme(
          titleLarge: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
          bodyLarge: TextStyle(
              fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),
          bodyMedium: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white)));
}
