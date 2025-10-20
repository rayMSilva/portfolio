import 'package:flutter/material.dart';
import 'package:my_portfolio/src/constants/colors.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: CustomColor.bgLight2,
      width: MediaQuery.of(context).size.width,
      height: 75,
      child: Center(
        child: Text(
          "Made by RayM_Silva with flutter 3.35.6",
          style: TextStyle(
            color: CustomColor.whiteSecondary.withValues(alpha: 0.6),
            fontSize: 12,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }
}
