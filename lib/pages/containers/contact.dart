import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Contact extends StatefulWidget {
  const Contact({super.key});

  @override
  State<Contact> createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: MobileContact(),
      desktop: DesktopContact(),
    );
  }


  Widget MobileContact() {
    return Container();
  }



  Widget DesktopContact() {
    return Container();
  }
}