import 'package:flutter/material.dart';
import 'package:my_portfolio/src/constants/btn.dart';

class AboutMeController {
  final List<CustomButtom> headerButtons = [CustomButtom(name: "Home", icon: Icon(Icons.home)), CustomButtom(name: "Skills", icon: Icon(Icons.book)), CustomButtom(name: "Projects", icon: Icon(Icons.code)), CustomButtom(name: "Blog", icon: Icon(Icons.web)), CustomButtom(name: "Contact", icon: Icon(Icons.contact_mail_sharp))];
}
