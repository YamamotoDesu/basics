import 'package:flutter/material.dart';

class AppThem {
  AppThem._();

  static const _primaryColorLight = Colors.lightBlueAccent;

  static const _primaryColorDark = Colors.lightGreenAccent;

  static final ThemeData lightTheme = ThemeData(
      useMaterial3: true,
      colorScheme: ColorScheme.fromSeed(
          seedColor: _primaryColorLight, brightness: Brightness.light));

  static final ThemeData dartTheme = ThemeData(
      useMaterial3: true,
      colorScheme: ColorScheme.fromSeed(seedColor: _primaryColorDark));
}
