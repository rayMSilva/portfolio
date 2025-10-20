import 'package:flutter/material.dart';
import 'package:my_portfolio/src/UI/contact/widgets/custom.text.field.dart';

class ContactMobile extends StatelessWidget {
  const ContactMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
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
          height: 15,
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
