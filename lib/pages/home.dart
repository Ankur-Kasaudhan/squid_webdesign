// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:squid_webdesign/utiles/constants.dart';
import 'package:squid_webdesign/widgets/mainContent.dart';
import 'package:squid_webdesign/widgets/navBar.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    h = MediaQuery.of(context).size.height;
    w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
              gradient: const LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: <Color>[Color(0xffd00070), Color(0xff000000)]),
              color: Colors.pink,
              image: DecorationImage(image: AssetImage(bg), fit: BoxFit.cover)),
          // ignore: prefer_const_literals_to_create_immutables
          child: Column(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              NavBar(),
              SizedBox(height: 10),
              MainContent(),
            ],
          ),
        ),
      ),
    );
  }
}
