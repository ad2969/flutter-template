import 'package:flutter/material.dart';

class AppColors {
  static const Map<int, Color> _primaryColorSwatch = {
    50: Color.fromRGBO(43, 93, 245, .1),
    100: Color.fromRGBO(43, 93, 245, .2),
    200: Color.fromRGBO(43, 93, 245, .3),
    300: Color.fromRGBO(43, 93, 245, .4),
    400: Color.fromRGBO(43, 93, 245, .5),
    500: Color.fromRGBO(43, 93, 245, .6),
    600: Color.fromRGBO(43, 93, 245, .7),
    700: Color.fromRGBO(43, 93, 245, .8),
    800: Color.fromRGBO(43, 93, 245, .9),
    900: Color.fromRGBO(43, 93, 245, 1),
  };
  static const primary = MaterialColor(0xFF2B5Ef5, _primaryColorSwatch);

  static const Map<int, Color> _accentColorSwatch = {
    50: Color.fromRGBO(255, 215, 106, .1),
    100: Color.fromRGBO(255, 215, 106, .2),
    200: Color.fromRGBO(255, 215, 106, .3),
    300: Color.fromRGBO(255, 215, 106, .4),
    400: Color.fromRGBO(255, 215, 106, .5),
    500: Color.fromRGBO(255, 215, 106, .6),
    600: Color.fromRGBO(255, 215, 106, .7),
    700: Color.fromRGBO(255, 215, 106, .8),
    800: Color.fromRGBO(255, 215, 106, .9),
    900: Color.fromRGBO(255, 215, 106, 1),
  };
  static const accent = MaterialColor(0xFFFFD76A, _accentColorSwatch);

  static const black = Colors.black;
  static const light = Colors.grey;
  static const white = Colors.white;
}

class AppText {
  static const heading = TextStyle(fontSize: 18, fontWeight: FontWeight.w500);
  static const subheading =
      TextStyle(fontSize: 14, fontWeight: FontWeight.normal);
  static const title = TextStyle(fontSize: 16, fontWeight: FontWeight.w500);
  static const subtitle =
      TextStyle(fontSize: 14, fontWeight: FontWeight.normal);
  static const body = TextStyle(fontSize: 14, fontWeight: FontWeight.normal);
  static const bodySmall =
      TextStyle(fontSize: 12, fontWeight: FontWeight.normal);

  static const blackText = TextStyle(color: AppColors.black);
  static const whiteText = TextStyle(color: AppColors.black);
}
