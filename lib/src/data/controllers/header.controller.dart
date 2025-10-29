import 'package:flutter/material.dart';
import 'package:my_portfolio/src/data/controllers/projects.controller.dart';
import 'package:my_portfolio/src/data/model/header.button.model.dart';

class HeaderController {
  final ProjetcsController projectsController = ProjetcsController();
  List<HeaderButtomModel> get headerButtons => [
    HeaderButtomModel(
      id: 0,
      name: "Home",
      icon: Icon(Icons.home),
      onPressed: () {},
    ),
    HeaderButtomModel(
      id: 1,
      name: "Skills",
      icon: Icon(Icons.book),
      onPressed: () {},
    ),
    if (projectsController.hobbyProjectInfo.isNotEmpty || projectsController.workProjectInfo.isNotEmpty)
      HeaderButtomModel(
        id: 2,
        name: "Projects",
        icon: Icon(Icons.code),
        onPressed: () {},
      ),
    HeaderButtomModel(
      id: 3,
      name: "Contact",
      icon: Icon(Icons.contact_mail_sharp),
      onPressed: () {},
    ),
    HeaderButtomModel(
      id: 4,
      name: "Blog",
      icon: Icon(Icons.web),
      onPressed: () {},
    ),
  ];
}
