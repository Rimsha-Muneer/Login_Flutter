import 'package:auth/src/utils/theme/widgets_theme/text_theme.dart';
import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();
  static ThemeData LightTheme = ThemeData(
      brightness: Brightness.light, textTheme: MyTextTheme.LightTextTheme);
  static ThemeData DarkTheme = ThemeData(
      brightness: Brightness.dark, textTheme: MyTextTheme.DarkTextTheme);
}
