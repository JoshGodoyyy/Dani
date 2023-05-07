import 'package:dani/app/core/ui/styles/colors_app.dart';
import 'package:dani/app/core/ui/styles/text_styles.dart';
import 'package:flutter/material.dart';

class MyAppBar extends AppBar {
  MyAppBar({
    super.key,
    double elevation = 0,
  }) : super(
          elevation: elevation,
          backgroundColor: ColorsApp.instance.startColor,
          title: Text(
            'Dani',
            style: TextStyles.instance.textRegular,
          ),
          centerTitle: true,
        );
}
