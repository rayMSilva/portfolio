import 'package:flutter/material.dart';
import 'package:my_portfolio/src/UI/contact/widgets/contact.desktop.dart';
import 'package:my_portfolio/src/UI/contact/widgets/contact.mobile.dart';
import 'package:my_portfolio/src/UI/contact/widgets/custom.text.field.dart';
import 'package:my_portfolio/src/constants/colors.dart';
import 'package:my_portfolio/src/data/controllers/contact.controller.dart';

class Contact extends StatelessWidget {
  Contact({super.key});
  final ContactController _controller = ContactController();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(25, 20, 25, 60),
      color: CustomColor.scaffoldBg,
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          Text(
            "Get in Touch",
            style: TextStyle(
              color: CustomColor.whitePrimary,
              fontWeight: FontWeight.bold,
              fontSize: 24,
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          ConstrainedBox(
            constraints: BoxConstraints(maxWidth: 700, maxHeight: 100),
            child: MediaQuery.of(context).size.width > 760 ? ContactDesktop() : ContactMobile(),
          ),
          const SizedBox(
            height: 15,
          ),
          ConstrainedBox(
            constraints: BoxConstraints(maxWidth: 700),
            child: CustomTextField(
              controller: _controller.textController,
              maxline: 20,
              hintText: 'Your Text',
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          ConstrainedBox(
            constraints: BoxConstraints(maxWidth: 700),
            child: SizedBox(
              width: double.maxFinite,
              child: ElevatedButton(
                onPressed: () {
                  _controller.sendEmail();
                },
                style: ButtonStyle(
                  backgroundColor: WidgetStateProperty.all(CustomColor.yellowPrimary),
                ),
                child: Text(
                  "Get in touch",
                  style: TextStyle(color: CustomColor.whitePrimary),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          ConstrainedBox(
            constraints: BoxConstraints(maxWidth: 300),
            child: const Divider(),
          ),
          const SizedBox(
            height: 15,
          ),
          Wrap(
            spacing: 12,
            runSpacing: 12,
            children: [
              InkWell(
                onTap: () {},
                child: Image.asset(
                  "lib/assets/github.png",
                  width: 28,
                ),
              ),
              InkWell(
                onTap: () {},
                child: Image.asset(
                  "lib/assets/linkedin.png",
                  width: 28,
                ),
              ),
              InkWell(
                onTap: () {},
                child: Image.asset(
                  "lib/assets/facebook.png",
                  width: 28,
                ),
              ),
              InkWell(
                onTap: () {},
                child: Image.asset(
                  "lib/assets/instagram.png",
                  width: 28,
                ),
              ),
              InkWell(
                onTap: () {},
                child: Image.asset(
                  "lib/assets/telegram.png",
                  width: 28,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
