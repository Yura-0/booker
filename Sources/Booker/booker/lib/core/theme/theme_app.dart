import 'package:flutter/material.dart';

class ThemeApp {
  light() => 
      ThemeData(
          brightness: Brightness.light,
          primaryColor: Colors.greenAccent,
          appBarTheme: const AppBarTheme( color: Colors.greenAccent),
          floatingActionButtonTheme: const FloatingActionButtonThemeData(
              backgroundColor: Colors.greenAccent),
          useMaterial3: true);
  dark() => ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.green[800],
         appBarTheme: AppBarTheme( color: Colors.green[800]),
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: Colors.green,
        ),
        useMaterial3: true,
      );
}
