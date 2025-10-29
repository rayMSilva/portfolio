import 'package:flutter/material.dart';
import 'package:my_portfolio/src/constants/colors.dart';

class CardProjects extends StatelessWidget {
  const CardProjects({super.key, required this.image, required this.title, required this.subtitle, this.androidLink, this.iosLink, this.webLink});
  final String image;
  final String title;
  final String subtitle;
  final String? androidLink;
  final String? iosLink;
  final String? webLink;

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      width: 250,
      height: 280,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: CustomColor.bgLight2,
      ),
      child: Column(
        children: [
          Image.asset(
            image,
            height: 140,
            width: 250,
            fit: BoxFit.cover,
          ),
          Container(
            color: CustomColor.bgLight2,
            constraints: BoxConstraints(maxWidth: 225, maxHeight: 100),
            padding: EdgeInsets.only(left: 5, top: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  textAlign: TextAlign.left,
                  title,
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: CustomColor.whitePrimary),
                ),
                const SizedBox(
                  height: 7,
                ),
                Text(
                  textAlign: TextAlign.left,
                  subtitle,
                  style: TextStyle(fontSize: 10, color: CustomColor.whitePrimary),
                ),
              ],
            ),
          ),
          Container(
            color: CustomColor.bgLightk,
            constraints: BoxConstraints(maxWidth: 250, minHeight: 40),
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Avaliable for: ",
                  style: TextStyle(color: CustomColor.yellowSecondary),
                ),
                Spacer(),
                if (iosLink != "" && iosLink != null)
                  InkWell(
                    onTap: () {},
                    child: SizedBox(
                      width: 24,
                      height: 24,
                      child: Image.asset(
                        "lib/assets/ios_icon.png",
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                if (androidLink != "" && androidLink != null)
                  InkWell(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: SizedBox(
                      width: 24,
                      height: 24,
                      child: Image.asset(
                        "lib/assets/android_icon.png",
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                if (webLink != "" && webLink != null)
                  InkWell(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: SizedBox(
                      width: 24,
                      height: 24,
                      child: Image.asset(
                        "lib/assets/web_icon.png",
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
