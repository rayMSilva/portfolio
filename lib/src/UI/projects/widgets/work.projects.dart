import 'package:flutter/material.dart';
import 'package:my_portfolio/src/UI/projects/widgets/card.projects.dart';
import 'package:my_portfolio/src/constants/colors.dart';
import 'package:my_portfolio/src/data/controllers/projects.controller.dart';

class WorkProjects extends StatelessWidget {
  WorkProjects({super.key});
  final ProjetcsController controller = ProjetcsController();

  @override
  Widget build(BuildContext context) {
    return controller.workProjectInfo.isNotEmpty
        ? Container(
            padding: const EdgeInsets.fromLTRB(25, 20, 25, 60),
            color: CustomColor.scaffoldBg,
            width: MediaQuery.of(context).size.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Work Projects",
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
                    for (int i = 0; i < controller.workProjectInfo.length; i++)
                      CardProjects(
                        image: controller.workProjectInfo[i].image,
                        title: controller.workProjectInfo[i].title,
                        subtitle: controller.workProjectInfo[i].subtitle,
                        androidLink: controller.workProjectInfo[i].androidLink,
                        iosLink: controller.workProjectInfo[i].iosLink,
                        webLink: controller.workProjectInfo[i].webLink,
                      ),
                  ],
                ),
              ],
            ),
          )
        : SizedBox();
  }
}
