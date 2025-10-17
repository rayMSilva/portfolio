import 'package:flutter/material.dart';
import 'package:my_portfolio/src/UI/contact/contact.dart';
import 'package:my_portfolio/src/UI/main.page/widgets/header.desktop.dart';
import 'package:my_portfolio/src/UI/main.page/widgets/header.mobile.dart';
import 'package:my_portfolio/src/UI/main.page/widgets/header.mobile.drawer.dart';
import 'package:my_portfolio/src/UI/projects/projects.dart';
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
          //todo implementar about me
          MediaQuery.of(context).size.width > 750
              ? HearderDesktop(onTap: () {})
              : HeaderMobile(
                  onTap: () {},
                  onTapMenu: () {
                    scaffoldKey.currentState?.openEndDrawer();
                  },
                ),
          //todo implementar skills
          Container(color: Colors.blueGrey, height: 500, child: Skills()),
          //todo implentar projects
          Container(color: Colors.blueGrey, height: 500, child: Projects()),
          //todo implementar contacts
          Container(color: Colors.blueGrey, height: 500, child: Contact()),
        ],
      ),
    );
  }
}
