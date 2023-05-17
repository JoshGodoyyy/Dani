import 'package:dani/app/core/ui/styles/colors_app.dart';
import 'package:flutter/material.dart';

class ThemeConfig {
  ThemeConfig._();

  static final theme = ThemeData(
    primaryColor: ColorsApp.instance.primaryColor,
    scaffoldBackgroundColor: ColorsApp.instance.backgroundColor,
    appBarTheme: AppBarTheme(
      color: ColorsApp.instance.backgroundColor,
      iconTheme: const IconThemeData(color: Colors.white),
      centerTitle: true,
    ),
    useMaterial3: true,
  );
}
