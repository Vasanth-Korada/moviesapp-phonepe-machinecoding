
import 'package:flutter/material.dart';

class Palette {
  static MaterialColor kToDark = const MaterialColor(
    0xff97e9e9,
    // 0% comes in here, this will be color picked if no shade is selected when defining a Color property which doesn’t require a swatch.
    <int, Color>{
      50: Color(0xff88d2d2), //10%
      100: Color(0xff79baba), //20%
      200: Color(0xff6aa3a3), //30%
      300: Color(0xff5b8c8c), //40%
      400: Color(0xff4c7575), //50%
      500: Color(0xff3c5d5d), //60%
      600: Color(0xff2d4646), //70%
      700: Color(0xff1e2f2f), //80%
      800: Color(0xff0f1717), //90%
      900: Color(0xff000000), //100%
    },
  );
}
