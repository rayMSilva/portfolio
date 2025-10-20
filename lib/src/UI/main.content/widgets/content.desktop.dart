import 'package:flutter/material.dart';
import 'package:my_portfolio/src/constants/colors.dart';

class ContentDesktop extends StatelessWidget {
  const ContentDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      height: MediaQuery.of(context).size.height / 1.2,
      constraints: BoxConstraints(minHeight: 350),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Hello\nI'm Ray Michel\nA flutter Developer",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: CustomColor.whitePrimary),
              ),
              const SizedBox(height: 15,),
              SizedBox(
                width: 250,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(backgroundColor: WidgetStateProperty.all(CustomColor.yellowPrimary), ),
                  child: Text("Get in touch", style: TextStyle(color: CustomColor.whitePrimary)),
                ),
              ),
            ],
          ),
          Image.asset("lib/assets/image.png", width: MediaQuery.of(context).size.width / 2),
        ],
      ),
    );
  }
}
