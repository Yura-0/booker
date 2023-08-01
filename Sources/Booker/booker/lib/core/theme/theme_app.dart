import 'package:flutter/material.dart';

import 'package:booker/core/fonts.dart';

class ThemeApp {
  light() => ThemeData(
      brightness: Brightness.light,
      primaryColor: Colors.greenAccent,
      appBarTheme: const AppBarTheme(color: Colors.greenAccent),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: Colors.greenAccent),
      textTheme: const TextTheme(
        bodyText1: TextStyle(
          color: Colors.black,
          fontSize: 20,
          fontFamily: Fonts.mainFontFamily,
        ),
      ),
      useMaterial3: true);
  dark() => ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.green[800],
        appBarTheme: AppBarTheme(color: Colors.green[800]),
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: Colors.green,
        ),
        textTheme: const TextTheme(
          bodyText1: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontFamily: Fonts.mainFontFamily,
          ),
        ),
        useMaterial3: true,
      );
}
