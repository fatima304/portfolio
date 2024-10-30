import 'package:flutter/material.dart';
import 'package:portfolio/screens/contact/widgets/textfiled.dart';
import 'package:portfolio/styles/colors.dart';

class ContactField extends StatelessWidget {
  const ContactField({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ConstrainedBox(
          constraints: const BoxConstraints(
            maxWidth: 600,
          ),
          child: const Row(
            children: [
              Flexible(
                child: CustomTextfiled(
                  maxLine: 1,
                  hintText: 'Your name',
                ),
              ),
              Flexible(
                child: CustomTextfiled(
                  maxLine: 1,
                  hintText: 'Your email',
                ),
              ),
            ],
          ),
        ),
        ConstrainedBox(
          constraints: const BoxConstraints(
            maxWidth: 600,
          ),
          child: const Flexible(
            child: CustomTextfiled(
              maxLine: 9,
              hintText: 'Message',
            ),
          ),
        ),
        const SizedBox(
          height: 7,
        ),
        ConstrainedBox(
          constraints: const BoxConstraints(
            maxWidth: 600,
          ),
          child: SizedBox(
            width: double.maxFinite,
            child: ElevatedButton(
              style: const ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(
                  Color.fromARGB(255, 8, 170, 175),
                ),
              ),
              onPressed: () {},
              child: const Text(
                'Contact me',
                style: TextStyle(
                  fontSize: 17,
                  color: ColorStyle.primWhite,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
