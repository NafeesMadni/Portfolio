import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/style/headerDecoration.dart';
import 'package:portfolio/widgets/siteIcon.dart';

class HeaderMobile extends StatelessWidget {
  final VoidCallback? onLogoTap;
  final VoidCallback? onMenuTap;

  const HeaderMobile({super.key, this.onLogoTap, this.onMenuTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(20, 15, 20, 5),
      height: 50,
      width: double.maxFinite,
      decoration: KHeaderDecoration,
      child: Row(
        children: [
          siteIcon(
            iconSize: 35,
            onTap: onLogoTap,
          ),
          const Spacer(),
          IconButton(
            onPressed: onMenuTap,
            icon: const Icon(
              FontAwesomeIcons.barsStaggered,
              size: 23,
            ),
          ),
          const SizedBox(
            width: 10,
          ),
        ],
      ),
    );
  }
}
