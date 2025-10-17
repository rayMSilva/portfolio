import 'package:flutter/material.dart';
import 'package:my_portfolio/src/constants/btn.dart';
import 'package:my_portfolio/src/constants/colors.dart';
import 'package:my_portfolio/src/constants/headerDeco.dart';
import 'package:my_portfolio/src/data/controllers/main.page.controller.dart';
import 'package:my_portfolio/src/widgets/site.logo.dart';

class HearderDesktop extends StatelessWidget {
  HearderDesktop({super.key, required this.onTap});
  final AboutMeController controller = AboutMeController();
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: 60,
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      decoration: HeaderDecoration.boxDecoration,
      child: Row(
        children: [
          SiteLogo(onTap: onTap),
          Spacer(),
          for (CustomButtom btn in controller.headerButtons)
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: TextButton(
                onPressed: () {},
                child: Text(
                  btn.name!,
                  maxLines: 1,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: CustomColor.whitePrimary),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
