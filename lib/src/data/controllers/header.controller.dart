import 'package:flutter/material.dart';
import 'package:my_portfolio/src/data/model/header.button.model.dart';

class HeaderController {
  final List<HeaderButtomModel> headerButtons = [HeaderButtomModel(name: "Home", icon: Icon(Icons.home)), HeaderButtomModel(name: "Skills", icon: Icon(Icons.book)), HeaderButtomModel(name: "Projects", icon: Icon(Icons.code)), HeaderButtomModel(name: "Blog", icon: Icon(Icons.web)), HeaderButtomModel(name: "Contact", icon: Icon(Icons.contact_mail_sharp))];
}
