import 'package:flutter/material.dart';
import 'package:portfolio/constants/const.dart';
import 'package:portfolio/styles/colors.dart';

class HomeDesktop extends StatelessWidget {
  const HomeDesktop({
    super.key,
    required this.screenSize,
  });

  final Size screenSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(minHeight: 350),
      height: screenSize.height / 1.2,
      margin: const EdgeInsets.symmetric(
        horizontal: 20,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
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
                width: 200,
                height: 50,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                      const Color.fromARGB(255, 8, 170, 175),
                    ),
                  ),
                  onPressed: () {
                    launchurl('https://drive.google.com/file/d/1xxypZmIDnK4wsmXma7Vv2eM44IfkZ1oc/view?usp=drive_link');
                  },
                  child: const Text(
                    'Download CV',
                    style: TextStyle(
                      fontSize: 20,
                      color: ColorStyle.primWhite,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Image.asset(
            width: screenSize.width * 0.35,
            'assets/3.png',
          ),
        ],
      ),
    );
  }
}
