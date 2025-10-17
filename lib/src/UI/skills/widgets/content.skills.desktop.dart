import 'package:flutter/material.dart';
import 'package:my_portfolio/src/constants/colors.dart';
import 'package:my_portfolio/src/data/controllers/skills.controller.dart';

class ContentSkillsDesktop extends StatelessWidget {
  ContentSkillsDesktop({super.key});
  final SkillsController controller = SkillsController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "What I Can Do!",
          style: TextStyle(color: CustomColor.whitePrimary, fontWeight: FontWeight.bold, fontSize: 24),
        ),
        Row(
          children: [
            Wrap(
              children: [
                for (int i = 0; i < controller.platformItems.length; i++)
                  Container(
                    width: 200,
                    decoration: BoxDecoration(color: CustomColor.bgLight2, borderRadius: BorderRadius.circular(5)),
                    child: ListTile(leading: Image.asset(controller.platformItems[i]["img"]), title: Text(controller.platformItems[i]["title"])),
                  ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
