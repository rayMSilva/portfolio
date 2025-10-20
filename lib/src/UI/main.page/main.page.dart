import 'package:flutter/material.dart';
import 'package:my_portfolio/src/UI/contact/contact.dart';
import 'package:my_portfolio/src/UI/footer/footer.dart';
import 'package:my_portfolio/src/UI/header/header.dart';
import 'package:my_portfolio/src/UI/header/widgets/header.mobile.drawer.dart';
import 'package:my_portfolio/src/UI/hobby.projects/hobby.projects.dart';
import 'package:my_portfolio/src/UI/main.content/content.dart';
import 'package:my_portfolio/src/UI/work.projects/work.projects.dart';
import 'package:my_portfolio/src/UI/skills/skills.dart';
import 'package:my_portfolio/src/constants/colors.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    final scaffoldKey = GlobalKey<ScaffoldState>();
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: CustomColor.scaffoldBg,
      endDrawer: HeaderMobileDrawer(),
      body: ListView(
        children: [
          Header(),
          Content(),
          Skills(),
          WorkProjects(),
          HobbyProjects(),
          Contact(),
          Footer(),
        ],
      ),
    );
  }
}
