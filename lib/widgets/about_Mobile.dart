import 'package:flutter/material.dart';
import 'package:portfolio/constants/size.dart';
import 'package:portfolio/style/colors.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutMobile extends StatelessWidget {
  const AboutMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(height: 40),
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
            'assets/myPic.jpg',
            width: 250,
            height: 250,
          ),
        ),
        const SizedBox(height: 70),
        Align(
          alignment: Alignment.center,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: ConstrainedBox(
              constraints: const BoxConstraints(
                maxWidth: 400,
                maxHeight: 400,
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
    );
  }
}
