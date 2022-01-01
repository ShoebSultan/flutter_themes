import 'package:flutter/material.dart';

class AppTheme {
  ThemeMode mode;
  String title;
  IconData iconData;
  AppTheme({
    required this.mode,
    required this.title,
    required this.iconData,
  });

  static List<AppTheme> appThemes = [
    AppTheme(
        mode: ThemeMode.light,
        title: 'Light',
        iconData: Icons.brightness_5_rounded),
    AppTheme(
        mode: ThemeMode.dark,
        title: 'Dark',
        iconData: Icons.brightness_2_rounded),
    AppTheme(
        mode: ThemeMode.system,
        title: 'Auto',
        iconData: Icons.brightness_4_rounded),
  ];
}
