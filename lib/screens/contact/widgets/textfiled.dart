import 'package:flutter/material.dart';
import 'package:portfolio/styles/colors.dart';

class CustomTextfiled extends StatelessWidget {
  const CustomTextfiled({
    super.key,
    required this.hintText,
    required this.maxLine,
  });

  final int maxLine;
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        maxLines: maxLine,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: const TextStyle(
            color: ColorStyle.hintColor,
          ),
          contentPadding: const EdgeInsets.all(16),
          filled: true,
          fillColor: ColorStyle.secWhite,
          focusedBorder: outlineBorderStyle(),
          enabledBorder: outlineBorderStyle(),
          border: outlineBorderStyle(),
        ),
        style: const TextStyle(
          color: ColorStyle.mainColor,
        ),
      ),
    );
  }

  OutlineInputBorder outlineBorderStyle() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: BorderSide.none,
    );
  }
}
