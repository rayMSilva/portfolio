import 'package:flutter/material.dart';
import 'package:my_portfolio/src/UI/projects/widgets/card.projects.dart';
import 'package:my_portfolio/src/constants/colors.dart';
import 'package:my_portfolio/src/data/controllers/projects.controller.dart';

class HobbyProjects extends StatelessWidget {
  HobbyProjects({super.key});
  final ProjetcsController controller = ProjetcsController();

  @override
  Widget build(BuildContext context) {
    return controller.hobbyProjectInfo.isNotEmpty
        ? Container(
            padding: const EdgeInsets.fromLTRB(25, 20, 25, 60),
            color: CustomColor.bgLightk,
            width: MediaQuery.of(context).size.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Hobby Projects",
                  style: TextStyle(
                    color: CustomColor.whitePrimary,
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                Wrap(
                  spacing: 30,
                  runSpacing: 30,
                  children: [
                    for (int i = 0; i < controller.hobbyProjectInfo.length; i++)
                      CardProjects(
                        image: controller.hobbyProjectInfo[i].image,
                        title: controller.hobbyProjectInfo[i].title,
                        subtitle: controller.hobbyProjectInfo[i].subtitle,
                        androidLink: controller.hobbyProjectInfo[i].androidLink,
                        iosLink: controller.hobbyProjectInfo[i].iosLink,
                        webLink: controller.hobbyProjectInfo[i].webLink,
                      ),
                  ],
                ),
              ],
            ),
          )
        : SizedBox();
  }
}
