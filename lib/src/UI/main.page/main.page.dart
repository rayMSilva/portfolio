import 'package:flutter/material.dart';
import 'package:my_portfolio/src/UI/about.me/about.me.dart';
import 'package:my_portfolio/src/UI/contact/contact.dart';
import 'package:my_portfolio/src/UI/projects/projects.dart';
import 'package:my_portfolio/src/UI/skills/skills.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          //todo implementar about me
          Container(
            color: Colors.blueGrey,
            height: 500,
            child: AboutMe(),
          ),
          //todo implementar skills
          Container(
            color: Colors.blueGrey,
            height: 500,
            child: Skills(),
          ),
          //todo implentar projects
          Container(
            color: Colors.blueGrey,
            height: 500,
            child: Projects(),
          ),
          //todo implementar contacts
          Container(
            color: Colors.blueGrey,
            height: 500,
            child: Contact(),
          ),
        ],
      ),
    );
  }
}
