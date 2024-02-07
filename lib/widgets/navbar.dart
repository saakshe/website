import 'dart:js';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:website/pages/containers/experience.dart';
import 'package:website/pages/containers/projects.dart';
import 'package:website/pages/home.dart';

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
      desktop: DeskTopNavBar(context)
    );
  }
}

Widget MobileNavBar() {
  return Container(
    margin: EdgeInsets.symmetric(horizontal: 20),
    height: 70,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(onPressed: () {
          //should display a list of menu options 
          print('tapped');
        }, icon: Icon(Icons.menu)),
      ],
    ),
  );
}

Widget DeskTopNavBar(context) {
  return Card(
    color: Color.fromARGB(255, 0, 0, 0),
    elevation: 3,
    child: Container(
    height: 70,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Row(
          children: [
            navButtonP('Projects', context),
            // navButton('About'),
            navButtonE('Experience', context),
            // navButton('Contact'),
            navButtonR('Resume', context),
            SizedBox(width: 40,),
          ],
        ),
      ],
    ),
  ));
}

Widget navButtonP(String text, context) {
  return Container(
      margin: EdgeInsets.symmetric(horizontal: 4),
      child: TextButton(
          onPressed: () {

            Navigator.of(context).push(MaterialPageRoute(builder: (context) => Projects()));
          },
          child:
              Text(text, style: TextStyle(color: Color.fromARGB(255, 195, 195, 195), fontSize: 18))));
}
Widget navButtonE(String text, context) {
  return Container(
      margin: EdgeInsets.symmetric(horizontal: 4),
      child: TextButton(
          onPressed: () {

            Navigator.of(context).push(MaterialPageRoute(builder: (context) => Experience()));
          },
          child:
              Text(text, style: TextStyle(color: Color.fromARGB(255, 195, 195, 195), fontSize: 18))));
}
Widget navButtonR(String text, context) {
  return Container(
      margin: EdgeInsets.symmetric(horizontal: 4),
      child: TextButton(
          onPressed: () {

            // Navigator.of(context).push(MaterialPageRoute(builder: (context) => Resume()));
          },
          child:
              Text(text, style: TextStyle(color: Color.fromARGB(255, 195, 195, 195), fontSize: 18))));
}
