import 'package:dani/app/core/ui/styles/colors_app.dart';
import 'package:flutter/material.dart';

class ThemeConfig {
  ThemeConfig._();

  static final theme = ThemeData(
    primaryColor: ColorsApp.instance.primaryColor,
    useMaterial3: true,
  );
}
