import 'package:my_portfolio/src/data/model/project.info.dart';

class ProjetcsController {
  List<ProjectInfoModel> hobbyProjectInfo = [
    ProjectInfoModel(
      image: 'lib/assets/projects/1.png',
      title: 'English Learning App',
      subtitle: 'This is a comprehensive English learning app for practicing and competing with each other.',
      androidLink: 'https://play.google.com/store/apps/details?id=com.shohatech.eduza',
    ),
    ProjectInfoModel(
      image: 'lib/assets/projects/02.png',
      title: 'English Dictionary App',
      subtitle: 'This is a dictionary application for English learners to easily look up word definitions.',
      androidLink: 'https://play.google.com/store/apps/details?id=com.shohatech.eduza_eng_dictionary',
      iosLink: "https://apps.apple.com/us/app/eduza-english-dictionary/id6443770339",
    ),
    ProjectInfoModel(image: 'lib/assets/projects/03.png', title: 'Pocket Dictionary', subtitle: 'This is a word memorising app to save and play your own words as quizes', androidLink: 'https://play.google.com/store/apps/details?id=com.shohruhak.eng_pocket_dictionary', iosLink: 'https://apps.apple.com/tr/app/pocket-dictionary-1/id6447465115'),
    ProjectInfoModel(
      image: 'lib/assets/projects/04.png',
      title: 'Tasbeeh Counter',
      subtitle: 'This is a simple dzikr counter app for muslims with persistent storage',
      androidLink: 'https://play.google.com/store/apps/details?id=com.shohatech.tasbeeh',
    ),
    ProjectInfoModel(
      image: 'lib/assets/projects/05.png',
      title: 'Todo App',
      subtitle: 'This is a simple task management app with persistent storage',
      androidLink: 'https://play.google.com/store/apps/details?id=com.shohatech.todo',
      iosLink: "https://apps.apple.com/us/app/eduza-todo/id6443970333",
    ),
    ProjectInfoModel(
      image: 'lib/assets/projects/06.png',
      title: 'NotePad App',
      subtitle: 'This is a note taking app for MacOS and Android',
      androidLink: 'https://play.google.com/store/apps/details?id=com.shohatech.notepad',
      iosLink: 'https://apps.apple.com/us/app/eduza-notepad/id6443973859',
    ),
  ];

  // ###############
  // WORK PROJECTS
  List<ProjectInfoModel> workProjectInfo = [
    ProjectInfoModel(
      image: 'lib/assets/projects/w01.png',
      title: 'English Brain Craft',
      subtitle: 'This is an English learning app for students to learn English through various methods.',
      androidLink: 'https://play.google.com/store/apps/details?id=kr.co.evolcano.donotstudy',
      iosLink: "https://apps.apple.com/kr/app/%EC%98%81%EC%96%B4%EB%A8%B8%EB%A6%AC-%EA%B3%B5%EC%9E%91%EC%86%8C/id1507102714",
    ),
    ProjectInfoModel(
      image: 'lib/assets/projects/w02.png',
      title: 'Online Shop Web App',
      subtitle: 'This is a responsive online shop web application for car engine oil.',
      webLink: 'https://www.elo.best',
    ),
    ProjectInfoModel(
      image: 'lib/assets/projects/w03.jpeg',
      title: 'Advertisement Management System',
      subtitle: 'This is an Advertisement Management System to buy, sell, and manage advertisement.',
      webLink: 'https://www.externally.unavailable.project',
    ),
  ];
}
