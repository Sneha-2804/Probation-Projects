import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/colors.dart';

class MainMobile extends StatelessWidget {
  const MainMobile({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;
    return Container(
      height: screenHeight,
      margin: EdgeInsets.symmetric(
        horizontal: 40,
        vertical: 30,
      ),
      constraints: BoxConstraints(
        minHeight: 560,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ShaderMask(
            shaderCallback: (bounds) {
              return LinearGradient(colors: [
                CustomColor.scaffoldBg.withAlpha(150),
                CustomColor.scaffoldBg.withAlpha(150),
              ]).createShader(bounds);
            },
            blendMode: BlendMode.srcATop,
            child: Image.asset(
              "images/my_flutter_avatar.png",
              width: screenWidth,
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            "Hi! \nI'm Sneha Gupta\nA Flutter Developer",
            style: TextStyle(
              fontSize: 15,
              height: 1.5,
              fontWeight: FontWeight.bold,
              color: CustomColor.whitePrimary,
            ),
          ),
          SizedBox(
            height: 15,
          ),
          SizedBox(
            width: 140,
            child: ElevatedButton(
              onPressed: () {},
              child: Text(
                "Get in Touch",
                style: TextStyle(
                  color: CustomColor.whitePrimary,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
