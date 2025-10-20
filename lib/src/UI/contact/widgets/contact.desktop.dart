import 'package:flutter/material.dart';
import 'package:my_portfolio/src/UI/contact/widgets/custom.text.field.dart';

class ContactDesktop extends StatelessWidget {
  const ContactDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(
          child: CustomTextField(
            controller: TextEditingController(),
            maxline: 1,
            hintText: 'Your Name',
          ),
        ),
        const SizedBox(
          width: 15,
        ),
        Flexible(
          child: CustomTextField(
            controller: TextEditingController(),
            maxline: 1,
            hintText: 'Your E-mail',
          ),
        ),
      ],
    );
  }
}
