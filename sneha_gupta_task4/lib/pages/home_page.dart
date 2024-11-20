import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/colors.dart';
import 'package:my_portfolio/constants/size.dart';
// import 'package:my_portfolio/constants/nav_items.dart';
import 'package:my_portfolio/widgets/drawer_mobile.dart';
// import 'package:my_portfolio/styles/style.dart';
import 'package:my_portfolio/widgets/header_mobile.dart';
// import 'package:my_portfolio/constants/nav_items.dart';
import 'package:my_portfolio/widgets/header_desktop.dart';
import 'package:my_portfolio/widgets/main_desktop.dart';
import 'package:my_portfolio/widgets/main_mobile.dart';
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
                height: 500,
                width: double.maxFinite,
                color: Colors.blueGrey,
              ),
              Container(
                height: 500,
                width: double.maxFinite,
              ),
              Container(
                height: 500,
                width: double.maxFinite,
                color: Colors.blueGrey,
              ),
              Container(
                height: 500,
                width: double.maxFinite,
              ),
            ],
          ));
    });
  }
}