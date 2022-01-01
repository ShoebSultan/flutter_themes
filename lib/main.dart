import 'package:flutter/material.dart';
import 'package:flutter_themes/common/theme/theme_provider.dart';
import 'package:flutter_themes/features/home/view/home_page.dart';
import 'package:provider/provider.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => ThemeProvider(),
        ),
      ],
      child: Consumer<ThemeProvider>(
        child: const HomePage(),
        builder: (c, themeProvider, child) {
          return MaterialApp(
            /*  theme: ThemeData(
              brightness: Brightness.light,
            ), */
            debugShowCheckedModeBanner: false,
            themeMode: themeProvider.selectedThemeMode,
            home: child,
          );
        },
      ),
    );
  }
}
