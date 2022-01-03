import 'package:flutter/material.dart';

class AppTheme {
  ThemeMode mode;
  String title;
  IconData iconData;
  DecorationImage image;
  AppTheme({
    required this.mode,
    required this.title,
    required this.iconData,
    required this.image,
  });

  static List<AppTheme> appThemes = [
    AppTheme(
      mode: ThemeMode.light,
      title: 'Light',
      iconData: Icons.brightness_5_rounded,
      image: const DecorationImage(
        fit: BoxFit.cover,
        image: AssetImage("assets/light.jpg"),
      ),
    ),
    AppTheme(
      mode: ThemeMode.dark,
      title: 'Dark',
      iconData: Icons.brightness_2_rounded,
      image: const DecorationImage(
        fit: BoxFit.cover,
        image: AssetImage("assets/dark.jpg"),
      ),
    ),
    AppTheme(
      mode: ThemeMode.system,
      title: 'Auto',
      iconData: Icons.brightness_4_rounded,
      image: const DecorationImage(
        fit: BoxFit.cover,
        image: AssetImage("assets/auto.jpg"),
      ),
    ),
  ];
}
