import 'package:flutter/material.dart';
import 'package:portfolio/screens/resume/widgets/education_card.dart';
import 'package:portfolio/screens/resume/widgets/experience_card.dart';

class ResumeSection extends StatefulWidget {
  const ResumeSection({super.key});

  @override
  ResumeSectionState createState() => ResumeSectionState();
}

class ResumeSectionState extends State<ResumeSection> {
  bool _isHoveredEducation = false;
  bool _isHoveredExperience = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: EducationCard(
              isHovered: _isHoveredEducation,
              onHoverEnter: () => setState(() => _isHoveredEducation = true),
              onHoverExit: () => setState(() => _isHoveredEducation = false),
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: ExperienceCard(
              isHovered: _isHoveredExperience,
              onHoverEnter: () => setState(() => _isHoveredExperience = true),
              onHoverExit: () => setState(() => _isHoveredExperience = false),
            ),
          ),
        ],
      ),
    );
  }
}
