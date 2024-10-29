import 'package:flutter/material.dart';
import 'package:portfolio/screens/widgets/contact_section.dart';
import 'package:portfolio/screens/widgets/custom_drawer.dart';
import 'package:portfolio/screens/widgets/header_desktop.dart';
import 'package:portfolio/screens/widgets/home_desktop.dart';
import 'package:portfolio/screens/widgets/home_phone.dart';
import 'package:portfolio/screens/widgets/phone_header.dart';
import 'package:portfolio/screens/widgets/skills_section.dart';
import 'package:portfolio/styles/colors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return LayoutBuilder(
      builder: (context, constraints) {
        bool constraint = constraints.maxWidth >= 600;
        return Scaffold(
          backgroundColor: ColorStyle.mainColor,
          key: scaffoldKey,
          endDrawer: constraint ? null : const CustomDrawer(),
          body: ListView(
            scrollDirection: Axis.vertical,
            children: [
              // main
              if (constraint)
                const HeaderDesktop()
              else
                PhoneHeader(
                  onTap: () {
                    scaffoldKey.currentState?.openEndDrawer();
                  },
                ),
              if (constraint)
                HomeDesktop(screenSize: screenSize)
              else
                HomePhone(screenSize: screenSize),
              // skills
               SkillsSection(screenSize: screenSize,),
              // projects
              const SizedBox(
                height: 500,
                width: double.maxFinite,
              ),
              // contact
      ContactSection(),
              // footer
              Container(
                height: 500,
                width: double.maxFinite,
                color: Colors.blueGrey,
              ),
            ],
          ),
        );
      },
    );
  }
}
