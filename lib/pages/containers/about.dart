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
    color: Colors.white,
    padding: EdgeInsets.symmetric(horizontal: w! / 10, vertical: 30),
    child: Row(
      children: [
              //   Container(
              //   height: 530,
              //   decoration: BoxDecoration(
              //     image: DecorationImage(
              //         image: AssetImage('assets/images/saakshi.jpg'), fit: BoxFit.contain),
              //   ),
              // ),
        Expanded(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'ABOUT ME'.toUpperCase(),
              style: TextStyle(
                color: Colors.grey.shade400,
                fontSize: 16,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'bcvbjknljhgjbknlm;jkhgcfgvhbjknljkhjcghfgxchvhjbkjnklbjkvhjcghfxgchgvhjbkj',
              textAlign: TextAlign.left,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: w! / 10,
                  height: 1.1,
                  fontWeight: FontWeight.bold),
            ),

          ],
        )),
      ],
    ),
  );
}

}
