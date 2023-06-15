import 'package:flutter/material.dart';
import 'package:website/pages/containers/about.dart';
import 'package:website/pages/containers/contact.dart';
import 'package:website/pages/containers/experience.dart';
import 'package:website/pages/containers/landing-page.dart';
import 'package:website/pages/containers/projects.dart';
import '/widgets/navbar.dart';
import 'package:website/utils/constants.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    w = MediaQuery.of(context).size.width;
    h = MediaQuery.of(context).size.height;
    return Scaffold(
        body: SingleChildScrollView(
      child: Container(
        child: Column(
          children: [
            NavBar(),
            SizedBox(
              height: 100,
            ),
            LandingPage(), 
            Projects(),
            About(),
            // Contact(),
            // Experience(),
          ],
        ),
      ),
    ));
  }
}