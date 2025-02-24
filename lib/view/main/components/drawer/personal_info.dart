import 'package:flutter/material.dart';

import '../../../../res/constants.dart';
import 'header_info.dart';

class PersonalInfo extends StatelessWidget {
  const PersonalInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: defaultPadding / 2,
        ),
        AreaInfoText(title: 'Contact', text: '2349079427597'),
        AreaInfoText(title: 'Email', text: 'emmanueltemiede@gmail.cpm'),
        AreaInfoText(
            title: 'LinkedIn',
            text: 'https://www.linkedin.com/in/emmanueltemiede'),
        AreaInfoText(title: 'Github', text: 'https://github.com/dacoolguy1'),
        SizedBox(
          height: defaultPadding,
        ),
        Text(
          'Skills',
          style: TextStyle(color: Colors.white),
        ),
        SizedBox(
          height: defaultPadding,
        ),
      ],
    );
  }
}
