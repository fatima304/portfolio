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
      child: const Column(
        children: [
          Text(
            'Contact',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24,
              color: ColorStyle.primWhite,
            ),
          ),
          SizedBox(
            height: 25,
          ),
          ContactField(),
          SizedBox(
            height: 15,
          ),
          SizedBox(
            // constraints: const BoxConstraints(
            //   maxWidth: 250,
            // ),
            width: 250,
            child: Divider(),
          ),
          SizedBox(
            height: 15,
          ),
          ContactIcons(),
        ],
      ),
    );
  }
}
