import 'package:flutter/material.dart';
import 'package:my_portfolio/src/constants/colors.dart';
import 'package:my_portfolio/src/data/controllers/skills.controller.dart';

class ContentSkillsMobile extends StatelessWidget {
  ContentSkillsMobile({super.key});
  final SkillsController controller = SkillsController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "What I Can Do!",
          style: TextStyle(color: CustomColor.whitePrimary, fontWeight: FontWeight.bold, fontSize: 24),
        ),
        const SizedBox(height: 50),
        for (int i = 0; i < controller.platformItems.length; i++)
          Container(
            margin: EdgeInsets.only(bottom: 5),
            width: double.infinity,
            decoration: BoxDecoration(
              color: CustomColor.bgLight2,
              borderRadius: BorderRadius.circular(5),
            ),
            child: ListTile(
              contentPadding: EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 10,
              ),
              leading: Image.asset(controller.platformItems[i]["img"]),
              title: Text(
                controller.platformItems[i]["title"],
              ),
            ),
          ),
        const SizedBox(height: 50),
        Wrap(
          alignment: WrapAlignment.center,
          spacing: 10,
          runSpacing: 10,
          children: [
            for (int i = 0; i < controller.skillItems.length; i++)
              Chip(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 12,
                ),
                label: Text(
                  controller.skillItems[i]["title"],
                ),
                avatar: Image.asset(
                  controller.skillItems[i]["img"],
                ),
              ),
          ],
        ),
      ],
    );
  }
}
