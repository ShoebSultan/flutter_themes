import 'package:flutter/material.dart';
import 'package:flutter_themes/common/constants/container_width.dart';
import 'package:flutter_themes/common/theme/theme_switcher.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Theme And Primary Color Switcher'),
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 17),
          width: ContainerWidth.containerWidth,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Text('Theme'),
              ),
              // ignore: prefer_const_constructors
              ThemeSwitcher(),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Text('Primary Color'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
