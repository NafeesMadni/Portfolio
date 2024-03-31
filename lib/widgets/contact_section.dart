import 'package:flutter/material.dart';
import 'package:portfolio/constants/page_links.dart';
import 'package:portfolio/constants/size.dart';
import 'package:portfolio/style/colors.dart';
import 'package:portfolio/widgets/custom_text_field.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactSection extends StatelessWidget {
  final screenWidth;
  const ContactSection({
    super.key,
    required this.screenWidth,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(25, 20, 25, 60),
      color: Colors.transparent,
      child: Column(
        children: [
          const Text(
            "Get in Touch",
            style: TextStyle(
              color: customColors.whitePrimary,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          ConstrainedBox(
            constraints: const BoxConstraints(
              maxWidth: 600, // width must if using column
              maxHeight: 100, // height must if using column
            ),
            child: (screenWidth >= KMinDesktopWidth)
                ? buildNameEmailFieldDesktop()
                : buildNameEmailFieldMobile(),
          ),
          const SizedBox(
            height: 15,
          ),
          ConstrainedBox(
            constraints: const BoxConstraints(
              maxWidth: 600,
            ),
            child: const CustomTextField(
              hintText: "Leave a message",
              maxLines: 10,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 600),
            child: Container(
              width: double.maxFinite,
              decoration: const BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    blurRadius: 10,
                    color: customColors.btnColor,
                  ),
                  BoxShadow(
                    blurRadius: 20,
                    color: customColors.btnColor,
                  ),
                ],
              ),
              child: ElevatedButton(
                style: TextButton.styleFrom(
                  elevation: 0,
                  foregroundColor: customColors.whitePrimary,
                  backgroundColor: customColors.btnColor,
                ),
                onPressed: () {},
                child: const Text(
                  "Get in touch!",
                  style: TextStyle(
                    fontSize: 16,
                    color: customColors.whitePrimary,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 270),
            child: ConstrainedBox(
              constraints: BoxConstraints(
                maxWidth: screenWidth / 2.0,
              ),
              child: const Divider(),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Wrap(
            spacing: 18,
            runSpacing: 18,
            alignment: WrapAlignment.center,
            children: [
              for (int i = 0; i < pageLinks.length; i++)
                InkWell(
                  child: Icon(
                    pageLinks[i]['title'],
                    shadows: const [
                      BoxShadow(
                        blurRadius: 4,
                        color: customColors.btnColor,
                      ),
                    ],
                  ),
                  onTap: () {
                    launchUrl(
                      Uri.parse(pageLinks[i]['link']),
                      mode: LaunchMode.externalApplication,
                    );
                  },
                ),
            ],
          )
        ],
      ),
    );
  }

  Row buildNameEmailFieldDesktop() {
    return const Row(
      children: [
        Flexible(
          child: CustomTextField(hintText: "Your name"),
        ),
        SizedBox(
          width: 15,
        ),
        Flexible(
          child: CustomTextField(hintText: "Your email"),
        ),
      ],
    );
  }

  Column buildNameEmailFieldMobile() {
    return const Column(
      children: [
        Flexible(
          child: CustomTextField(hintText: "Your name"),
        ),
        SizedBox(
          height: 15,
        ),
        Flexible(
          child: CustomTextField(hintText: "Your email"),
        ),
      ],
    );
  }
}
