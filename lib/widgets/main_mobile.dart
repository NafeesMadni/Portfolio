import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/style/colors.dart';

class MainMobile extends StatelessWidget {
  final screenWidth;
  final screenHeight;
  final VoidCallback onTap;

  const MainMobile({
    super.key,
    this.screenWidth,
    this.screenHeight,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 40, right: 40, top: 15, bottom: 15),
      height: screenHeight / 1.1,
      constraints: const BoxConstraints(
        minHeight: 500.0,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // avatar
          ShaderMask(
            shaderCallback: (bounds) {
              return LinearGradient(
                colors: [
                  customColors.bdLight2.withOpacity(0.4),
                  customColors.bdLight2.withOpacity(0.5)
                ],
              ).createShader(bounds);
            },
            blendMode: BlendMode.srcATop,
            child: Image.asset(
              'assets/avatar.png',
              width: screenWidth,
              height: screenHeight / 2.5,
            ),
          ),
          const SizedBox(
            height: 60,
          ),
          // text
          const Text.rich(
            textAlign: TextAlign.start,
            TextSpan(
              text: "Hi there!\n",
              style: TextStyle(
                color: Colors.white,
                fontSize: 35,
                // fontWeight: FontWeight.bold,
                height: 1.9,
              ),
              children: [
                TextSpan(
                  text: "I'M ",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 35,
                    // fontWeight: FontWeight.bold,
                    height: 1.2,
                  ),
                ),
                TextSpan(
                  text: "Nafees Madni",
                  style: TextStyle(
                    color: customColors.textHighkight,
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                    height: 1.2,
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 30),
          SizedBox(
            child: AnimatedTextKit(
              repeatForever: true,
              isRepeatingAnimation: true,
              animatedTexts: [
                TyperAnimatedText(
                  "C++ Developer",
                  textStyle: const TextStyle(
                    color: customColors.textHighkight,
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                  ),
                  curve: Curves.bounceIn,
                  speed: const Duration(milliseconds: 200),
                ),
                TyperAnimatedText(
                  "Flutter Developer",
                  textStyle: const TextStyle(
                    color: customColors.textHighkight,
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                  ),
                  curve: Curves.bounceIn,
                  speed: const Duration(milliseconds: 150),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
