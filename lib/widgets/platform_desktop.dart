import 'package:flutter/material.dart';
import 'package:portfolio/constants/skill_items.dart';
import 'package:portfolio/style/colors.dart';

class PlatformDesktop extends StatelessWidget {
  const PlatformDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // ! platform
        ConstrainedBox(
          constraints: const BoxConstraints(
            maxWidth: 700,
          ),
          child: Wrap(
            spacing: 30.0, // vertical spacing
            runSpacing: 30.0, // horizontal spacing
            children: [
              for (int i = 0; i < platformItems.length; i++)
                Container(
                  width: 300,
                  decoration: BoxDecoration(
                    color: customColors.scaffoldSecondary,
                    borderRadius: BorderRadius.circular(4),
                    boxShadow: const [
                      BoxShadow(
                        blurStyle: BlurStyle.outer,
                        spreadRadius: 4,
                        blurRadius: 10,
                        color: customColors.btnColor,
                      ),
                      BoxShadow(
                        blurStyle: BlurStyle.outer,
                        spreadRadius: 6,
                        color: customColors.btnColor,
                      ),
                    ],
                  ),
                  child: ListTile(
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 10,
                    ),
                    leading: Icon(
                      platformItems[i]["icon"],
                      color: Colors.white,
                    ),
                    title: Text(
                      platformItems[i]["title"],
                      style: const TextStyle(
                        color: customColors.whitePrimary,
                        fontWeight: FontWeight.w400,
                        fontSize: 18,
                        wordSpacing: 3,
                      ),
                    ),
                  ),
                ),
            ],
          ),
        ),

        // ! skills
        // Flexible(
        //   child: ConstrainedBox(
        //     constraints: const BoxConstraints(maxWidth: 500.0),
        //     child: Wrap(
        //       spacing: 10,
        //       runSpacing: 10,
        //       children: [
        //         for (int i = 0; i < skillItems.length; i++)
        //           Container(
        //             padding: const EdgeInsets.symmetric(
        //               horizontal: 16.0,
        //               vertical: 12.0,
        //             ),
        //             alignment: Alignment.center,
        //             child: Image.asset(
        //               skillItems[i]["img"],
        //               width: 21,
        //             ),
        //           ),

        //         // Chip(
        //         //   padding: const EdgeInsets.symmetric(
        //         //     horizontal: 16.0,
        //         //     vertical: 12.0,
        //         //   ),
        //         //   side: BorderSide.none,
        //         //   shape: RoundedRectangleBorder(
        //         //     borderRadius: BorderRadius.circular(25),
        //         //   ),
        //         //   backgroundColor: customColors.scaffoldPrimary,
        //         //   avatar: Image.asset(
        //         //     skillItems[i]["img"],
        //         //     width: 21,
        //         //   ),
        //         //   label: Text(
        //         //     skillItems[i]["title"],
        //         //     style: const TextStyle(
        //         //       color: customColors.whitePrimary,
        //         //       fontSize: 16,
        //         //       fontWeight: FontWeight.w400,
        //         //     ),
        //         //   ),
        //         // ),
        //       ],
        //     ),
        //   ),
        // ),
      ],
    );
  }
}
