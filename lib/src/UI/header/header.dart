import 'package:flutter/material.dart';
import 'package:my_portfolio/src/UI/header/widgets/header.desktop.dart';
import 'package:my_portfolio/src/UI/header/widgets/header.mobile.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return MediaQuery.of(context).size.width > 760
        ? HearderDesktop(
            onTap: () {},
            onNavMenuTap: (int i) {},
          )
        : HeaderMobile(
            onTap: () {},
            onTapMenu: () {},
          );
  }
}
