import 'package:flutter/material.dart';
import 'package:my_portfolio/src/UI/main.page/widgets/content.desktop.dart';
import 'package:my_portfolio/src/UI/main.page/widgets/content.mobile.dart';
import 'package:my_portfolio/src/UI/main.page/widgets/header.desktop.dart';
import 'package:my_portfolio/src/UI/main.page/widgets/header.mobile.dart';
import 'package:my_portfolio/src/UI/main.page/widgets/header.mobile.drawer.dart';
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
        children: MediaQuery.of(context).size.width > 750
            ? [HearderDesktop(onTap: () {}), ContentDesktop(), Skills()]
            : [
                HeaderMobile(
                  onTap: () {},
                  onTapMenu: () {
                    scaffoldKey.currentState?.openEndDrawer();
                  },
                ),
                ContentMobile(),
                Skills(),
              ],
        //todo implentar projects
        //todo implementar contacts
      ),
    );
  }
}
