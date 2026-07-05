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
    {'name': 'Flutter/Dart', 'percentage': 0.95},
    {'name': 'BLoC / Riverpod / GetX', 'percentage': 0.92},
    {'name': 'Firebase', 'percentage': 0.88},
    {'name': 'REST APIs / Socket.IO', 'percentage': 0.85},
    {'name': 'CI/CD (GitHub Actions, Fastlane)', 'percentage': 0.80},
    {'name': 'Node.js / Laravel', 'percentage': 0.75},
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
                backgroundImage: AssetImage('assets/images/profile.jpeg'),
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
              'Senior Flutter Mobile Developer',
              style: TextStyle(
                color: Colors.white70,
                fontSize: 16,
              ),
            ),
          ),
          const SizedBox(height: 4),
          const Center(
            child: Text(
              'Lagos, Nigeria',
              style: TextStyle(
                color: Colors.white60,
                fontSize: 14,
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
      'role': 'Mobile Developer',
      'company': 'Aparte Africa',
      'location': 'Lagos, Nigeria (Remote)',
      'duration': 'September 2025 – Present',
      'descriptions': [
        'Developing a cross-platform short-term rental marketplace for Africa with dual Guest and Host interfaces.',
        'Architected feature-isolated modules (booking, explore, messaging, profile, host management) using BLoC with freezed code generation.',
        'Built end-to-end booking flow — property search, Flutterwave payment processing, and real-time booking status tracking.',
        'Integrated Smile ID for KYC/identity verification including liveness checks and document capture.',
        'Developed real-time messaging system using Socket.IO with FCM push notifications and notification deep linking for 30+ action enums.',
      ]
    },
    {
      'role': 'Flutter Mobile Developer (Contract)',
      'company': 'Drivtok',
      'location': 'Serbia (Remote)',
      'duration': 'September 2025 – November 2025',
      'descriptions': [
        'Stabilized a production vehicle management app (v1.0.50, 70+ builds) using Clean Architecture with BLoC/Cubit.',
        'Resolved critical bugs across authentication, VIN-based vehicle lookup (Google ML Kit OCR), and garage management.',
        'Implemented GDPR-compliant account deletion flows and led Apple review compliance and production deployment.',
      ]
    },
    {
      'role': 'Mobile Developer (Freelance)',
      'company': 'SPIKK',
      'location': 'Lagos, Nigeria (Remote)',
      'duration': 'December 2024 – April 2026',
      'descriptions': [
        'Developed an on-demand errand and delivery app (v1.0.22, 72 builds) using Riverpod with Go Router navigation.',
        'Built dual-interface order system with real-time Google Maps tracking, polyline routing, and turn-by-turn rider navigation.',
        'Integrated Monnify and Paystack payment gateways, in-app wallet, and Firebase Crashlytics/Remote Config.',
      ]
    },
    {
      'role': 'Senior Mobile Developer',
      'company': 'NotJustEvent',
      'location': 'Lagos, Nigeria (Remote)',
      'duration': 'January 2024 – November 2024',
      'descriptions': [
        'Built a social event marketplace from the ground up, connecting event organizers with verified vendors and venues across Africa.',
        'Integrated RESTful APIs for real-time event updates, authentication, booking management, and secure payment processing.',
        'Collaborated with UI/UX designers to deliver responsive, pixel-perfect interfaces in Agile sprint cycles.',
      ]
    },
    {
      'role': 'Senior Mobile Developer',
      'company': 'Coastal Group Tech (Quickshop)',
      'location': 'Enugu, Nigeria (Remote)',
      'duration': 'May 2024 – October 2024',
      'descriptions': [
        'Led development of Quickshop v3.2.0, a multi-vendor e-commerce platform with real-time order tracking and secure payments.',
        'Designed the codebase architecture and enforced scalability best practices across the mobile team.',
      ]
    },
    {
      'role': 'Lead Mobile Developer',
      'company': 'SKIIPE',
      'location': 'Lagos, Nigeria (Remote)',
      'duration': 'April 2023 – July 2024',
      'descriptions': [
        'Led development of a business-focused platform with FCM messaging, Firebase Dynamic Links, and Google Maps discovery.',
        'Set up Sentry and Crashlytics for production monitoring, reducing unhandled exception rate. Managed full release cycles.',
      ]
    },
    {
      'role': 'Mobile Developer',
      'company': 'ERONVILLE',
      'location': 'Lagos, Nigeria (Remote)',
      'duration': 'January 2023 – July 2023',
      'descriptions': [
        'Built a real estate application using Flutter and BLoC with location-based property discovery and payment integration.',
        'Created responsive UI components and conducted code reviews to maintain quality standards.',
      ]
    },
    {
      'role': 'Flutter Developer',
      'company': 'Goshen Finance',
      'location': 'Lagos, Nigeria (Remote)',
      'duration': 'April 2022 – December 2022',
      'descriptions': [
        'Developed cross-platform financial applications optimized for multiple screen sizes.',
        'Improved app performance by 50% through code optimization and set up CI pipelines for automated builds.',
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
    'Google Project Management Certificate — 2022',
    'IBM DevOps and Software Engineering Professional Certificate — 2022',
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
            'Senior Flutter Developer with 3+ years of experience architecting, developing, and shipping production cross-platform mobile applications serving thousands of users across Africa and Europe. Deep expertise in Flutter/Dart with BLoC, Riverpod, and GetX state management, specializing in complex integrations — real-time messaging (Socket.IO), payment processing (Flutterwave, Paystack), KYC verification (Smile ID), and notification deep linking systems. Experienced in leading mobile development efforts, establishing clean architecture patterns, and managing full App Store and Play Store release cycles.',
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
                name: 'FlyPro',
                platform: 'iOS & Android',
                color: Colors.cyanAccent,
              ),
              ProjectBadge(
                name: 'Aparte Africa',
                platform: 'iOS & Android',
                color: Colors.tealAccent,
              ),
              ProjectBadge(
                name: 'InvoiceEasy AI',
                platform: 'iOS & Android',
                color: Colors.amberAccent,
              ),
              ProjectBadge(
                name: 'Drivtok',
                platform: 'iOS & Android',
                color: Colors.blue,
              ),
              ProjectBadge(
                name: 'Spikk',
                platform: 'iOS & Android',
                color: Colors.greenAccent,
              ),
              ProjectBadge(
                name: 'Quickshop',
                platform: 'iOS & Android',
                color: Colors.purpleAccent,
              ),
              ProjectBadge(
                name: 'NotJustEvent',
                platform: 'iOS & Android',
                color: Colors.orangeAccent,
              ),
              ProjectBadge(
                name: 'SKIIPE',
                platform: 'iOS & Android',
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
