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

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      desktop: DesktopProject(),
      mobile: MobileProject(),
    );
  }
}

  Widget MobileProject() {
    return Column(
      children: [
        Text(
                'projects'.toUpperCase(),
                style: TextStyle(
                  color: Colors.grey.shade400,
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 20,),
        MobileDisplay('https://cdn.dribbble.com/users/89278/screenshots/14699627/media/a9f2ce1335cc8f4868c109f1fdd9ec58.png?compress=1&resize=400x300&vertical=center', 'Shopping App', 'Attempting to build a shopping app with google auth and implementing http and firestore.', 'https://github.com/saakshe/shop_app'),
        SizedBox(height: 5,),
        MobileDisplay('https://images.unsplash.com/photo-1614680376573-df3480f0c6ff?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8YXBwbGUlMjBtdXNpY3xlbnwwfHwwfHx8MA%3D%3D&w=1000&q=80', 'Emotify', 'Emotify makes use of the information on your current mood and makes a jukebox for you, \nhassle free after a stressful day. \nListen to different jukeboxes everyday based on your mood and vibe of the day. \nEmotify crafts personalized jukeboxes to match your unique emotional journey.', 'https://github.com/saakshe/wmn_team_three'),
        // SizedBox(height: 5,),
        // MobileDisplay('https://upload.wikimedia.org/wikipedia/commons/thumb/e/ee/Blocksatz-Beispiel_deutsch%2C_German_text_sample_with_fully_justified_text.svg/2560px-Blocksatz-Beispiel_deutsch%2C_German_text_sample_with_fully_justified_text.svg.png', 'Text2audio', 'desc', 'https://github.com/saakshe/text2audio'),

      ],
    );
  }

  Widget MobileDisplay(String projImg, String name, String desc, String link) {
    return Card(
        child: Container(
          width: 300,
          height: 270,
          child: Center(
            child: Column(
              children: [
                SizedBox(height: 15,),
                CircleAvatar(
                backgroundImage: NetworkImage(projImg),
                ), //add the image here in the circle 
                SizedBox(height: 7,),
                Text(name, 
                    style: TextStyle(color: Color.fromARGB(255, 47, 47, 47), fontSize: 16,
                    fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                    softWrap: true,
                    ),
                    SizedBox(height: 20,),
                    Text(desc,
                    softWrap: true,
                    // overflow: TextOverflow.visible,
                    style: TextStyle(
                      color: Color.fromARGB(255, 67, 63, 63), fontSize: 13
                    ),
                    textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 20,),
                
                    GestureDetector(
                      onTap: () {
                        html.window.open(link,"_blank");
                      },
                      child: Container(
                        width: w!/30,
                        height: h!/30,
                        child: Image.network('https://cdn-icons-png.flaticon.com/512/25/25231.png',
                        alignment: Alignment.bottomLeft,
                        ),
                      ),
                      ),
                
              ],
                
            ),
          ),
        ),
      );
  }




  Widget DesktopProject() {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 70,),
          Container(
            padding: EdgeInsets.symmetric(horizontal: w! / 10, vertical: 30),
      
            child: Text(
                  'projects'.toUpperCase(),
                  style: TextStyle(
                    color: Colors.grey.shade400,
                    fontSize: 16,
                  ),
                ),
          ),
          //Acko
          DesktopDisplay('https://upload.wikimedia.org/wikipedia/commons/thumb/e/ee/Blocksatz-Beispiel_deutsch%2C_German_text_sample_with_fully_justified_text.svg/2560px-Blocksatz-Beispiel_deutsch%2C_German_text_sample_with_fully_justified_text.svg.png', 'Acko Onboarding Teardown', 'Text recognition mobile app which can then conver that text into an audio format', 'https://github.com/saakshe/text2audio'),
          //tira
          DesktopDisplay('https://upload.wikimedia.org/wikipedia/commons/thumb/e/ee/Blocksatz-Beispiel_deutsch%2C_German_text_sample_with_fully_justified_text.svg/2560px-Blocksatz-Beispiel_deutsch%2C_German_text_sample_with_fully_justified_text.svg.png', 'Tira Beauty Review Teardown', 'Text recognition mobile app which can then conver that text into an audio format', 'https://github.com/saakshe/text2audio'),
          //indie dog
          DesktopDisplay('https://upload.wikimedia.org/wikipedia/commons/thumb/e/ee/Blocksatz-Beispiel_deutsch%2C_German_text_sample_with_fully_justified_text.svg/2560px-Blocksatz-Beispiel_deutsch%2C_German_text_sample_with_fully_justified_text.svg.png', 'New Product', 'Text recognition mobile app which can then conver that text into an audio format', 'https://github.com/saakshe/text2audio'),
          //shopping application 
          DesktopDisplay('https://cdn.dribbble.com/users/89278/screenshots/14699627/media/a9f2ce1335cc8f4868c109f1fdd9ec58.png?compress=1&resize=400x300&vertical=center', 'Shopping App', 'Attempting to build a shopping app with google auth and implementing http and firestore.', 'https://github.com/saakshe/shop_app'),
          // wmn- emotify
          DesktopDisplay('https://images.unsplash.com/photo-1614680376573-df3480f0c6ff?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8YXBwbGUlMjBtdXNpY3xlbnwwfHwwfHx8MA%3D%3D&w=1000&q=80', 'Emotify', 'Emotify makes use of the information on your current mood and makes a jukebox for you, \nhassle free after a stressful day. \nListen to different jukeboxes everyday based on your mood and vibe of the day. \nEmotify crafts personalized jukeboxes to match your unique emotional journey.', 'https://github.com/saakshe/wmn_team_three'),
          // text2audio
          DesktopDisplay('https://upload.wikimedia.org/wikipedia/commons/thumb/e/ee/Blocksatz-Beispiel_deutsch%2C_German_text_sample_with_fully_justified_text.svg/2560px-Blocksatz-Beispiel_deutsch%2C_German_text_sample_with_fully_justified_text.svg.png', 'EY scholarship project', 'Text recognition mobile app which can then conver that text into an audio format', 'https://github.com/saakshe/text2audio'),
          
        ],

      ),
    );
  }

  Widget DesktopDisplay(String projImg ,String project, String desc, String link) {
    return Padding(
      padding: EdgeInsets.fromLTRB(150, 0, 50, 0),
      child: Row(
        children: [
          Container(
            height: 300,
            width: 300,
            child: Image.network(projImg,
            ),
          ),
          SizedBox(width: 100,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(project, 
              style: TextStyle(color: Color.fromARGB(255, 47, 47, 47), fontSize: 20,
              fontWeight: FontWeight.bold),
              textAlign: TextAlign.left,
              softWrap: true,
              ),
              SizedBox(height: 20,),
              Text(desc,
              softWrap: true,
              // overflow: TextOverflow.visible,
              style: TextStyle(
                color: Color.fromARGB(255, 67, 63, 63), fontSize: 16
              ),
              textAlign: TextAlign.left,
              ),
              SizedBox(height: 20,),

              GestureDetector(
                onTap: () {
                  html.window.open(link,"_blank");
                },
                child: Container(
                  width: w!/30,
                  height: h!/30,
                  child: Image.network('https://cdn-icons-png.flaticon.com/512/25/25231.png',
                  alignment: Alignment.bottomLeft,
                  ),
                ),
                ),
            ],
          )
        ],
        ),
    );
  }
