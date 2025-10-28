import 'package:flutter/material.dart';
import 'package:my_portfolio/src/UI/header/widgets/header.desktop.dart';
import 'package:my_portfolio/src/UI/header/widgets/header.mobile.dart';

class Header extends StatelessWidget {
  const Header({super.key, required this.onTap, required this.onNavMenuTap, required this.onTapMenu});
  final VoidCallback? onTap;
  final Function(int)? onNavMenuTap;
  final Function()? onTapMenu;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: MediaQuery.of(context).size.width > 760
          ? HearderDesktop(
              onTap: onTap,
              onNavMenuTap: onNavMenuTap!,
            )
          : HeaderMobile(
              onTap: onTap,
              onTapMenu: onTapMenu,
            ),
    );
  }
}
