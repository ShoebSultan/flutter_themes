import 'package:flutter/material.dart';
import 'package:flutter_themes/common/theme/app_colors.dart';
import 'package:flutter_themes/common/theme/app_theme.dart';

class ThemeProvider with ChangeNotifier {
  // select theme
  ThemeMode selectedThemeMode = AppTheme.appThemes[0].mode;
  setSelectedThemeMode(ThemeMode _themeMode) {
    selectedThemeMode = _themeMode;
    notifyListeners();
  }

  // select primary color of particular theme

  Color selectedPrimaryColor = AppColors.primaryColors[0];
  setSelectedPrimaryColor(Color _color) {
    selectedPrimaryColor = _color;
    notifyListeners();
  }
}
