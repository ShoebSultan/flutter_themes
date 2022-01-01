import 'package:flutter/material.dart';
import 'package:flutter_themes/common/theme/app_theme.dart';

class ThemeProvider with ChangeNotifier {
  ThemeMode selectedThemeMode = AppTheme.appThemes[0].mode;
  setSelectedThemeMode(ThemeMode _themeMode) {
    selectedThemeMode = _themeMode;
    notifyListeners();
  }
}
