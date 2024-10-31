import 'package:flutter/material.dart';
import 'package:portfolio/constants/const.dart';
import 'package:portfolio/models/project_model.dart';
import 'package:portfolio/styles/colors.dart';

class ProjectCard extends StatefulWidget {
  final Project project;

  const ProjectCard({super.key, required this.project});

  @override
  ProjectCardState createState() => ProjectCardState();
}

class ProjectCardState extends State<ProjectCard> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        launchurl(widget.project.githubLink);
      },
      child: MouseRegion(
        onEnter: (_) => setState(() => isHovered = true),
        onExit: (_) => setState(() => isHovered = false),
        child: SizedBox(
          width: 300,
          height: 550,
          child: Card(
            color: ColorStyle.light1,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            elevation: 4,
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        widget.project.img,
                      ),
                      const SizedBox(height: 8.0),
                      Text(
                        widget.project.title,
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: ColorStyle.primWhite,
                        ),
                      ),
                      const SizedBox(height: 4.0),
                      Text(
                        widget.project.description,
                        style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: ColorStyle.secWhite,
                        ),
                      ),
                      const Spacer(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          IconButton(
                            icon: const Icon(Icons.code),
                            onPressed: () {
                              launchurl(widget.project.githubLink);
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                if (isHovered)
                  Container(
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 69, 200, 187)
                          .withOpacity(0.3),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
