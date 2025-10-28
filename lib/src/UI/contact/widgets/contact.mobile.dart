import 'package:flutter/material.dart';
import 'package:my_portfolio/src/UI/contact/widgets/custom.text.field.dart';
import 'package:my_portfolio/src/data/controllers/contact.controller.dart';

class ContactMobile extends StatelessWidget {
  const ContactMobile({super.key, required this.controller});
  final ContactController controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(
          child: CustomTextField(
            controller: controller.nameController,
            maxline: 1,
            hintText: 'Your Name',
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        Flexible(
          child: CustomTextField(
            controller: controller.emailController,
            maxline: 1,
            hintText: 'Your E-mail',
          ),
        ),
      ],
    );
  }
}
