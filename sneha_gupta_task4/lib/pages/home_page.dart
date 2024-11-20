import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/colors.dart';
import 'package:my_portfolio/constants/size.dart';
import 'package:my_portfolio/widgets/contact_section.dart';
// import 'package:my_portfolio/constants/nav_items.dart';
import 'package:my_portfolio/widgets/drawer_mobile.dart';
// import 'package:my_portfolio/styles/style.dart';
import 'package:my_portfolio/widgets/header_mobile.dart';
// import 'package:my_portfolio/constants/nav_items.dart';
import 'package:my_portfolio/widgets/header_desktop.dart';
import 'package:my_portfolio/widgets/main_desktop.dart';
import 'package:my_portfolio/widgets/main_mobile.dart';
import 'package:my_portfolio/widgets/skill_desktop.dart';
import 'package:my_portfolio/widgets/skill_mobile.dart';
// import 'package:my_portfolio/widgets/site_logo.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;
    return LayoutBuilder(builder: (context, constraints) {
      return Scaffold(
        key: scaffoldKey,
        backgroundColor: CustomColor.scaffoldBg,
        endDrawer:
            constraints.maxWidth >= kMinDesktopWidth ? null : DrawerMobile(),
        body: ListView(
          scrollDirection: Axis.vertical,
          children: [
            if (constraints.maxWidth >= kMinDesktopWidth)
              HeaderDesktop()
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
              // key: navbarKeys[1],
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
            Container(
              height: 500,
              width: double.maxFinite,
            ),
            Container(
              height: 500,
              width: double.maxFinite,
              color: Colors.blueGrey,
            ),
            SizedBox(height: 20),
            ContactSection(),
            SizedBox(height: 20),
          ],
        ),
      );
    });
  }
}
