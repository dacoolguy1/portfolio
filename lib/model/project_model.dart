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
    'assets/images/task.png',
    'https://apps.apple.com',
  ),
  Project(
    'SKIIPE',
    'Redefined business interactions with features like QR scanning, nearby business discovery, and tagged products in posts. Integrated FCM for seamless messaging and deep linking for efficient navigation. A complete business networking solution.',
    'assets/images/chat.png',
    'https://play.google.com/store/apps/details?id=com.skiipe.skiipe&hl=en',
  ),
  Project(
    'Galim',
    'A video dating app connecting users based on shared interests and geographical proximity. Implemented real-time video communication and interest-based matching algorithms to enhance the dating experience.',
    'assets/images/player.png',
    'https://play.google.com',
  ),
  Project(
    'Eronville',
    'A real estate app simplifying home searches, integrating bill payments, and professional services. Designed and implemented Flutter pages using the BLoC pattern while ensuring smooth API integration.',
    'assets/images/image.png',
    'https://play.google.com/store/apps/details?id=com.eronville.app',
  ),
  Project(
    'LullababalyLand',
    'Music app offering high-quality lullabies to soothe babies to sleep. Built with Flutter and Dart, integrated with Firebase for backend services and user authentication.',
    'assets/images/alarm.jpg',
    'https://play.google.com',
  ),
  Project(
    'InvoiceEasy AI',
    'Designed, developed, and deployed a cross-platform invoicing application using Flutter. Enables invoice generation, customer management, automated calculations, and full invoice lifecycle management, handled end-to-end from development to App Store and Play Store publishing.',
    'assets/images/recipe.png',
    'https://play.google.com/store/apps/details?id=com.onewave.invoiceeasy.app&hl=en',
  ),
  Project(
    'NotJustEvent',
    'A comprehensive social event marketplace enabling event organizers to connect with verified vendors and venues across Africa. Built from the ground up with streamlined bookings, secure payments, real-time updates, user engagement tools, and deep linking. Available on App Store and Play Store.',
    'assets/images/coffee.png',
    'https://play.google.com/store/search?q=notjustevent&c=apps&hl=en',
  ),
  Project(
    'Drivtok - CarStory',
    'Production vehicle history and car management platform. Improved app stability, authentication flows, and vehicle management features, and assisted with App Store compliance and production releases across Android and iOS.',
    'assets/images/car.png',
    'https://play.google.com/store/apps/details?id=com.drivtok.carstory_client&hl=en',
  ),
];
