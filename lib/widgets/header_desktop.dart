import 'package:flutter/material.dart';
import 'package:portfolio/constants/nav_buttons.dart';
import 'package:portfolio/style/colors.dart';
import 'package:portfolio/widgets/siteIcon.dart';

class HeaderDesktop extends StatelessWidget {
  final VoidCallback? onTap;
  final Function(int) onNavManuTap;
  const HeaderDesktop({super.key, this.onTap, required this.onNavManuTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: double.maxFinite,
      padding: const EdgeInsets.only(right: 15, left: 30),
      decoration: const BoxDecoration(
        color: customColors.scaffoldPrimary,
      ),
      child: Row(
        children: [
          // ? Site Icon
          Center(
            child: siteIcon(
              iconSize: 43,
              onTap: onTap,
            ),
          ),
          const Spacer(),
          for (int i = 0; i < navTitles.length; i++)
            Padding(
              padding: const EdgeInsets.only(right: 20, left: 20),
              child: GestureDetector(
                onTap: () {
                  onNavManuTap(i);
                },
                child: Text(
                  navTitles[i],
                  style: const TextStyle(
                    color: customColors.whitePrimary,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
