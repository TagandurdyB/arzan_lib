// ignore_for_file: overridden_fields

import 'package:arzan/Model/shadows_model.dart';

import 'colors_model.dart';
import 'constants_model.dart';
import 'package:flutter/material.dart';

class Styles {
  final ThemeColor themeColor;
  Styles({required this.themeColor});
  TextStyle get appBar =>
      TextStyle(color: themeColor.text, fontSize: Nums().appBar);
  TextStyle get input =>
      TextStyle(color: themeColor.text, fontSize: Nums.input);
  TextStyle get avtor =>
      TextStyle(color: themeColor.text, fontSize: Nums.avtor);

  TextStyle _site(double size) {
    return TextStyle(
        color: Colors.white,
        fontSize: size,
        fontWeight: FontWeight.bold,
        shadows: ThemeShadows().text);
  }

  TextStyle get site => _site(Nums.site);
  TextStyle get siteSub => _site(Nums.siteSub);
}
