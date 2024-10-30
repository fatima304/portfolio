class Project {
  final String title;
  final String description;
  final String img;
  final String githubLink;

  Project({
    required this.title,
    required this.description,
    required this.img,
    required this.githubLink,
  });
}

final List<Project> projects = [
  Project(
    title: 'CRC App',
    description:
        'A Flutter app integrated with a Laravel backend, designed to facilitate appointments between users and doctors. Key features include the ability to upload genetic files for quick colon cancer checks, schedule appointments with registered doctors, view doctor details, and submit ratings and feedback.',
    img: 'assets/crc.jpg',
    githubLink: 'https://github.com/fatima304/ColonApp',
  ),
  Project(
    title: 'Fruit Hub App',
    description:
        'E-commerce app that simplifies the process of browsing and purchasing fresh fruits and combos. Users can easily select their favorites, add them to their basket, and proceed to checkout for a hassle-free shopping experience.',
    img: 'assets/fruit.png',
    githubLink: 'https://github.com/fatima304/fruit_app',
  ),
  Project(
    title: 'Beauty App',
    description:
        'Developed an e-commerce application focused on makeup and beauty products, allowing users to browse a wide range of items effortlessly. The app features user-friendly navigation, detailed product descriptions, and an easy checkout process, providing a seamless shopping experience for beauty enthusiasts.',
    img: 'assets/beauty.jpg',
    githubLink: 'https://github.com/fatima304/ecommerce_app',
  ),
  Project(
    title: 'Newzia App',
    description:
        'Developed a global news app that provides users with real-time information across various categories, including business, sports, and technology. The app organizes articles by interest, ensuring users can easily access the latest news relevant to them',
    img: 'assets/news.jpg',
    githubLink: 'https://github.com/fatima304/Newzia',
  ),
  Project(
    title: 'Bookly App',
    description:
        'Created Bookly, an intuitive mobile application that offers users seamless access to a diverse library of top-rated books. The app features easy download and reading options, enhancing the overall user experience for book lovers.',
    img: 'assets/book.jpg',
    githubLink: 'https://github.com/fatima304/BooklyApp',
  ),
  Project(
    title: 'Noteria App',
    description:
        'Designed a user-friendly note-taking app using Flutter, which provides users with a digital space to effortlessly store and organize their thoughts. The app includes features for saving, editing, and deleting notes, and it utilizes Hive as a local database for efficient note management.',
    img: 'assets/note.png',
    githubLink: 'https://github.com/fatima304/Noteria',
  ),
];
