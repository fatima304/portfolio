import 'package:flutter/material.dart';
import 'package:portfolio/constants/const.dart';
import 'package:portfolio/styles/colors.dart';

class HomePhone extends StatelessWidget {
  const HomePhone({super.key, required this.screenSize});
  final Size screenSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 30),
      height: screenSize.height,
      constraints: const BoxConstraints(
        minHeight: 560,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ShaderMask(
            shaderCallback: (bounds) {
              return LinearGradient(
                colors: [
                  ColorStyle.mainColor.withOpacity(0.6),
                  ColorStyle.mainColor.withOpacity(0.6),
                ],
              ).createShader(bounds);
            },
            blendMode: BlendMode.srcATop,
            child: Image.asset(
              'assets/3.png',
              width: screenSize.width,
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          RichText(
            text: const TextSpan(children: [
              TextSpan(
                text: 'Hey, I\'m ',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: ColorStyle.primWhite,
                ),
              ),
              TextSpan(
                text: 'Fatma Atef\n',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: ColorStyle.tealColor,
                ),
              ),
              TextSpan(
                text: ' Flutter Developer',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: ColorStyle.primWhite,
                ),
              ),
            ]),
          ),
          const SizedBox(
            height: 15,
          ),
          const SizedBox(
            width: 15,
          ),
          SizedBox(
            width: 160,
            height: 45,
            child: ElevatedButton(
              style: const ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(
                  Color.fromARGB(255, 8, 170, 175),
                ),
              ),
              onPressed: () {
                launchurl(
                    'https://drive.google.com/file/d/1xxypZmIDnK4wsmXma7Vv2eM44IfkZ1oc/view?usp=drive_link');
              },
              child: const Text(
                'Download CV',
                style: TextStyle(
                  fontSize: 17,
                  color: ColorStyle.primWhite,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
