import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/constants/size.dart';
import 'package:portfolio/style/colors.dart';
import 'package:portfolio/widgets/About_desktop.dart';
import 'package:portfolio/widgets/about_Mobile.dart';
import 'package:portfolio/widgets/contact_section.dart';
import 'package:portfolio/widgets/drawer_mobile.dart';
import 'package:portfolio/widgets/footer.dart';
import 'package:portfolio/widgets/header_desktop.dart';
import 'package:portfolio/widgets/header_mobile.dart';
import 'package:portfolio/widgets/main_desktop.dart';
import 'package:portfolio/widgets/main_mobile.dart';
import 'package:portfolio/widgets/platform_desktop.dart';
import 'package:portfolio/widgets/platforms_mobile.dart';
import 'package:portfolio/widgets/skills_Mobile.dart';
import 'package:portfolio/widgets/skills_desktop.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final scrollController = ScrollController();
  final List<GlobalKey> navbarKeys =
      List.generate(4, (int index) => GlobalKey());

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return LayoutBuilder(
      builder: (context, constraints) {
        return Scaffold(
          key: scaffoldKey,
          endDrawer: constraints.maxWidth >= KMinDesktopWidth
              ? null
              : MobileDrawer(
                  onNavItemTap: (int navbarItemIndex) {
                    // call func
                    scrollToSection(navbarItemIndex);
                  },
                ),
          body: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  customColors.scaffoldPrimary,
                  customColors.scaffoldSecondary
                ],
              ),
            ),
            child: SingleChildScrollView(
              controller: scrollController,
              scrollDirection: Axis.vertical,
              child: Column(children: [
                // ^ MAIN - HEADER
                // ! Desktop
                SizedBox(key: navbarKeys.first),
                if (constraints.maxWidth >= KMinDesktopWidth)
                  HeaderDesktop(
                    onNavManuTap: (int navbarItemIndex) {
                      // call func
                      scrollToSection(navbarItemIndex);
                    },
                    onTap: () {
                      scrollToSection(0);
                    },
                  )
                else
                  // ! Mobile
                  HeaderMobile(
                    onLogoTap: () {
                      scrollToSection(0);
                    },
                    onMenuTap: () {
                      scaffoldKey.currentState?.openEndDrawer();
                    },
                  ),
                if (constraints.maxWidth >= KMinDesktopWidth)
                  Column(
                    children: [
                      MainDesktop(
                        screenWidth: screenSize.width,
                        screenHeight: screenSize.height,
                      ),
                    ],
                  )
                else
                  MainMobile(
                    onTap: () {
                      scrollToSection(1);
                    },
                    screenWidth: screenSize.width,
                    screenHeight: screenSize.height,
                  ),

                // ^ About

                Container(
                  key: navbarKeys[1],
                  // margin: const EdgeInsets.all(20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
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
                            padding: const EdgeInsets.only(right: 50),
                            child: Text(
                              "ABOUT",
                              style: GoogleFonts.lexend(
                                color: customColors.headText,
                                fontSize: screenSize.width / 8.5,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 35),
                      (screenSize.width >= KMinDesktopWidth)
                          ? AboutDesktop(
                              screenHeight: screenSize.height,
                              screenWidth: screenSize.width,
                            )
                          : const AboutMobile(),
                    ],
                  ),
                ),
                const SizedBox(height: 70),
                // ^ platforms & skills
                // ! Platforms
                Container(
                  key: navbarKeys[2],
                  width: screenSize.width,
                  padding: const EdgeInsets.only(
                      top: 25, bottom: 15, left: 40, right: 15),
                  color: Colors.transparent,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      ShaderMask(
                        shaderCallback: (bounds) {
                          return LinearGradient(
                            colors: [
                              customColors.scaffoldPrimary.withOpacity(0.1),
                              customColors.scaffoldPrimary.withOpacity(0.1)
                            ],
                          ).createShader(bounds);
                        },
                        blendMode: BlendMode.srcATop,
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "SKILLS",
                            style: GoogleFonts.lexend(
                              color: customColors.headText,
                              fontSize: screenSize.width / 8.5,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.topCenter,
                        child: Text(
                          "What i can do!",
                          style: GoogleFonts.lexend(
                            color: customColors.whiteSecondary,
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      if (constraints.maxWidth >= KMedDesktopWidth)
                        const PlatformDesktop()
                      else
                        const PlatformMobile(),
                      const SizedBox(height: 50),
                    ],
                  ),
                ),

                // ! Skills
                if (constraints.maxWidth >= KMedDesktopWidth)
                  const SkillDesktop()
                else
                  const SkillMobile(),

                // ^ PROJECTS
                // Container(
                // key: navbarKeys[2],
                //   height: 500,
                //   width: double.maxFinite,
                // ),

                const SizedBox(height: 50),

                // ^ CONTACT
                ContactSection(
                  key: navbarKeys[3],
                  screenWidth: screenSize.width,
                ),

                // ^ FOOTER
                const Footer(),
              ]),
            ),
          ),
        );
      },
    );
  }

  void scrollToSection(int navIndex) {
    final key = navbarKeys[navIndex];
    Scrollable.ensureVisible(
      key.currentContext!, // should not be null
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }
}
