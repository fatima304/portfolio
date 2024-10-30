import 'package:flutter/material.dart';
import 'package:portfolio/styles/colors.dart';

class ExperienceCard extends StatelessWidget {
  const ExperienceCard(
      {super.key,
      required this.isHovered,
      required this.onHoverEnter,
      required this.onHoverExit});

  final bool isHovered;
  final VoidCallback onHoverEnter;
  final VoidCallback onHoverExit;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => onHoverEnter(),
      onExit: (_) => onHoverExit(),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
          side: BorderSide(
            color: isHovered ? ColorStyle.tealColor : Colors.transparent,
            width: 2,
          ),
        ),
        color: ColorStyle.fieldColor,
        elevation: 4,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Experience",
                style: TextStyle(
                  fontSize: 16,
                  color: ColorStyle.mainColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Container(
                width: 30,
                height: 1,
                color: ColorStyle.tealColor,
                margin: const EdgeInsets.symmetric(vertical: 4),
              ),
              const SizedBox(height: 8),
              _buildExperienceDetail(
                role: "Flutter Developer",
                company: "Digital Egypt Pioneers Initiative (DEPI)",
                duration: "April 2024 - Present",
                responsibilities:
                    "Developed and maintained responsive mobile applications using Flutter, collaborating with designers and backend developers to ensure seamless user experiences across devices.",
              ),
              const SizedBox(height: 8),
              _buildExperienceDetail(
                role: "User Interface Intern",
                company: "Information Technology Institute (ITI)",
                duration: "Jul 2022 - Aug 2022",
                responsibilities:
                    "Designed and developed websites for small businesses using HTML, CSS, and JavaScript.",
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget _buildExperienceDetail({
  required String role,
  required String company,
  required String duration,
  required String responsibilities,
}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        role,
        style: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      ),
      Text(
        company,
        style: const TextStyle(
          color: ColorStyle.mainColor,
        ),
      ),
      Text(
        duration,
        style: TextStyle(color: Colors.grey[600]),
      ),
      const SizedBox(height: 4),
      Text(
        responsibilities,
        style: TextStyle(color: Colors.grey[800]),
      ),
    ],
  );
}
