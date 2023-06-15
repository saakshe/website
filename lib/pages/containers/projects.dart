import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:website/utils/constants.dart';
// import 'package:website/assets/images/shop-app.jpg';
import 'dart:html' as html;



class Projects extends StatefulWidget {

  const Projects({super.key});

  @override
  State<Projects> createState() => _ProjectsState();
}

class _ProjectsState extends State<Projects> {


  bool isHover = false;
  Duration duration = Duration(milliseconds: 200);
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      desktop: DesktopProject(),
      mobile: MobileProject(),
    );
  }

  Widget MobileProject() {
    return Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Card(
            child: Center(
              child: Column(
                children: [
                  Text('Shop App',
                  style: TextStyle(),),
                  // Image(image: AssetImage()),
                  TextButton(onPressed: () {
            
                  }, child: Text('View Source Code'))
              ]),
            ),
          ),
          Card(
            child: Center(
              child: Column(
                children: [
                  Text('Shop App',
                  style: TextStyle(),),
                  Image(image: NetworkImage('https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.alibaba.com%2Fproduct-detail%2FSupermarket-Shopping-Trolley-Convenience-Store-Shopping_62075988336.html&psig=AOvVaw0X0dOh_2yhxgvsSuJtSTFg&ust=1686915765137000&source=images&cd=vfe&ved=0CBEQjRxqFwoTCPDC8pSZxf8CFQAAAAAdAAAAABAf')),
                  TextButton(onPressed: () {
            
                  }, child: Text('View Source Code'))
              ]),
            ),
          ),
          Card(
            child: Center(
              child: Column(
                children: [
                  Text('Shop App',
                  style: TextStyle(),),
                  Image(image: AssetImage('assets/images/saakshi.png')),
                  TextButton(onPressed: () {
            
                  }, child: Text('View Source Code'))
              ]),
            ),
          ),
          Card(
            child: Center(
              child: Column(
                children: [
                  Text('Shop App',
                  style: TextStyle(),),
                  // Image(image: AssetImage('assets/images/saakshi.png')),
                  TextButton(onPressed: () {
            
                  }, child: Text('View Source Code'))
              ]),
            ),
          ),
        ],

    );
  }



  Widget DesktopProject() {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
              'PROJECTS'.toUpperCase(),
              style: TextStyle(
                color: Colors.grey.shade400,
                fontSize: 16,
              ),
            ),
          SizedBox(height: 550,),
          Container(
            padding: EdgeInsets.all(5),
            width: 200,
            height: 300,
            child: GestureDetector(
              onTap: () {
                print('tapped');

              },
              child: Card(
                elevation: 2,
                surfaceTintColor: Colors.redAccent,
                child: Center(
                  child: Column(
                    children: [
                      SizedBox(height: 20,),
                      Text('Shopping App', 
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),),
                      Image.network('https://sc04.alicdn.com/kf/HLB1UgTLQSzqK1RjSZPxq6A4tVXa3.jpg',),
                      SizedBox(height: 20,),
                      TextButton(onPressed: () {
                        html.window.open('https://github.com/saakshe/shop_app',"_blank");

                      }, 
                      style: ButtonStyle(),
                      child: Text('View Souce Code',
                      style: TextStyle(
                        color: Colors.black,
                      ),)),
                    ], 
                  ),
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(5),
            width: 200,
            height: 300,
            child: Card(
              surfaceTintColor: Colors.redAccent,
              child: Center(
                child: Column(
                  children: [
                    SizedBox(height: 20,),
                    Text('EMOTIFY', 
                    style: TextStyle(),),
                    Image.network('https://sc04.alicdn.com/kf/HLB1UgTLQSzqK1RjSZPxq6A4tVXa3.jpg',),
                    SizedBox(height: 20,),
                    TextButton(onPressed: () {
                      html.window.open('https://github.com/saakshe/wmn_team_three',"_blank");

                    }, child: Text('View Souce Code',
                    style: TextStyle(
                      color: Colors.black,
                    ),)),
                  ], 
                ),
              ),
            ),
          ),
         Container(
            padding: EdgeInsets.all(5),
            width: 200,
            height: 300,
            child: Card(
              surfaceTintColor: Colors.redAccent,
              child: Center(
                child: Column(
                  children: [
                    SizedBox(height: 20,),
                    Text('Text2Audio', 
                    style: TextStyle(),),
                    Image.network('https://sc04.alicdn.com/kf/HLB1UgTLQSzqK1RjSZPxq6A4tVXa3.jpg',),
                    SizedBox(height: 20,),
                    TextButton(onPressed: () {
                      html.window.open('https://github.com/saakshe/text2audio',"_blank");

                    }, child: Text('View Souce Code',
                    style: TextStyle(
                      color: Colors.black,
                    ),)),
                  ], 
                ),
              ),
            ),
          ),

          Container(
            padding: EdgeInsets.all(5),
            width: 200,
            height: 300,
            child: Card(
              surfaceTintColor: Colors.redAccent,
              child: Center(
                child: Column(
                  children: [
                    SizedBox(height: 20,),
                    Text('OpenCV', 
                    style: TextStyle(),),
                    Image.network('https://sc04.alicdn.com/kf/HLB1UgTLQSzqK1RjSZPxq6A4tVXa3.jpg',),
                    SizedBox(height: 20,),
                    TextButton(onPressed: () {
                      html.window.open('https://github.com/saakshe/opencv_practice',"_blank");
                    }, child: Text('View Souce Code',
                    style: TextStyle(
                      color: Colors.black,
                    ),)),
                  ], 
                ),
              ),
            ),
          ),
        ],
      ); 
      
  }
}