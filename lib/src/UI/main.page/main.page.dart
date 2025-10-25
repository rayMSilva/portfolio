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
import 'package:my_portfolio/src/data/controllers/main.page.controller.dart';

class MainPage extends StatelessWidget {
  MainPage({super.key});
  final MainPageController controller = MainPageController();
  final List<GlobalKey> navBarKeys = List.generate(4, (index) => GlobalKey());

  @override
  Widget build(BuildContext context) {
    final scaffoldKey = GlobalKey<ScaffoldState>();
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: CustomColor.scaffoldBg,
      endDrawer: HeaderMobileDrawer(
        onNavItemTap: (int nav) {},
      ),
      body: SingleChildScrollView(
        controller: controller.scrollControl,
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Header(),
            Content(
              key: navBarKeys.first,
            ),
            Skills(
              key: navBarKeys[1],
            ),
            WorkProjects(
              key: navBarKeys[2],
            ),
            HobbyProjects(),
            Contact(
              key: navBarKeys[3],
            ),
            Footer(),
          ],
        ),
      ),
    );
  }
}
