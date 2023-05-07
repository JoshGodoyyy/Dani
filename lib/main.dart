import 'package:dani/app/core/ui/theme/theme_config.dart';
import 'package:dani/pages/home_page/home_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const HomePage(),
      theme: ThemeConfig.theme,
    );
  }
}
