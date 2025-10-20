import 'package:flutter/material.dart';
import 'package:my_portfolio/src/constants/colors.dart';

class HeaderDecoration {
  static BoxDecoration boxDecoration = BoxDecoration(
    gradient: LinearGradient(colors: [Colors.transparent, CustomColor.bgLightk]),
    borderRadius: BorderRadius.circular(100),
  );
}
