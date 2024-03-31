import 'package:flutter/cupertino.dart';
import 'package:portfolio/style/colors.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: customColors.scaffoldPrimary,
      padding: const EdgeInsets.symmetric(vertical: 10),
      width: double.maxFinite,
      alignment: Alignment.center,
      child: const Text(
        "Made by Nafees Madni with Flutter 3.19.0",
        style: TextStyle(
          color: customColors.whiteSecondary,
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }
}
