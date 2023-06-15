import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:website/utils/constants.dart';

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
                  // Image(image: AssetImage('assetName')),
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
                  // Image(image: AssetImage('assetName')),
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
                  // Image(image: AssetImage('assetName')),
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
                  // Image(image: AssetImage('assetName')),
                  TextButton(onPressed: () {
            
                  }, child: Text('View Source Code'))
              ]),
            ),
          ),
        ],

    );
  }



  Widget DesktopProject() {
    return InkWell(
      onTap: () {},
      onHover: (value) {
        setState(() {
          isHover = value;
        });
      },
      hoverColor: Colors.transparent,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Card(
            shape: RoundedRectangleBorder(
          side: BorderSide(
            color: Theme.of(context).colorScheme.outline,
          ),),
            child: Center(
              child: Column(
                children: [
                  Text('Shop App'),
                  // Image.asset('name')
                  TextButton(onPressed: () {
                  }, child: Text('View Souce Code')),
                ], 
              ),
            ),
          ),
          Card(
            shape: RoundedRectangleBorder(
          side: BorderSide(
            color: Theme.of(context).colorScheme.outline,
          ),),
            child: Center(
              child: Column(
                children: [
                  Text('Emotify'),
                  // Image.asset('name')
                  TextButton(onPressed: () {
            
                  }, child: Text('View Souce Code')),
                ], 
              ),
            ),
          ),
          Card(
            shape: RoundedRectangleBorder(
          side: BorderSide(
            color: Theme.of(context).colorScheme.outline,
          ),),
            child: Center(
              child: Column(
                children: [
                  Text('Text2Audio'),
                  // Image.asset('name')
                  TextButton(onPressed: () {
            
                  }, child: Text('View Souce Code')),
                ], 
              ),
            ),
          ),
        ],
      ),
      
    );
  }


}