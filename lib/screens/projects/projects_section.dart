import 'package:flutter/material.dart';
import 'package:portfolio/models/project_model.dart';
import 'package:portfolio/screens/projects/widgets/project_card.dart';

class ProjectSection extends StatelessWidget {
  const ProjectSection({super.key});

 
  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(maxWidth: 1000),
      child: Wrap(
        runSpacing: 10,
        spacing: 10,
        children: [
          for (int i = 0; i < projects.length; i++)
            ProjectCard(
              project: projects[i],
            ),
        
        ],
      ),
    );
  }
}
