import 'package:flutter/material.dart';
import 'package:my_portfolio/src/constants/header.decoration.dart';
import 'package:my_portfolio/src/data/controllers/header.controller.dart';
import 'package:my_portfolio/src/widgets/site.logo.dart';

class HeaderMobile extends StatelessWidget {
  HeaderMobile({super.key, required this.onTap, required this.onTapMenu});
  final HeaderController controller = HeaderController();
  final VoidCallback? onTap;
  final VoidCallback? onTapMenu;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      margin: EdgeInsets.fromLTRB(40, 5, 20, 5),
      decoration: HeaderDecoration.boxDecoration,
      child: Row(
        children: [
          SiteLogo(onTap: onTap),
          Spacer(),
          IconButton(onPressed: onTapMenu, icon: Icon(Icons.menu)),
          const SizedBox(width: 16),
        ],
      ),
    );
  }
}
