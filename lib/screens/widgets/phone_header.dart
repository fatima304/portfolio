import 'package:flutter/material.dart';
import 'package:portfolio/styles/colors.dart';

class PhoneHeader extends StatelessWidget {
  const PhoneHeader({super.key, required this.onTap});

 final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [
            Colors.transparent,
            ColorStyle.light1,
          ],
        ),
        borderRadius: BorderRadius.circular(100),
      ),
      margin: const EdgeInsets.fromLTRB(40, 5, 20, 5),
      child: Row(
        children: [
          const Text(
            'Fatma',
          ),
          const Spacer(),
          GestureDetector(
            onTap: onTap,
            child: const Icon(
              Icons.menu,
            ),
          ),
          const SizedBox(
            width: 16,
          )
        ],
      ),
    );
  }
}
