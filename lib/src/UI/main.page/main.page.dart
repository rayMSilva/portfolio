import 'package:flutter/material.dart';
import 'package:my_portfolio/src/UI/contact/contact.dart';
import 'package:my_portfolio/src/UI/footer/footer.dart';
import 'package:my_portfolio/src/UI/header/header.dart';
import 'package:my_portfolio/src/UI/header/widgets/header.mobile.drawer.dart';
import 'package:my_portfolio/src/UI/projects/projects.dart';
import 'package:my_portfolio/src/UI/content/content.dart';
import 'package:my_portfolio/src/UI/skills/skills.dart';
import 'package:my_portfolio/src/constants/colors.dart';
import 'package:my_portfolio/src/data/controllers/main.page.controller.dart';

class MainPage extends StatelessWidget {
  MainPage({super.key});
  final MainPageController _controller = MainPageController();
  final List<GlobalKey> navBarKeys = List.generate(4, (index) => GlobalKey());

  @override
  Widget build(BuildContext context) {
    final scaffoldKey = GlobalKey<ScaffoldState>();
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: CustomColor.scaffoldBg,
      endDrawer: HeaderMobileDrawer(
        onNavItemTap: (int nav) {
          scrooltoSection(nav);
          scaffoldKey.currentState!.closeEndDrawer();
        },
      ),
      body: SingleChildScrollView(
        controller: _controller.scrollControl,
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            SizedBox(
              key: navBarKeys.first,
            ),
            Header(
              onTap: () {
                // todo
              },
              onNavMenuTap: (int nav) {
                scrooltoSection(nav);
              },
              onTapMenu: () {
                scaffoldKey.currentState!.openEndDrawer();
              },
            ),
            Content(),
            SizedBox(
              key: navBarKeys[1],
            ),
            Skills(),
            SizedBox(
              key: navBarKeys[2],
            ),
            Projects(),
            SizedBox(
              key: navBarKeys[3],
            ),
            Contact(),
            Footer(),
          ],
        ),
      ),
    );
  }

  void scrooltoSection(int index) {
    if (index == 4) {
      return;
    }

    final key = navBarKeys[index];
    Scrollable.ensureVisible(
      key.currentContext!,
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }
}
