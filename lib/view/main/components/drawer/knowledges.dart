import 'package:flutter/material.dart';

import 'knowledge.dart';

class Knowledges extends StatelessWidget {
  const Knowledges({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: Text('Knowledge',style: TextStyle(color: Colors.white),),
        ),
        KnowledgeText(knowledge: 'Flutter, Dart'),
        KnowledgeText(knowledge: 'State Management: BLoC, GetX, Riverpod, Provider'),
        KnowledgeText(knowledge: 'Firebase (FCM, Analytics, Crashlytics)'),
        KnowledgeText(knowledge: 'REST APIs, Google Maps API, Deep Linking'),
        KnowledgeText(knowledge: 'Git, GitHub, CI/CD'),
        KnowledgeText(knowledge: 'Agile, Scrum, Test-Driven Development'),
      ],
    );
  }

}
