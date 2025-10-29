import 'package:flutter/material.dart';
import 'package:my_portfolio/src/UI/content/widgets/content.desktop.dart';
import 'package:my_portfolio/src/UI/content/widgets/content.mobile.dart';

class Content extends StatelessWidget {
  const Content({super.key});

  @override
  Widget build(BuildContext context) {
    return MediaQuery.of(context).size.width > 760 ? ContentDesktop() : ContentMobile();
  }
}
