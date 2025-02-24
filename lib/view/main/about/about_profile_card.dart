import 'package:flutter/material.dart';
import 'package:flutter_portfolio/res/constants.dart';
import 'package:flutter_portfolio/view%20model/responsive.dart';

class ProfileCard extends StatelessWidget {
  ProfileCard({super.key});

  final List<Map<String, String>> contactInfo = [
    {'icon': 'assets/icons/email.png', 'text': 'emmanueltemiede@gmail.com'},
    {'icon': 'assets/icons/phone.png', 'text': '+234-907-942-7597'},
    {'icon': 'assets/icons/github.png', 'text': 'github.com/dacoolguy1'},
    {
      'icon': 'assets/icons/linkedin.png',
      'text': 'linkedin.com/in/emmanueltemiede'
    },
  ];

  final List<Map<String, dynamic>> skills = [
    {'name': 'Flutter', 'percentage': 0.95},
    {'name': 'Dart', 'percentage': 0.90},
    {'name': 'Firebase', 'percentage': 0.85},
    {'name': 'Node.js', 'percentage': 0.80},
    {'name': 'Python', 'percentage': 0.75},
    {'name': 'JavaScript', 'percentage': 0.70},
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        gradient: const LinearGradient(
          colors: [Colors.pinkAccent, Colors.blue],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.pink.withOpacity(0.6),
            offset: const Offset(-2, 0),
            blurRadius: 15,
          ),
          BoxShadow(
            color: Colors.blue.withOpacity(0.6),
            offset: const Offset(2, 0),
            blurRadius: 15,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Center(
            child: CircleAvatar(
              radius: 70,
              backgroundColor: Colors.white,
              child: CircleAvatar(
                radius: 65,
                backgroundImage: AssetImage('assets/images/profile.jpg'),
              ),
            ),
          ),
          const SizedBox(height: defaultPadding),
          const Center(
            child: Text(
              'Temiede Emmanuel Eseoghene',
              style: TextStyle(
                color: Colors.white,
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          const Center(
            child: Text(
              'Mobile Developer',
              style: TextStyle(
                color: Colors.white70,
                fontSize: 16,
              ),
            ),
          ),
          const SizedBox(height: defaultPadding),
          const Divider(color: Colors.white30),
          const SizedBox(height: defaultPadding / 2),
          const Text(
            'Contact Information',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: defaultPadding / 2),
          ...contactInfo.map((info) => Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: Row(
                  children: [
                    //     Icon(info['icon'],size: 20, color: Colors.white,)
                    // ,    const SizedBox(width: 8),
                    Expanded(
                      child: Text(
                        info['text']!,
                        style: const TextStyle(color: Colors.white),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              )),
          const SizedBox(height: defaultPadding),
          const Text(
            'Skills',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: defaultPadding / 2),
          ...skills.map((skill) => Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        skill['name'],
                        style: const TextStyle(color: Colors.white),
                      ),
                      Text(
                        '${(skill['percentage'] * 100).toInt()}%',
                        style: const TextStyle(color: Colors.white70),
                      ),
                    ],
                  ),
                  const SizedBox(height: 4),
                  LinearProgressIndicator(
                    value: skill['percentage'],
                    backgroundColor: Colors.white30,
                    valueColor:
                        const AlwaysStoppedAnimation<Color>(Colors.white),
                  ),
                  const SizedBox(height: 12),
                ],
              )),
        ],
      ),
    );
  }
}

class BiographySection extends StatelessWidget {
  BiographySection({super.key});

  final List<Map<String, dynamic>> experiences = [
    {
      'role': 'Mobile Developer (Remote)',
      'company': 'NOTJUSTEVENT',
      'location': 'Lagos, Nigeria',
      'duration': 'January 2024 – November 2024',
      'descriptions': [
        'Led a team to deliver high-quality Flutter applications using GetX for state management.',
        'Converted design prototypes into functional apps while integrating real-time APIs.',
        'Resolved bugs and enhanced performance with Agile/Scrum methodologies.'
      ]
    },
    {
      'role': 'Mobile Developer (Remote)',
      'company': 'SKIIPE',
      'location': 'Lagos, Nigeria',
      'duration': 'April 2023 – June 2024',
      'descriptions': [
        'Developed and maintained the SKIIPE app with robust Dart and Flutter code.',
        'Integrated Google Maps and Firebase services for enhanced app functionality.',
        'Achieved significant error reduction by implementing Sentry and Crashlytics.'
      ]
    },
    {
      'role': 'Mobile Developer (Remote)',
      'company': 'ERONVILLE',
      'location': 'Lagos, Nigeria',
      'duration': 'January 2023 – July 2023',
      'descriptions': [
        'Designed and implemented Flutter pages using the BLoC pattern.',
        'Ensured smooth API integration and resolved bugs promptly.',
        'Collaborated in an Agile environment to meet project deadlines.'
      ]
    },
  ];

