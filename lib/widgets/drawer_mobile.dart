import 'package:flutter/material.dart';
import 'package:portfolio/constants/nav_buttons.dart';
import 'package:portfolio/style/colors.dart';
import 'package:google_fonts/google_fonts.dart';

class MobileDrawer extends StatelessWidget {
  const MobileDrawer({super.key, required this.onNavItemTap});
  final Function(int) onNavItemTap;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: customColors.scaffoldPrimary,
      child: ListView(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 20, top: 20, bottom: 20),
              child: IconButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: const Icon(Icons.close),
              ),
            ),
          ),
          for (int i = 0; i < navIcons.length; i++)
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: ListTile(
                contentPadding: const EdgeInsets.symmetric(horizontal: 30),
                titleTextStyle: GoogleFonts.lexend(
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                  color: customColors.whitePrimary,
                ),
                onTap: () {
                  onNavItemTap(i);
                  Navigator.of(context).pop();
                },
                leading: Icon(
                  navIcons[i],
                ),
                title: Text(
                  navTitles[i],
                ),
              ),
            ),
        ],
      ),
    );
  }
}
