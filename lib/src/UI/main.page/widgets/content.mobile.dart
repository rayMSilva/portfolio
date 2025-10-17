import 'package:flutter/material.dart';
import 'package:my_portfolio/src/constants/colors.dart';

class ContentMobile extends StatelessWidget {
  const ContentMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 30),
      height: MediaQuery.of(context).size.height,
      constraints: BoxConstraints(minHeight: 360),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ShaderMask(
            shaderCallback: (bounds) {
              return LinearGradient(colors: [CustomColor.scaffoldBg.withValues(alpha: 0.6), CustomColor.scaffoldBg.withValues(alpha: 0.6)]).createShader(bounds);
            },
            blendMode: BlendMode.srcATop,
            child: Image.asset("lib/assets/image.png", width: MediaQuery.of(context).size.width, height: MediaQuery.of(context).size.height / 1.8),
          ),
          const SizedBox(height: 30),
          Text(
            "Hello\nI'm Ray Michel\nA flutter Developer",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: CustomColor.whitePrimary),
          ),
          const SizedBox(height: 15),
          SizedBox(
            width: 190,
            child: ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(backgroundColor: WidgetStateProperty.all(CustomColor.yellowPrimary)),
              child: Text("Get in touch", style: TextStyle(color: CustomColor.whitePrimary)),
            ),
          ),
        ],
      ),
    );
  }
}