  final List<Map<String, String>> education = [
    {
      'institution': 'Covenant University, Nigeria',
      'degree': 'Bachelor of Engineering (B.Eng), Computer Engineering',
      'duration': '2016 – 2022'
    },
    {
      'institution': 'ALX Software Engineering Program',
      'degree': 'Software Engineering',
      'duration': 'August 2022 – October 2023'
    }
  ];

  final List<String> certifications = [
    'Google Project Management Certificate — May 2022',
    'Google Data Analytics Professional Certificate — March 2022',
    'IBM Security Intelligence Engineer Mastery Award — 2018',
    'IBM Data Science Professional Certificate — September 2022',
    'IBM DevOps and Software Engineering Professional Certificate — September 2022'
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
        color: Colors.black12,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.white10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Professional Summary',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: defaultPadding / 2),
          const Text(
            'Driven and innovative software engineer specializing in mobile application development with expertise in Flutter. Possess a strong foundation in data analysis and backend technologies such as Node.js and Django. Passionate about delivering high-quality applications and collaborating with goal-driven, agile teams. Proficient in full-stack development and dedicated to continuous learning and professional growth.',
            style: TextStyle(
              color: Colors.white70,
              height: 1.5,
            ),
          ),
          const SizedBox(height: defaultPadding),
          const Text(
            'Work Experience',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: defaultPadding / 2),
          ...experiences.map((exp) => ExperienceCard(experience: exp)),
          const SizedBox(height: defaultPadding),
          const Text(
            'Education',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: defaultPadding / 2),
          ...education.map((edu) => Padding(
                padding: const EdgeInsets.only(bottom: 16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      edu['institution']!,
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      edu['degree']!,
                      style: const TextStyle(color: Colors.white70),
                    ),
                    const SizedBox(height: 2),
                    Text(
                      edu['duration']!,
                      style: const TextStyle(
                        color: Colors.white60,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ],
                ),
              )),
          const SizedBox(height: defaultPadding),
          const Text(
            'Certifications',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: defaultPadding / 2),
          ...certifications.map((cert) => Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Icon(
                      Icons.check_circle,
                      color: Colors.greenAccent,
                      size: 16,
                    ),
                    const SizedBox(width: 8),
                    Expanded(
                      child: Text(
                        cert,
                        style: const TextStyle(color: Colors.white70),
                      ),
                    ),
                  ],
                ),
              )),
          const SizedBox(height: defaultPadding),
          const Text(
            'Notable Projects',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: defaultPadding / 2),
          Wrap(
            spacing: 10,
            runSpacing: 10,
            children: [
              ProjectBadge(
                name: 'Quickshop',
                platform: 'iOS',
                color: Colors.blue,
              ),
              ProjectBadge(
                name: 'SKIIPE',
                platform: 'Android',
                color: Colors.greenAccent,
              ),
              ProjectBadge(
                name: 'Galim',
                platform: 'Android',
                color: Colors.purpleAccent,
              ),
              ProjectBadge(
                name: 'Eronville',
                platform: 'Android',
                color: Colors.orangeAccent,
              ),
              ProjectBadge(
                name: 'LullababalyLand',
                platform: 'Android',
                color: Colors.redAccent,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class ExperienceCard extends StatelessWidget {
  final Map<String, dynamic> experience;

  const ExperienceCard({super.key, required this.experience});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Text(
                  '${experience['role']} | ${experience['company']}',
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                  ),
                ),
              ),
              if (!Responsive.isMobile(context))
                Text(
                  experience['duration'],
                  style: const TextStyle(
                    color: Colors.white60,
                    fontStyle: FontStyle.italic,
                  ),
                ),
            ],
          ),
          const SizedBox(height: 2),
          if (Responsive.isMobile(context))
            Text(
              experience['duration'],
              style: const TextStyle(
                color: Colors.white60,
                fontStyle: FontStyle.italic,
              ),
            ),
          Text(
            experience['location'],
            style: const TextStyle(color: Colors.white70),
          ),
          const SizedBox(height: 8),
          ...experience['descriptions'].map<Widget>((desc) => Padding(
                padding: const EdgeInsets.only(bottom: 4.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('• ', style: TextStyle(color: Colors.white70)),
                    Expanded(
                      child: Text(
                        desc,
                        style: const TextStyle(color: Colors.white70),
                      ),
                    ),
                  ],
                ),
              )),
        ],
      ),
    );
  }
}

class ProjectBadge extends StatelessWidget {
  final String name;
  final String platform;
  final Color color;

  const ProjectBadge({
    super.key,
    required this.name,
    required this.platform,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(
        color: color.withOpacity(0.2),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: color.withOpacity(0.5)),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            name,
            style: TextStyle(
              color: color,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(width: 4),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
            decoration: BoxDecoration(
              color: color.withOpacity(0.8),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Text(
              platform,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 10,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
