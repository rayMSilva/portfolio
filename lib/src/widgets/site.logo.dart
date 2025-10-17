import 'package:flutter/material.dart';
import 'package:my_portfolio/src/constants/colors.dart';

class SiteLogo extends StatelessWidget {
  const SiteLogo({super.key, required this.onTap});
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Text(
        "RMS",
        style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, decoration: TextDecoration.underline, color: CustomColor.yellowPrimary),
      ),
    );
  }
}
