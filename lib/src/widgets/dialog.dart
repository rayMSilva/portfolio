import 'package:flutter/material.dart';
import 'package:my_portfolio/src/constants/colors.dart';

class CustomDialog extends StatelessWidget {
  const CustomDialog({super.key, required this.content});
  final String? content;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: CustomColor.bgLight2,
      title: Text(
        'Atenção',
        textAlign: TextAlign.center,
        style: TextStyle(
          color: CustomColor.yellowPrimary,
          fontWeight: FontWeight.w600,
        ),
      ),
      content: Text(
        content!,
        style: TextStyle(),
        textAlign: TextAlign.center,
      ),
    );
  }
}
