import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:website/utils/constants.dart';
import 'dart:html' as html;


class About extends StatefulWidget {
  const About({super.key});

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: MobileContainer(),
      desktop: DesktopContainer(),
    );
  }


  Widget MobileContainer() {
    return  Container(
    padding: EdgeInsets.symmetric(horizontal: w! / 10, vertical: 30),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          height: 20,
        ),
        Text(
          'ABOUT ME',
          style: TextStyle(
            color: Colors.grey.shade400,
            fontSize: 14,
          ),
        ),
        SizedBox(
          height: 30,
        ),
        Text(
                    'I\'m a fourth-year student at BITS Pilani Goa. I have previously worked at several early-stage startups such as BlueLearn, HashCase, Zealth(YC21). The intersection between startups and technology is something I have very recently discovered. Love participating in hackathons as well!',
          textAlign: TextAlign.center,
          style: TextStyle(
              color:Color.fromARGB(255, 255, 131, 131),
              fontSize: w! / 20,
              height: 1.1,
              ),
        ),
      ],
    ),
  );
}
Widget DesktopContainer() {
  return 
Container(
    padding: EdgeInsets.symmetric(horizontal: w! / 10, vertical: 30),
    child: Column(
       crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 80,),
        Text(
              'ABOUT ME'.toUpperCase(),
              style: TextStyle(
                color: Colors.grey.shade400,
                fontSize: 16,
              ),
            ),
            SizedBox(height: 80,),
        Row(
          children: [
                    Container(
                    height: 300,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20.0),
                      child: Image.network('https://media.licdn.com/dms/image/C5603AQF3U7xp3fTfaA/profile-displayphoto-shrink_800_800/0/1658029442967?e=2147483647&v=beta&t=RuiXVdHiyG96cnsaliRrIvlZnUvCGmU2BW7QWTt4vrc')),
                  ),
            Expanded(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(80, 0, 10, 0),
                  child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                  Text(
                    'I\'m a fourth-year student at BITS Pilani Goa. I have previously worked at several early-stage startups such as BlueLearn, HashCase, Zealth(YC21). The intersection between startups and technology is something I have very recently discovered. Love participating in hackathons as well!',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        color: Color.fromARGB(255, 114, 113, 113),
                        fontSize: 25,
                        height: 1.1,
                        fontWeight: FontWeight.normal),
                  ),
                  SizedBox(height: 50,),

                  Row(
                    children: [
                      IconButtonDesk('https://cdn-icons-png.flaticon.com/512/174/174857.png', 'https://www.linkedin.com/in/saakshi-adiga-ab43861b1/'), //linkedin
                      SizedBox(width: 40,),
                      IconButtonDesk('https://upload.wikimedia.org/wikipedia/commons/thumb/9/91/Octicons-mark-github.svg/2048px-Octicons-mark-github.svg.png' ,'https://github.com/saakshe'), //github
                      SizedBox(width: 40,),
                      // IconButtonDesk('https://e7.pngegg.com/pngimages/913/680/png-clipart-gmail-logo-illustration-email-computer-icons-message-envelope-mail-miscellaneous-angle.png'), //mail
                      // SizedBox(width: 40,),
                      IconButtonDesk('https://cdn-icons-png.flaticon.com/512/124/124021.png', 'https://twitter.com/SaakshiAdiga'),
                    ],
                  ), //twitter
                
                              ],
                            ),
                )),
          ],
        ),
      ],
    ),
  );
}
Widget IconButtonDesk(String link, String socials) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: () {
          html.window.open(socials,"_blank");
        },
        child: Container(
          height: 30,
          child: Image.network(link),
        ),
      ),
    );
  }
}

