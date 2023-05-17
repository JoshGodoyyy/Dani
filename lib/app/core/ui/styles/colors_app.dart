import 'package:flutter/material.dart';

class ColorsApp {
  static ColorsApp? _instance;

  ColorsApp._();

  static ColorsApp get instance {
    _instance ??= ColorsApp._();
    return _instance!;
  }

  Color get startColor => const Color(0xff031b4e);
  Color get endColor => const Color(0xff01091b);
  Color get backgroundColor => const Color(0xff1a1a1a);
  Color get primaryColor => const Color(0xff2a2e31);
}
