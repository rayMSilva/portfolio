import 'package:flutter/material.dart';
import 'package:my_portfolio/src/UI/skills/widgets/content.skills.desktop.dart';
import 'package:my_portfolio/src/UI/skills/widgets/content.skills.mobile.dart';
import 'package:my_portfolio/src/constants/colors.dart';
import 'package:my_portfolio/src/data/controllers/skills.controller.dart';

class Skills extends StatelessWidget {
  Skills({super.key});
  final SkillsController controller = SkillsController();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(25, 20, 25, 60),
      color: CustomColor.bgLightk,
      width: MediaQuery.of(context).size.width,
      child: MediaQuery.of(context).size.width > 750 ? ContentSkillsDesktop() : ContentSkillsMobile(),
    );
  }
}
