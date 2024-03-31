import 'package:flutter/material.dart';
import 'package:portfolio/constants/size.dart';
import 'package:portfolio/style/colors.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutDesktop extends StatelessWidget {
  final screenWidth;
  final screenHeight;

  const AboutDesktop({
    super.key,
    this.screenWidth,
    this.screenHeight,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: const EdgeInsets.only(left: 35.0, right: 10),
      padding: const EdgeInsets.only(left: 35.0, right: 10),
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(
              'assets/myPic.jpg',
              width: 250,
              height: 250,
            ),
            Flexible(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: ConstrainedBox(
                  constraints: const BoxConstraints(
                    maxWidth: 600,
                  ),
                  child: Text.rich(
                    TextSpan(
                      text: "Hi, ",
                      style: GoogleFonts.lexend(
                        color: Colors.white,
                        fontSize: KTextSize,
                      ),
                      children: [
                        TextSpan(
                          text: "I'm ",
                          style: GoogleFonts.lexend(
                            color: Colors.white,
                            fontSize: KTextSize,
                          ),
                        ),
                        TextSpan(
                          text: "Nafees Madni, ",
                          style: GoogleFonts.lexend(
                            color: customColors.textHighkight,
                            fontSize: KTextSize,
                          ),
                        ),
                        TextSpan(
                          text: "a passionate developer hailing from ",
                          style: GoogleFonts.lexend(
                            color: Colors.white,
                            fontSize: KTextSize,
                          ),
                        ),
                        TextSpan(
                          text: "Sahiwal, Pakistan, ",
                          style: GoogleFonts.lexend(
                            color: customColors.textHighkight,
                            fontSize: KTextSize,
                          ),
                        ),
                        TextSpan(
                          text:
                              "skilled in C++ and Flutter. Bringing robust programming and creative design to every project.",
                          style: GoogleFonts.lexend(
                            color: Colors.white,
                            fontSize: KTextSize,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
