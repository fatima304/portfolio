import 'package:flutter/material.dart';
import 'package:portfolio/screens/contact/widgets/contact_field.dart';
import 'package:portfolio/screens/contact/widgets/contact_icons.dart';
import 'package:portfolio/styles/colors.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(25, 20, 25, 60),
      color: ColorStyle.light1,
      child: Column(
        children: [
          const Text(
            'Contact',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24,
              color: ColorStyle.primWhite,
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          const ContactField(),
          const SizedBox(
            height: 15,
          ),
          ConstrainedBox(
            constraints: const BoxConstraints(
              maxWidth: 250,
            ),
            child: const Divider(),
          ),
          const SizedBox(
            height: 15,
          ),
          const ContactIcons(),
        ],
      ),
    );
  }
}
