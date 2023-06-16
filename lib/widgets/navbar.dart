import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:responsive_builder/responsive_builder.dart';
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
      desktop: DeskTopNavBar()
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

Widget DeskTopNavBar() {
  return Container(
    height: 70,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Row(
          children: [
            navButton('Projects'),
            navButton('About'),
            navButton('Experience'),
            navButton('Contact'),
            SizedBox(width: 40,),
          ],
        ),
      ],
    ),
  );
}

Widget navButton(String text) {
  return Container(
      margin: EdgeInsets.symmetric(horizontal: 4),
      child: TextButton(
          onPressed: () {
            
          },
          child:
              Text(text, style: TextStyle(color: const Color.fromARGB(255, 255, 255, 255), fontSize: 18))));
}
