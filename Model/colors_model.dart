// ignore_for_file: overridden_fields

import 'package:flutter/material.dart';

class ThemeColor {
  Color appBar = Colors.white;
  Color appBarIcon = Colors.black;
  Color text = Colors.black;
  Color canvas = Colors.white;
  Color navigationBg =  Colors.white;
  Color navigatActiveIcon = const Color(0xffDADADA);
  Color navigatUnactiveIcon = Colors.grey;
  Color navigatSelectRound = const Color(0xffDBEEE1);
}

class ThemeDarkColor extends ThemeColor {
  @override
  Color appBar =  Colors.grey[700]!;
  @override
  Color appBarIcon = Colors.white;
  @override
  Color text = Colors.white;
  @override
  Color canvas =  Colors.black;
  @override
  Color navigationBg =  Colors.black;
  @override
  Color navigatActiveIcon = Colors.white;
  @override
  Color navigatUnactiveIcon = Colors.grey;
  @override
  Color navigatSelectRound = const Color(0xff031508);

}
