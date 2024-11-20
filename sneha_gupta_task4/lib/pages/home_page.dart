import 'package:flutter/material.dart';
import '../constants/colors.dart';
import '../constants/size.dart';
import '../widgets/contact_section.dart';
import '../widgets/drawer_mobile.dart';
import '../widgets/footer.dart';
import '../widgets/header_mobile.dart';
import '../widgets/header_desktop.dart';
import '../widgets/main_desktop.dart';
import '../widgets/main_mobile.dart';
import '../widgets/projects_section.dart';
import '../widgets/skill_desktop.dart';
import '../widgets/skill_mobile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final scrollController = ScrollController();
  final List<GlobalKey> navbarKeys = List.generate(4, (index) => GlobalKey());

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;

    return LayoutBuilder(builder: (context, constraints) {
      return Scaffold(
        key: scaffoldKey,
        backgroundColor: CustomColor.scaffoldBg,
        endDrawer: constraints.maxWidth >= kMinDesktopWidth
            ? null
            : DrawerMobile(onNavItemTap: (int navIndex) {
                scaffoldKey.currentState?.closeEndDrawer();
                scrollToSection(navIndex);
              }),
        body: SingleChildScrollView(
          controller: scrollController,
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              SizedBox(key: navbarKeys.first),
              if (constraints.maxWidth >= kMinDesktopWidth)
                HeaderDesktop(onNavMenuTap: (int navIndex) {
                  scrollToSection(navIndex);
                })
              else
                HeaderMobile(
                  onMenuTap: () {
                    scaffoldKey.currentState?.openEndDrawer();
                  },
                  onLogoTap: () {},
                ),
              if (constraints.maxWidth >= kMinDesktopWidth)
                MainDesktop()
              else
                MainMobile(),
              Container(
                key: navbarKeys[1],
                width: screenWidth,
                padding: const EdgeInsets.fromLTRB(25, 20, 25, 60),
                color: CustomColor.bgLight1,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    // title
                    const Text(
                      "What I can do",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: CustomColor.whitePrimary,
                      ),
                    ),
                    const SizedBox(height: 50),

                    if (constraints.maxWidth >= kMedDesktopWidth)
                      const SkillDesktop()
                    else
                      const SkillMobile(),
                  ],
                ),
              ),
              const SizedBox(height: 30),

              // PROJECTS
              ProjectsSection(
                key: navbarKeys[2],
              ),

              const SizedBox(height: 30),
              ContactSection(
                key: navbarKeys[3],
              ),
              SizedBox(height: 20),
              Footer(),
            ],
          ),
        ),
      );
    });
  }

  void scrollToSection(int navIndex) {
    final key = navbarKeys[navIndex];
    Scrollable.ensureVisible(
      key.currentContext!,
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }
}
