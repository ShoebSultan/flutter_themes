import 'package:flutter/material.dart';
import 'package:flutter_themes/common/constants/container_width.dart';
import 'package:flutter_themes/common/theme/app_colors.dart';
import 'package:flutter_themes/common/theme/theme_provider.dart';
import 'package:provider/provider.dart';

class PrimaryColorSwitcher extends StatelessWidget {
  const PrimaryColorSwitcher({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeProvider>(
      builder: (c, themeProvider, _) => SizedBox(
        height: (ContainerWidth.containerWidth - (17 * 2) - (10 * 2)) / 3,
        child: GridView.count(
          crossAxisCount: AppColors.primaryColors.length,
          physics: const NeverScrollableScrollPhysics(),
          crossAxisSpacing: 10,
          children: List.generate(AppColors.primaryColors.length, (index) {
            bool _isSelected = AppColors.primaryColors[index] ==
                themeProvider.selectedPrimaryColor;
            return GestureDetector(
              onTap: _isSelected
                  ? null
                  : () => themeProvider
                      .setSelectedPrimaryColor(AppColors.primaryColors[index]),
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                  color: AppColors.primaryColors[index],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: AnimatedOpacity(
                  opacity: _isSelected ? 1 : 0,
                  duration: const Duration(milliseconds: 200),
                  child: Center(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Container(
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(3),
                          color: Theme.of(context).cardColor.withOpacity(0.5),
                        ),
                        child: const Icon(
                          Icons.check,
                          size: 20,
                        ),
                      ),
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
