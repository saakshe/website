import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Experience extends StatefulWidget {
  const Experience({super.key});

  @override
  State<Experience> createState() => _ExperienceState();
}

class _ExperienceState extends State<Experience> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: MobileExp(),
      desktop: DesktopExp(),
    );
  }


  Widget MobileExp() {
    return Container();
  }



  Widget DesktopExp() {
    return Container();
  }
}