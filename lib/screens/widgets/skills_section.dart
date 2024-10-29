import 'package:flutter/material.dart';
import 'package:portfolio/constants/bar_items.dart';
import 'package:portfolio/styles/colors.dart';

class SkillsSection extends StatelessWidget {
  const SkillsSection({super.key, required this.screenSize});
  final Size screenSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(25, 20, 25, 60),
      width: screenSize.width,
      color: ColorStyle.light1,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text(
            'Skills',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: ColorStyle.primWhite,
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Flexible(
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 500),
              child: Wrap(
                runSpacing: 10,
                spacing: 10,
                children: [
                  for (int i = 0; i < skills.length; i++)
                    Chip(
                      backgroundColor: ColorStyle.mainColor,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 10),
                      label: Text(
                        skills[i]['title'],
                      ),
                      avatar: Image.asset(skills[i]['img']),
                    ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
