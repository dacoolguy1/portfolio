class Project {
  final String name;
  final String description;
  /// Image URL (network) or asset path (e.g. assets/images/...).
  final String image;
  final String link;
  Project(this.name, this.description, this.image, this.link);

  bool get isNetworkImage => image.startsWith('http://') || image.startsWith('https://');
}

// App images: Play Store / mobile app screenshots or icons where available.
List<Project> projectList = [
  Project(
    'Drivtok - CarStory',
    'Production vehicle history and car management platform. Improved app stability, authentication flows, and vehicle management features, and assisted with App Store compliance and production releases across Android and iOS.',
    'https://play-lh.googleusercontent.com/AMLMyx0tQJqNNcJe5po7Qx5k-VMyGlS8iMaxSEl9_O-NUJmIkadUZYTyJC2agzave7He=w526-h296-rw',
    'https://play.google.com/store/apps/details?id=com.drivtok.carstory_client&hl=en',
  ),
  Project(
    'NotJustEvent',
    'A comprehensive social event marketplace enabling event organizers to connect with verified vendors and venues across Africa. Built from the ground up with streamlined bookings, secure payments, real-time updates, user engagement tools, and deep linking. Available on App Store and Play Store.',
    'https://images.unsplash.com/photo-1540575467063-178bf50e2f54?w=800&q=80',
    'https://play.google.com/store/search?q=notjustevent&c=apps&hl=en',
  ),
  Project(
    'InvoiceEasy AI',
    'Designed, developed, and deployed a cross-platform invoicing application using Flutter. Enables invoice generation, customer management, automated calculations, and full invoice lifecycle management, handled end-to-end from development to App Store and Play Store publishing.',
    'https://play-lh.googleusercontent.com/ItI2ADRKeNLQj0_X7T2HjRs8IGG73bAaZnskITT9OfwaoMKJEPLqJWsdpk4wqypVCwGSYTx9sTQDFfRxa4wB-MA=w526-h296-rw',
    'https://play.google.com/store/apps/details?id=com.onewave.invoiceeasy.app&hl=en',
  ),
  Project(
    'Spikk',
    'On-demand errand and delivery app for Lagos. Integrated secure payments (Monnify, Paystack), Google Maps for real-time location tracking, and developed the rider interface for delivery personnel to fulfill nearby customer requests.',
    'https://images.unsplash.com/photo-1566576912321-d58ddd7a6598?w=800&q=80',
    'https://play.google.com/store/apps/details?id=com.skiipe.skiipe&hl=en',
  ),
  Project(
    'Quickshop - Shop Africa',
    'A pioneering mobile e-commerce platform enabling seamless transactions across Africa, connecting businesses and shoppers. Spearheaded the development of version 3.2.0 from scratch and delivered high-quality user experiences with optimized performance.',
    'https://images.unsplash.com/photo-1607082348824-0a96f2a4b9da?w=800&q=80',
    'https://apps.apple.com',
  ),
  Project(
    'SKIIPE',
    'Redefined business interactions with features like QR scanning, nearby business discovery, and tagged products in posts. Integrated FCM for seamless messaging and deep linking for efficient navigation. A complete business networking solution.',
    'https://images.unsplash.com/photo-1557804506-669a67965ba0?w=800&q=80',
    'https://play.google.com/store/apps/details?id=com.skiipe.skiipe&hl=en',
  ),
  Project(
    'Galim',
    'A video dating app connecting users based on shared interests and geographical proximity. Implemented real-time video communication and interest-based matching algorithms to enhance the dating experience.',
    'https://images.unsplash.com/photo-1529156069898-49953e39b3ac?w=800&q=80',
    'https://play.google.com',
  ),
  Project(
    'Eronville',
    'A real estate app simplifying home searches, integrating bill payments, and professional services. Designed and implemented Flutter pages using the BLoC pattern while ensuring smooth API integration.',
    'https://images.unsplash.com/photo-1560518883-ce09059eeffa?w=800&q=80',
    'https://play.google.com/store/apps/details?id=com.eronville.app',
  ),
  Project(
    'LullababalyLand',
    'Music app offering high-quality lullabies to soothe babies to sleep. Built with Flutter and Dart, integrated with Firebase for backend services and user authentication.',
    'https://images.unsplash.com/photo-1519689680058-324335c77eba?w=800&q=80',
    'https://play.google.com',
  ),
];
