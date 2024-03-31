// ignore: file_names
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class siteIcon extends StatelessWidget {
  final VoidCallback? onTap;
  final double iconSize;
  const siteIcon({super.key, required this.onTap, required this.iconSize});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: GestureDetector(
        onTap: onTap,
        child: GradientText(
          "N",
          style: GoogleFonts.blackOpsOne(
            fontSize: iconSize,
          ),
          colors: const [
            Color.fromARGB(255, 239, 82, 245),
            Color.fromARGB(255, 245, 57, 57),
          ],
        ),
      ),
    );
  }
}
