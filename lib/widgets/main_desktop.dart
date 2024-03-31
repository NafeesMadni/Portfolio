import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/style/colors.dart';

class MainDesktop extends StatelessWidget {
  final screenWidth;
  final screenHeight;

  const MainDesktop({
    super.key,
    this.screenWidth,
    this.screenHeight,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 35.0, right: 10),
      height: screenHeight / 1.185,
      constraints: const BoxConstraints(minHeight: 350.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ConstrainedBox(
            constraints: BoxConstraints(maxWidth: screenWidth / 2.5),
            child: Row(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 25,
                    ),
                    const Text.rich(
                      textAlign: TextAlign.start,
                      TextSpan(
                        text: "Hi there!\n",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          // fontWeight: FontWeight.bold,
                          height: 1.9,
                        ),
                        children: [
                          TextSpan(
                            text: "I'M ",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              // fontWeight: FontWeight.bold,
                              height: 1.2,
                            ),
                          ),
                          TextSpan(
                            text: "Nafees Madni",
                            style: TextStyle(
                              color: customColors.textHighkight,
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              height: 1.2,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 30),
                    SizedBox(
                      width: screenWidth / 2.5,
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
              ],
            ),
          ),

          const SizedBox(width: 15),
          // avatar
          Image.asset(
            alignment: Alignment.topCenter,
            'assets/avatar.png',
            width: screenWidth / 2.7,
            // height: screenHeight / 2.3,
          ),
        ],
      ),
    );
  }
}
