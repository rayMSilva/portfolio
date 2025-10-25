import 'package:flutter/material.dart';
import 'package:my_portfolio/src/constants/colors.dart';
import 'package:my_portfolio/src/data/controllers/projects.controller.dart';

class WorkProjects extends StatelessWidget {
  WorkProjects({super.key});
  final ProjetcsController controller = ProjetcsController();

  @override
  Widget build(BuildContext context) {
    return Container(
      key: key,
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
                Container(
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
                        controller.workProjectInfo[i].image,
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
                              controller.workProjectInfo[i].title,
                              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: CustomColor.whitePrimary),
                            ),
                            const SizedBox(
                              height: 7,
                            ),
                            Text(
                              textAlign: TextAlign.left,
                              controller.workProjectInfo[i].subtitle,
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
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
            ],
          ),
        ],
      ),
    );
  }
}
