class ProjectUtils {
  final String image;
  final String title;
  final String subtitle;
  final String? webLink;

  ProjectUtils({
    required this.image,
    required this.title,
    required this.subtitle,
    this.webLink,
  });
}

List<ProjectUtils> workProjectUtils = [
  ProjectUtils(
    image: 'images/projects/photo1.png',
    title: 'Simon Says Game',
    subtitle:
        'This is an English learning app for students to learn English through various methods.',
    webLink: 'https://github.com/Sneha-2804/Simon-Says-Game',
  ),
  ProjectUtils(
    image: 'images/projects/photo2.png',
    title: 'Api Calling University',
    subtitle:
        'This is a responsive online shop web application for car engine oil.',
    webLink: 'https://en.wikipedia.org/wiki/API',
  ),
  ProjectUtils(
    image: 'images/projects/photo3.png',
    title: 'Spotify Clone',
    subtitle:
        'This is an Advertisement Management System to buy, sell, and manage advertisement.',
    webLink: 'https://github.com/Sneha-2804/Spotify-Clone',
  ),
  ProjectUtils(
    image: 'images/projects/photo4.png',
    title: 'Pet Adopt',
    subtitle:
        'This is an English learning app for students to learn English through various methods.',
    webLink: 'https://github.com/Sneha-2804/PetDog',
  ),
];
