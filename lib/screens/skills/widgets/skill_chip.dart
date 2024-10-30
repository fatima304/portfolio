import 'package:flutter/material.dart';
import 'package:portfolio/constants/bar_items.dart';
import 'package:portfolio/styles/colors.dart';

class SkillChip extends StatefulWidget {
  const SkillChip({super.key});

  @override
  _SkillChipState createState() => _SkillChipState();
}

class _SkillChipState extends State<SkillChip> {
   List<bool> _isHovered = [];

  @override
  void initState() {
    super.initState();
    _isHovered = List.generate(skills.length, (_) => false);
  }

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 500),
        child: Wrap(
          runSpacing: 10,
          spacing: 10,
          children: [
            for (int i = 0; i < skills.length; i++)
              MouseRegion(
                onEnter: (_) => setState(() => _isHovered[i] = true),
                onExit: (_) => setState(() => _isHovered[i] = false),
                child: Chip(
                  backgroundColor: _isHovered[i]
                      ? Colors.teal.withOpacity(0.7)  
                      : ColorStyle.mainColor, 
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 10,
                  ),
                  label: Text(
                    skills[i]['title'],
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: ColorStyle.primWhite,
                    ),
                  ),
                  avatar: Image.asset(skills[i]['img']),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
