import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import '/utils/constants.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: MobileContainer1(),
      desktop: DesktopContainer1(),
    );;
  }

  Widget MobileContainer1() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: w! / 10, vertical: 20),
      child: Column(
        children: [
          // SizedBox(
          //   height: 20,
          // ),
          Text(
            'Hi, this is Saakshi',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: w! / 10, fontWeight: FontWeight.bold, height: 1),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            'Double Majoring in Biological Sciences and Mechanical Engineering from BITS Pilani Goa',
            textAlign: TextAlign.center,
            style: TextStyle(color: Color.fromARGB(255, 67, 63, 63), fontSize: 20),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'I love reading about startups!',
            style: TextStyle(color: Colors.grey.shade600, fontSize: 16),
          )
        ],
      ),
    );
  }



  Widget DesktopContainer1() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: w! / 10, vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 200,),
                  Text(
                    'Hi, this is Saakshi',
                    style: TextStyle(
                        fontSize: w! / 20,
                        fontWeight: FontWeight.bold,
                        height: 1),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Double majoring in Biological Scineces and Mechanical Engineering from BITS Pilani Goa',
                    style: TextStyle(color: const Color.fromARGB(255, 67, 63, 63), fontSize: 20),
                  ),
                  SizedBox(
                    height: 20,
                  ),
           
                      Text(
                        'I love reading about startups!',
                        style:
                            TextStyle(color: Colors.grey.shade400, fontSize: 16),
                      ),
                      SizedBox(height: 80,),
                      
                ],
              )),
        ],
      ),
    );
  }
  }
