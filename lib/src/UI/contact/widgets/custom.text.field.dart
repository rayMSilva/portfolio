import 'package:flutter/material.dart';
import 'package:my_portfolio/src/constants/colors.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.controller, required this.maxline, required this.hintText});
  final TextEditingController controller;
  final int maxline;
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      maxLines: maxline,
      style: TextStyle(color: CustomColor.scaffoldBg),
      decoration: InputDecoration(
        contentPadding: EdgeInsets.all(16),
        filled: true,
        fillColor: CustomColor.textFieldBg,
        focusedBorder: getOutLineInputBorder,
        enabledBorder: getOutLineInputBorder,
        border: getOutLineInputBorder,
        hintText: hintText,
        hintStyle: TextStyle(color: CustomColor.hintDark),
      ),
    );
  }

  OutlineInputBorder get getOutLineInputBorder {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: BorderSide.none,
    );
  }
}
