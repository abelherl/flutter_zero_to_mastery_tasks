import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();

  static const _primaryColorLight = Colors.deepPurple;
  static final _tertiaryColorLight = Colors.grey.shade100;

  static const _primaryColorDark = Colors.purple;
  static final _tertiaryColorDark = Colors.grey.shade900;

  static final lightTheme = ThemeData(
      colorScheme: ColorScheme.fromSeed(
        seedColor: _primaryColorLight,
        brightness: Brightness.light,
        tertiary: _tertiaryColorLight,
      )
  );
  static final darkTheme = ThemeData(
      colorScheme: ColorScheme.fromSeed(
        seedColor: _primaryColorDark,
        brightness: Brightness.dark,
        tertiary: _tertiaryColorDark,
      )
  );
}