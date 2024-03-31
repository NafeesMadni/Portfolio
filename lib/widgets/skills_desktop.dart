import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/constants/skill_items.dart';
import 'package:portfolio/style/colors.dart';

class SkillDesktop extends StatelessWidget {
  const SkillDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(maxWidth: 600),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text.rich(
            textAlign: TextAlign.start,
            TextSpan(
              text: "Professional",
              style: GoogleFonts.mulish(
                color: Colors.white,
                fontSize: 35,
                fontWeight: FontWeight.bold,
                height: 1.9,
              ),
              children: [
                TextSpan(
                  text: " Skillset",
                  style: GoogleFonts.mulish(
                    color: customColors.textHighkight,
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                    height: 1.2,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Wrap(
            alignment: WrapAlignment.center,
            spacing: 4,
            runSpacing: 4,
            children: [
              for (int i = 0; i < skillItems.length; i++)
                Container(
                  margin:
                      const EdgeInsets.only(left: 18, right: 18, bottom: 30),
                  width: 80,
                  height: 80,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: customColors.textHighkight,
                      strokeAlign: BorderSide.strokeAlignOutside,
                    ),
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(5),
                    boxShadow: const [
                      BoxShadow(
                        blurStyle: BlurStyle.outer,
                        blurRadius: 4,
                        color: customColors.btnColor,
                      ),
                    ],
                  ),
                  child: Image.asset(
                    skillItems[i]["img"],
                  ),
                ),
            ],
          ),
        ],
      ),
    );
  }
}
