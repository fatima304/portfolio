import 'package:flutter/material.dart';
import 'package:portfolio/constants/bar_items.dart';
import 'package:portfolio/screens/contact/contact_section.dart';
import 'package:portfolio/screens/home/widgets/custom_drawer.dart';
import 'package:portfolio/screens/home/widgets/footer.dart';
import 'package:portfolio/screens/home/widgets/header_desktop.dart';
import 'package:portfolio/screens/home/widgets/home_desktop.dart';
import 'package:portfolio/screens/home/widgets/home_phone.dart';
import 'package:portfolio/screens/home/widgets/phone_header.dart';
import 'package:portfolio/screens/projects/projects_section.dart';
import 'package:portfolio/screens/skills/skills_section.dart';
import 'package:portfolio/screens/resume/resume_section.dart';
import 'package:portfolio/styles/colors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final scrollController = ScrollController();
  final List<GlobalKey> navbarKeys = List.generate(
    navTitle.length,
    (index) => GlobalKey(),
  );
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return LayoutBuilder(
      builder: (context, constraints) {
        bool constraint = constraints.maxWidth >= 600;
        return Scaffold(
          backgroundColor: ColorStyle.mainColor,
          key: scaffoldKey,
          endDrawer: constraint
              ? null
              : CustomDrawer(
                  onNavTap: (int navIndex) {
                    scaffoldKey.currentState?.closeEndDrawer;
                    scrollToSection(navIndex);
                  },
                ),
          body: SingleChildScrollView(
            controller: scrollController,
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                SizedBox(
                  key: navbarKeys[0],
                ),
                if (constraint)
                  HeaderDesktop(
                    onNavTap: (int navIndex) {
                      scrollToSection(navIndex);
                    },
                  )
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
                SizedBox(
                  width: double.maxFinite,
                  child: ResumeSection(
                    key: navbarKeys[1],
                  ),
                ),
                ProjectSection(
                  key: navbarKeys[2],
                ),
                const SizedBox(
                  height: 10,
                ),
                SkillsSection(
                  key: navbarKeys[3],
                  screenSize: screenSize,
                ),
                const SizedBox(
                  height: 10,
                ),
                ContactSection(
                  key: navbarKeys[4],
                ),
                const Footer()
              ],
            ),
          ),
        );
      },
    );
  }

  void scrollToSection(int index) {
    final key = navbarKeys[index];
    Scrollable.ensureVisible(
      key.currentContext!,
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }
}
