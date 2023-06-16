import 'package:flutter/material.dart';

class Footer extends StatefulWidget {
  const Footer({super.key});

  @override
  State<Footer> createState() => _FooterState();
}

class _FooterState extends State<Footer> {
  @override
  Widget build(BuildContext context) {
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
}