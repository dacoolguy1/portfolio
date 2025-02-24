class CertificateModel {
  final String name;
  final String organization;
  final String date;
  final String skills;

  CertificateModel({
    required this.name,
    required this.organization,
    required this.date,
    required this.skills,
  });
}

List<CertificateModel> certificateList = [
  CertificateModel(
    name: 'Google Project Management Certificate',
    organization: 'Google',
    date: 'MAY 2022',
    skills: 'Project Management . Agile . Scrum . Leadership',
  ),
  CertificateModel(
    name: 'Google Data Analytics Professional Certificate',
    organization: 'Google',
    date: 'MAR 2022',
    skills: 'Data Analysis . SQL . R . Tableau . Visualization',
  ),
  CertificateModel(
    name: 'IBM Security Intelligence Engineer - Mastery Award for Students',
    organization: 'IBM',
    date: '2018',
    skills: 'Security Intelligence . Network Security . Threat Detection',
  ),
  CertificateModel(
    name: 'IBM Data Science Professional Certificate',
    organization: 'IBM',
    date: 'SEP 2022',
    skills: 'Data Science . Python . Machine Learning . Statistics',
  ),
  CertificateModel(
    name: 'IBM DevOps, Cloud, and Agile Foundations Specialization',
    organization: 'IBM',
    date: 'SEP 2022',
    skills: 'DevOps . Cloud . Agile . CI/CD . Git',
  ),
  CertificateModel(
    name: 'IBM DevOps and Software Engineering Professional Certificate',
    organization: 'IBM',
    date: 'SEP 2022',
    skills: 'DevOps . Software Engineering . Continuous Integration . Docker',
  ),
];
