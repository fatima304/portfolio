
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
      child: const Text(
        'Made by Fatma Atef with Flutter 3.24.5 ♥️',
        style: TextStyle(
          fontWeight: FontWeight.w500,
          color: ColorStyle.secWhite,
        ),
      ),
    );
  }
}
