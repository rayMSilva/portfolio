import 'package:flutter/material.dart';
import 'package:my_portfolio/src/UI/contact/widgets/custom.text.field.dart';
import 'package:my_portfolio/src/data/controllers/contact.controller.dart';

class ContactDesktop extends StatelessWidget {
  ContactDesktop({super.key});
  final ContactController _controller = ContactController();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(
          child: CustomTextField(
            controller: _controller.nameController,
            maxline: 1,
            hintText: 'Your Name',
          ),
        ),
        const SizedBox(
          width: 15,
        ),
        Flexible(
          child: CustomTextField(
            controller: _controller.emailController,
            maxline: 1,
            hintText: 'Your E-mail',
          ),
        ),
      ],
    );
  }
}
