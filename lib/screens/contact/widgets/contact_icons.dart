import 'package:flutter/material.dart';
import 'package:portfolio/constants/const.dart';

class ContactIcons extends StatelessWidget {
  const ContactIcons({super.key});

 

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 10,
      runSpacing: 10,
      alignment: WrapAlignment.center,
      children: [
        InkWell(
          onTap: () {
            launchurl('https://github.com/fatima304');
          },
          child: Image.asset(
            width: 28,
            'assets/github.png',
          ),
        ),
        InkWell(
          onTap: () {
            launchurl('https://www.linkedin.com/in/fatmaatef11/');
          },
          child: Image.asset(
            width: 28,
            'assets/linkedin.png',
          ),
        ),
        InkWell(
          onTap: () {
            launchurl(
                'https://www.facebook.com/profile.php?id=100008474567689');
          },
          child: Image.asset(
            width: 28,
            'assets/facebook.png',
          ),
        ),
        InkWell(
          onTap: () {
            launchurl('mailto:fatmaatef015@gmail.com');
          },
          child: Image.asset(
            width: 28,
            'assets/mail.png',
          ),
        ),
        InkWell(
          onTap: () {
            launchurl('https://t.me/fatma_atef');
          },
          child: Image.asset(
            width: 25,
            'assets/telegram.png',
          ),
        ),
      ],
    );
  }
}
