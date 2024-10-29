import 'package:flutter/material.dart';
import 'package:portfolio/styles/colors.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(25, 20, 25, 60),
      height: 500,
      width: double.maxFinite,
      color: ColorStyle.light1,
      child: const Column(
        children: [
          Text(
            'Get in touch',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24,
              color: ColorStyle.primWhite,
            ),
          ),
        ],
      ),
    );
  }
}
