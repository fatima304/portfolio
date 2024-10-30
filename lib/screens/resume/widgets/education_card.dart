import 'package:flutter/material.dart';
import 'package:portfolio/styles/colors.dart';

class EducationCard extends StatelessWidget {
  const EducationCard(
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
                "Education",
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
              _buildEducationDetail(
                title: "Bachelor of Computer Science and Information",
                institution: "Menofia University",
                duration: "2019 - 2023",
              ),
              const SizedBox(height: 8),
              _buildEducationDetail(
                title: "Flutter Development BootCamp",
                institution:
                    "Career 180 - Plan International - Learn IT Academy",
                duration: "September 2024 - Present",
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget _buildEducationDetail({
  required String title,
  required String institution,
  required String duration,
}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        title,
        style: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      ),
      Text(
        institution,
        style: const TextStyle(
          color: ColorStyle.mainColor,
        ),
      ),
      Text(
        duration,
        style: TextStyle(color: Colors.grey[600]),
      ),
    ],
  );
}
