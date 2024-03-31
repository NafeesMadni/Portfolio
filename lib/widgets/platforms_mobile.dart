import 'package:flutter/material.dart';

import 'package:portfolio/constants/skill_items.dart';
import 'package:portfolio/style/colors.dart';

class PlatformMobile extends StatelessWidget {
  const PlatformMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(maxWidth: 500),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          for (int i = 0; i < platformItems.length; i++)
            Container(
              margin: const EdgeInsets.only(left: 18, right: 18, bottom: 30),
              width: double.maxFinite,
              decoration: BoxDecoration(
                color: customColors.scaffoldSecondary,
                borderRadius: BorderRadius.circular(4),
                boxShadow: const [
                  BoxShadow(
                    blurStyle: BlurStyle.outer,
                    spreadRadius: 4,
                    blurRadius: 8,
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
    );
  }
}
