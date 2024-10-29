import 'package:flutter/material.dart';
import 'package:portfolio/constants/bar_items.dart';
import 'package:portfolio/styles/colors.dart';

class HeaderDesktop extends StatelessWidget {
  const HeaderDesktop({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      margin: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 10,
      ),
      width: double.maxFinite,
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [
            Colors.transparent,
            ColorStyle.light1,
          ],
        ),
        borderRadius: BorderRadius.circular(100),
      ),
      child: Row(
        children: [
          const Text(
            'Fatma',
          ),
          const Spacer(),
          for (int i = 0; i < navTitle.length; i++)
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: TextButton(
                onPressed: () {},
                child: Text(
                  navTitle[i],
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: ColorStyle.primWhite,
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
