// ignore_for_file: file_names, non_constant_identifier_names, sized_box_for_whitespace, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:squid_webdesign/utiles/constants.dart';

class NavBar extends StatefulWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: MobileNavBar(),
      desktop: DesktopNavBar(),
    );
  }
}

Widget MobileNavBar() {
  return Container(
    margin: const EdgeInsets.symmetric(horizontal: 20),
    height: 70,
    child: Row(
      // ignore: prefer_const_literals_to_create_immutables
      children: [const Icon(Icons.menu), navLogo()],
    ),
  );
}

Widget DesktopNavBar() {
  return Container(
    margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Icon(Icons.menu),
        Row(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            navButton('Home'),
            navButton('About'),
            navButton('Cast'),
            navButton('Trailor')
          ],
        ),
        navLogo()
      ],
    ),
  );
}

Widget navLogo() {
  return Container(
    height: 60,
    width: 180,
    child: Image.asset(netflix),
  );
}

Widget navButton(String text) {
  return Container(
    margin: EdgeInsets.symmetric(horizontal: 4),
    child: TextButton(
        onPressed: () {},
        child: Text(
          text,
          style: TextStyle(
              fontSize: 18, color: text == 'Home' ? Colors.red : Colors.white),
        )),
  );
}
