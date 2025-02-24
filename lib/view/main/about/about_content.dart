import 'package:flutter/material.dart';
import 'package:flutter_portfolio/res/constants.dart';
import 'package:flutter_portfolio/view/main/about/about_profile_card.dart';

class TitleText extends StatelessWidget {
  final String prefix;
  final String title;

  const TitleText({
    super.key,
    required this.prefix,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "$prefix ",
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  color: Colors.grey,
                  fontWeight: FontWeight.w600,
                ),
          ),
          Text(
            title,
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
          ),
          const SizedBox(width: 8),
          Expanded(
            child: Container(
              height: 1,
              color: Colors.grey.withOpacity(0.3),
            ),
          ),
        ],
      ),
    );
  }
}

class AboutContentDesktop extends StatelessWidget {
  const AboutContentDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 1,
            child: ProfileCard(),
          ),
          const SizedBox(width: defaultPadding * 2),
          Expanded(
            flex: 2,
            child: BiographySection(),
          ),
        ],
      ),
    );
  }
}

class AboutContentTablet extends StatelessWidget {
  const AboutContentTablet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: Column(
        children: [
          ProfileCard(),
          const SizedBox(height: defaultPadding * 2),
          BiographySection(),
        ],
      ),
    );
  }
}

class AboutContentMobile extends StatelessWidget {
  const AboutContentMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          ProfileCard(),
          const SizedBox(height: defaultPadding * 2),
          BiographySection(),
        ],
      ),
    );
  }
}
