import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Footer extends StatefulWidget {
  const Footer({super.key});

  @override
  State<Footer> createState() => _FooterState();
}

class _FooterState extends State<Footer> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      desktop: DesktopFooter(),
      mobile: MobFooter(),
    );
  }
    
    
    Widget DesktopFooter() {
    return Container(
      height: 40,
      color: Color.fromARGB(255, 0, 0, 0),
      child: Center(
        child: Text('Made by Saakshi',
        style: TextStyle(
          fontSize: 14,
          color: Colors.white,
        ),),
      ),
    );
  }

  Widget MobFooter() {
    return Container();
  }
}