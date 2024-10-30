import 'package:flutter/material.dart';
import 'package:portfolio/constants/bar_items.dart';
import 'package:portfolio/styles/colors.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({
    super.key,
    required this.onNavTap,
  });
  final Function(int) onNavTap;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: ColorStyle.mainColor,
      child: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
            child: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.close,
              ),
            ),
          ),
          for (int i = 0; i < navIcons.length; i++)
            ListTile(
              onTap: () {
                onNavTap(i);
              },
              contentPadding: const EdgeInsets.symmetric(horizontal: 10),
              leading: Icon(
                navIcons[i],
              ),
              title: Text(
                navTitle[i],
                style: const TextStyle(
                  fontSize: 16,
                  color: ColorStyle.primWhite,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
        ],
      ),
    );
  }
}
