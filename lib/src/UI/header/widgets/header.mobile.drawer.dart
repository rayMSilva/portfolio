import 'package:flutter/material.dart';
import 'package:my_portfolio/src/data/model/header.button.model.dart';
import 'package:my_portfolio/src/constants/colors.dart';
import 'package:my_portfolio/src/data/controllers/header.controller.dart';

class HeaderMobileDrawer extends StatelessWidget {
  HeaderMobileDrawer({super.key});
  final HeaderController controller = HeaderController();

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: CustomColor.scaffoldBg,
      child: ListView(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(top: 20, left: 20, bottom: 20),
              child: IconButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: Icon(Icons.close),
              ),
            ),
          ),
          for (HeaderButtomModel listTile in controller.headerButtons)
            ListTile(
              titleTextStyle: TextStyle(color: CustomColor.whitePrimary, fontWeight: FontWeight.w600, fontSize: 16),
              onTap: () {},
              contentPadding: EdgeInsets.symmetric(horizontal: 30),
              leading: listTile.icon,
              title: Text(listTile.name!),
            ),
        ],
      ),
    );
  }
}
