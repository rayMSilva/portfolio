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
            child: MediaQuery.of(context).size.width > 760
                ? ContactDesktop(controller: _controller)
                : ContactMobile(
                    controller: _controller,
                  ),
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
            child: ValueListenableBuilder<bool>(
              valueListenable: _controller.isLoading,
              builder: (context, loading, _) => loading
                  ? CircularProgressIndicator(
                      color: CustomColor.yellowPrimary,
                    )
                  : SizedBox(
                      width: double.maxFinite,
                      child: ElevatedButton(
                        onPressed: () {
                          _controller.sendEmail(context);
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
                onTap: () {
                  _controller.openURL(context, "https://github.com/rayMSilva");
                },
                child: Image.asset(
                  "lib/assets/github.png",
                  width: 28,
                ),
              ),
              InkWell(
                onTap: () {
                  _controller.openURL(context, "https://www.linkedin.com/in/ray-michel-23ba78288/");
                },
                child: Image.asset(
                  "lib/assets/linkedin.png",
                  width: 28,
                ),
              ),
              InkWell(
                onTap: () {
                  _controller.openURL(context, "https://www.instagram.com/raym__silva/");
                },
                child: Image.asset(
                  "lib/assets/instagram.png",
                  width: 28,
                ),
              ),
              InkWell(
                onTap: () {
                  _controller.openURL(context, "https://www.upwork.com/freelancers/~0167ef5390d18ee7f2");
                },
                child: Image.asset(
                  "lib/assets/upLogo.png",
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
