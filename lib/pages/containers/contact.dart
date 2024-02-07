import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'dart:html' as html;
// import '../../utils/constants.dart';

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
    );
  }


  Widget MobileContact() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 50,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          IconButtonMob('https://cdn-icons-png.flaticon.com/512/174/174857.png', 'https://www.linkedin.com/in/saakshi-adiga-ab43861b1/'), //linkedin
          SizedBox(width: 40,),
          IconButtonMob('https://upload.wikimedia.org/wikipedia/commons/thumb/9/91/Octicons-mark-github.svg/2048px-Octicons-mark-github.svg.png' ,'https://github.com/saakshe'), //github
          SizedBox(width: 40,),
          // IconButtonDesk('https://e7.pngegg.com/pngimages/913/680/png-clipart-gmail-logo-illustration-email-computer-icons-message-envelope-mail-miscellaneous-angle.png'), //mail
          // SizedBox(width: 10,),
          IconButtonMob('https://cdn-icons-png.flaticon.com/512/124/124021.png', 'https://twitter.com/SaakshiAdiga'), //twitter
          // SizedBox(height: 40,)
        ],),
      ],
    );
  }



  

  Widget IconButtonMob(String link, String socials) {
    return GestureDetector(
      onTap: () {
        html.window.open(socials,"_blank");
      },
      child: Container(
        height: 20,
        child: Image.network(link),
      ),
    );
  }
}