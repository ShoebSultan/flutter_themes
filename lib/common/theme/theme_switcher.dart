import 'package:flutter/material.dart';
import 'package:flutter_themes/common/constants/container_width.dart';
import 'package:flutter_themes/common/theme/app_theme.dart';
import 'package:flutter_themes/common/theme/theme_provider.dart';
import 'package:provider/provider.dart';

class ThemeSwitcher extends StatelessWidget {
  const ThemeSwitcher({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final appTheme = AppTheme();
    return Consumer<ThemeProvider>(
      builder: (c, themeProvider, _) => SizedBox(
        height: (ContainerWidth.containerWidth - (17 * 2) - (10 * 2)) / 3,
        child: GridView.count(
          crossAxisSpacing: 10,
          physics: const NeverScrollableScrollPhysics(),
          crossAxisCount: AppTheme.appThemes.length,
          children: List.generate(AppTheme.appThemes.length, (index) {
            bool _isSelectedTheme = AppTheme.appThemes[index].mode ==
                themeProvider.selectedThemeMode;
            return GestureDetector(
              onTap: _isSelectedTheme
                  ? null
                  : () => themeProvider
                      .setSelectedThemeMode(AppTheme.appThemes[index].mode),
              child: AnimatedContainer(
                height: 100,
                duration: const Duration(milliseconds: 200),
                decoration: BoxDecoration(
                  color: _isSelectedTheme
                      ? Theme.of(context).primaryColor
                      : Colors.transparent,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    width: 2,
                    color: Theme.of(context).primaryColor,
                  ),
                ),
                child: Center(
                  child: Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 15, vertical: 7),
                    margin: const EdgeInsets.symmetric(
                      horizontal: 10,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Theme.of(context).cardColor.withOpacity(0.5),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Icon(AppTheme.appThemes[index].iconData),
                        Text(
                          AppTheme.appThemes[index].title.toString(),
                          style: Theme.of(context).textTheme.subtitle2,
                        )
                      ],
                    ),
                  ),
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}
