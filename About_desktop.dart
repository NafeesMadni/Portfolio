// ignore: file_names
import 'package:flutter/material.dart';
import 'package:portfolio/constants/size.dart';
import 'package:portfolio/style/colors.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutDesktop extends StatelessWidget {
  const AboutDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Align(
          alignment: FractionalOffset.topRight,
          child: ShaderMask(
            shaderCallback: (bounds) {
              return LinearGradient(
                colors: [
                  customColors.scaffoldPrimary.withOpacity(0.1),
                  customColors.scaffoldPrimary.withOpacity(0.1)
                ],
              ).createShader(bounds);
            },
            blendMode: BlendMode.srcATop,
            child: Padding(
              padding: const EdgeInsets.only(right: 40),
              child: Text(
                "ABOUT",
                style: GoogleFonts.lexend(
                  color: customColors.headText,
                  fontSize: 60,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
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
                      text: "Nafees Madni",
                      style: GoogleFonts.lexend(
                        color: customColors.textHighkight,
                        fontSize: KTextSize,
                      ),
                    ),
                    TextSpan(
                      text: " from ",
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
                          "specializing in C++ and Flutter development. Passionate about creating innovative solutions that exceed expectations.",
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
