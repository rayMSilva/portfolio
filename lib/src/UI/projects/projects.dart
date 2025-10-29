import 'package:flutter/material.dart';
import 'package:my_portfolio/src/UI/projects/widgets/hobby.projects.dart';
import 'package:my_portfolio/src/UI/projects/widgets/work.projects.dart';

class Projects extends StatelessWidget {
  const Projects({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [WorkProjects(), HobbyProjects()],
    );
  }
}
