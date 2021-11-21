// ignore_for_file: file_names, avoid_unnecessary_containers, non_constant_identifier_names, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:squid_webdesign/utiles/constants.dart';
import 'package:squid_webdesign/widgets/navBar.dart';

class MainContent extends StatefulWidget {
  const MainContent({Key? key}) : super(key: key);

  @override
  _MainContentState createState() => _MainContentState();
}

class _MainContentState extends State<MainContent> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: MobilMainContent(),
      desktop: DesktopMainCOntent(),
    );
  }
}

Widget MobilMainContent() {
  return Container();
}

Widget DesktopMainCOntent() {
  return Expanded(
      child: Container(
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
            child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: Image.asset(squidGame),
              ),
              const SizedBox(
                height: 40,
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(figures),
                    const SizedBox(width: 20),
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Life is like a Game, there are many players \nIf you don`t play with them, they`ll play with you...',
                            style: TextStyle(fontSize: w! / 70),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              // ignore: prefer_const_constructors
                              Icon(
                                Icons.trending_up,
                                color: Colors.white,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Text(
                                'Trending #1',
                                style: TextStyle(
                                    color: Colors.white, fontSize: w! / 70),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                height: 42,
                child: ElevatedButton(
                  style: ButtonStyle(
                      elevation: MaterialStateProperty.all(20),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(100))),
                      backgroundColor:
                          MaterialStateProperty.all(const Color(0xffef0914))),
                  onPressed: () {},
                  child: const Text(
                    'Continue Watching',
                    style: TextStyle(letterSpacing: 1.2, fontSize: 19),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  navButton('S1'),
                  navButton('E9'),
                  navButton('2021'),
                  Image.asset(imdb),
                  navButton('8.2')
                ],
              )
            ],
          ),
        )),
        Expanded(
            child: Container(
          child: Image.asset(squid),
        ))
      ],
    ),
  ));
}
