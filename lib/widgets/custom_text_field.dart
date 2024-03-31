import 'package:flutter/material.dart';
import 'package:portfolio/style/colors.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    this.hintText,
    this.maxLines = 1,
    this.controller,
  });
  final String? hintText;
  final int? maxLines;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: maxLines,
      controller: controller,
      style: const TextStyle(
        color: customColors.scaffoldPrimary,
      ),
      decoration: InputDecoration(
        fillColor: customColors.whiteSecondary,
        filled: true,
        contentPadding: const EdgeInsets.all(16),
        focusedBorder: getInputBorder,
        enabledBorder: getInputBorder,
        border: getInputBorder,
        hintText: hintText,
        hintStyle: const TextStyle(color: customColors.hintDark),
      ),
    );
  }

  OutlineInputBorder get getInputBorder {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: BorderSide.none,
    );
  }
}
