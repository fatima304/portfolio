import 'package:flutter/material.dart';
import 'package:portfolio/screens/skills/widgets/skill_chip.dart';
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
      child: const Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'Skills',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: ColorStyle.primWhite,
            ),
          ),
          SizedBox(
            height: 15,
          ),
          SkillChip(),
        ],
      ),
    );
  }
}
