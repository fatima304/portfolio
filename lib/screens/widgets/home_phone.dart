import 'package:flutter/material.dart';
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
              'assets/img.png',
              width: screenSize.width,
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          const Text(
            'Hey, I\'m Fatma Atef\nAn Flutter Developer',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: ColorStyle.primWhite,
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            children: [
              SizedBox(
                width: 150,
                height: 45,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text(
                    'Contact me',
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 15,
              ),
              SizedBox(
                width: 160,
                height: 45,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text(
                    'Download CV',
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
