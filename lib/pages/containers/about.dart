import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:website/utils/constants.dart';


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
        // Container(
        //   height: 200,
        //   decoration: BoxDecoration(
        //     image:
        //         DecorationImage(image: AssetImage('assets/images/saakshi.jpg'), 
        //         fit: BoxFit.contain),
        //   ),
        // ),
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
          height: 10,
        ),
        Text(
          'all deets about saaksnin gfdcgvhbjhgfcgvbhnjkjhgfxcbvnmjkhgcvb nmjhvbnmbvbnmkjhbnkmjbnmkjbn',
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Colors.black,
              fontSize: w! / 20,
              height: 1.1,
              fontWeight: FontWeight.bold),
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
        SizedBox(height: 130,),
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
                    height: 200,
                    child: Image.network('https://media.licdn.com/dms/image/C5603AQF3U7xp3fTfaA/profile-displayphoto-shrink_800_800/0/1658029442967?e=2147483647&v=beta&t=RuiXVdHiyG96cnsaliRrIvlZnUvCGmU2BW7QWTt4vrc'),
                  ),
            Expanded(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(50, 0, 8, 0),
                  child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                  Text(
                    'I\'m a fourth-year student at BITS Pilani Goa. I have previously worked at several early-stage startups such as BlueLearn, HashCase, Zealth(YC21). The intersection between startups and technology is something I have very recently discovered. Love participating in hackathons as well!',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        color: const Color.fromARGB(255, 128, 128, 128),
                        fontSize: 20,
                        height: 1.1,
                        fontWeight: FontWeight.normal),
                  ),
                
                              ],
                            ),
                )),
          ],
        ),
      ],
    ),
  );
}

}

