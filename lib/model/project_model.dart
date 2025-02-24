class Project {
  final String name;
  final String description;
  final String image;
  final String link;
  Project(this.name, this.description, this.image, this.link);
}

List<Project> projectList = [
  Project(
    'Quickshop - Shop Africa',
    'A pioneering mobile e-commerce platform enabling seamless transactions across Africa, connecting businesses and shoppers. Spearheaded the development of version 3.2.0 from scratch and delivered high-quality user experiences with optimized performance.',
    'assets/images/quickshop.png',
    'https://apps.apple.com/us/app/quickshop',
  ),
  Project(
    'SKIIPE',
    'Redefined business interactions with features like QR scanning, nearby business discovery, and tagged products in posts. Integrated FCM for seamless messaging and deep linking for efficient navigation. A complete business networking solution.',
    'assets/images/skiipe.png',
    'https://play.google.com/store/apps/details?id=com.skiipe.skiipe&hl=en',
  ),
  Project(
    'Galim',
    'A video dating app connecting users based on shared interests and geographical proximity. Implemented real-time video communication and interest-based matching algorithms to enhance the dating experience.',
    'assets/images/galim.png',
    'https://play.google.com/store/apps/details?id=com.galimapp.galim',
  ),
  Project(
    'Eronville',
    'A real estate app simplifying home searches, integrating bill payments, and professional services. Designed and implemented Flutter pages using the BLoC pattern while ensuring smooth API integration.',
    'assets/images/eronville.png',
    'https://play.google.com/store/apps/details?id=com.eronville.app',
  ),
  Project(
    'LullababalyLand',
    'Music app offering high-quality lullabies to soothe babies to sleep. Built with Flutter and Dart, integrated with Firebase for backend services and user authentication.',
    'assets/images/lullababalyland.png',
    'https://play.google.com/store/apps/details?id=com.lullablyland.com',
  ),
];
