import 'package:flutter/material.dart';
import '../constants/colors.dart';

class MainDesktop extends StatelessWidget {
  const MainDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      height: screenHeight / 1.2,
      constraints: BoxConstraints(minHeight: 350),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset(
            "images/portfolio.webp",
            width: screenWidth / 2,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Hi! \nI'm Sneha Gupta\nA Flutter Developer",
                style: TextStyle(
                  fontSize: 20,
                  height: 1.5,
                  fontWeight: FontWeight.bold,
                  color: CustomColor.whitePrimary,
                ),
              ),
              SizedBox(height: 10),
              Text(
                "A Flutter developer builds and maintains\napplications for multiple platforms,\nincluding iOS and Android,\nusing Google's Flutter toolkit",
                style: TextStyle(
                  fontSize: 12,
                  height: 1.5,
                  fontWeight: FontWeight.bold,
                  color: CustomColor.whiteSecondary,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              SizedBox(
                width: 200,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    "Contact Me",
                    style: TextStyle(
                      color: CustomColor.whitePrimary,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
