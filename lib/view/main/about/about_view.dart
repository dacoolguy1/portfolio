import 'package:flutter/material.dart';
import 'package:flutter_portfolio/res/constants.dart';
import 'package:flutter_portfolio/view%20model/responsive.dart';
import 'package:flutter_portfolio/view/main/about/about_content.dart';

class AboutView extends StatelessWidget {
  const AboutView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (Responsive.isLargeMobile(context))
              const SizedBox(
                height: defaultPadding,
              ),
            const TitleText(prefix: 'About', title: 'Me'),
            const SizedBox(
              height: defaultPadding,
            ),
            Responsive(
              desktop: const AboutContentDesktop(),
              extraLargeScreen: const AboutContentDesktop(),
              tablet: const AboutContentTablet(),
              largeMobile: const AboutContentMobile(),
              mobile: const AboutContentMobile(),
            ),
          ],
        ),
      ),
    );
  }
}
