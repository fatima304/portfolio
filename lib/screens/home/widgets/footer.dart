import 'package:flutter/material.dart';
import 'package:portfolio/styles/colors.dart';

class Footer extends StatelessWidget {
  const Footer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: double.maxFinite,
      alignment: Alignment.center,
      child: RichText(
        text: const TextSpan(children: [
          TextSpan(
            text: 'Made by ',
            style: TextStyle(
              fontWeight: FontWeight.w500,
              color: ColorStyle.secWhite,
            ),
          ),
          TextSpan(
            text: 'Fatma Atef ',
            style: TextStyle(
              fontWeight: FontWeight.w500,
              color: ColorStyle.tealColor,
            ),
          ),
          TextSpan(
            text: 'with Flutter ♥️',
            style: TextStyle(
              fontWeight: FontWeight.w500,
              color: ColorStyle.primWhite,
            ),
          ),
        ]),
      ),
    );
  }
}
