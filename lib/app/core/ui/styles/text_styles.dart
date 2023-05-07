import 'package:flutter/material.dart';

class TextStyles {
  static TextStyles? _instance;

  TextStyles._();

  static TextStyles get instance {
    _instance ??= TextStyles._();
    return _instance!;
  }

  String get font => 'OpenSans';

  TextStyle get textRegular => TextStyle(
        fontFamily: font,
        color: Colors.white,
      );

  TextStyle get textBold => TextStyle(
        fontFamily: font,
        color: Colors.white,
        fontWeight: FontWeight.bold,
      );
}
