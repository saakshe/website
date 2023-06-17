import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'dart:html' as html;
import 'package:carousel_slider/carousel_slider.dart';
import '../../utils/constants.dart';




class Experience extends StatefulWidget {
  const Experience({super.key});

  @override
  State<Experience> createState() => _ExperienceState();
}

class _ExperienceState extends State<Experience> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: MobileExp(),
      desktop: DesktopExp(),
    );
  }


  Widget MobileExp() {
    return Column(
      children: [
        SizedBox(
          height: 40,
        ),
        Text(
          'EXPERIENCE',
          style: TextStyle(
            color: Colors.grey.shade400,
            fontSize: 14,
          ),
        ),
        SizedBox(
          height: 15,
        ),
        CarouselSlider(
          items: [
            MobileDisplayEx('https://media.licdn.com/dms/image/C560BAQF0MFvmBgw7Hg/company-logo_200_200/0/1658231285074?e=1695254400&v=beta&t=PW5G88BgJN_t3gty83ngc8TR_hOWMsOjBAylLU6sxCg', 'Intern','gradCapital'),
            MobileDisplayEx('https://media.licdn.com/dms/image/C560BAQHx7Vr3s0_4YQ/company-logo_200_200/0/1661233325052?e=1695254400&v=beta&t=85YJCCr5ZsnkXbhwS9AFk-JjmG6ttDgayVTLcfqPqdg', 'Marketing & Communications Head','HashCase'),
            MobileDisplayEx('https://media.licdn.com/dms/image/C560BAQGW7_WG-vi0mA/company-logo_200_200/0/1589785206048?e=1695254400&v=beta&t=hwFo_0LzWRYOBl4_E-XwIIuFnHg1V7oa1aUMa0eV9s0', 'Product', 'Pacify Med Technologies'),
            MobileDisplayEx('https://media.licdn.com/dms/image/C560BAQG2H1EXLHfSKg/company-logo_200_200/0/1644495267516?e=1695254400&v=beta&t=t3uSrvyo6un1KMUiudCSl1x3l5dVPFCuVDSpviyeEbw', 'Operations & Product', 'Samwaad'),
            MobileDisplayEx('https://media.licdn.com/dms/image/C4E0BAQHQL7bqpu71nQ/company-logo_200_200/0/1623588535920?e=1695254400&v=beta&t=eRwU9T5neu-MnDDc3YhE2ADsJzuw_031V10xAqAEwkM', 'Product Marketing','Bluelearn'),
            MobileDisplayEx('https://media.licdn.com/dms/image/D560BAQHgBxhHzGuV6w/company-logo_200_200/0/1685345378487?e=1695254400&v=beta&t=xAypliXzq9jtlhTRJwEapfAthYb1Z3QIfnnlzaUGFyg', 'Marketing', 'Zealth AI'),
          
          ], 
          options: CarouselOptions(
              height: 380.0,
              enlargeCenterPage: true,
              autoPlay: true,
              aspectRatio: 16 / 9,
              autoPlayCurve: Curves.fastOutSlowIn,
              enableInfiniteScroll: true,
              autoPlayAnimationDuration: Duration(milliseconds: 800),
              viewportFraction: 0.8,
            ),
          ),
      ],
    );
  }



  Widget DesktopExp() {
    return Column(
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
        DesktopDisplayEx('https://media.licdn.com/dms/image/C560BAQF0MFvmBgw7Hg/company-logo_200_200/0/1658231285074?e=1695254400&v=beta&t=PW5G88BgJN_t3gty83ngc8TR_hOWMsOjBAylLU6sxCg', 'Intern','gradCapital', 'Assisted with fundraising for their fund by analyzing net-worth of individuals along with the portion of their liquid worth using\ninvestor math. Segmented the world individual owners into \ncategories by their conditions & behaviors and analyzed major three categories in depth.'),
        DesktopDisplayEx('https://media.licdn.com/dms/image/C560BAQHx7Vr3s0_4YQ/company-logo_200_200/0/1661233325052?e=1695254400&v=beta&t=85YJCCr5ZsnkXbhwS9AFk-JjmG6ttDgayVTLcfqPqdg', 'Marketing & Communications Head','HashCase',  'Handled partnerships with several startups and helped them attain their perfect utility addition to their NFTs \nthereby successfully onboarding a lot of users onto Hash Case\’s platform.\nStrategized on the use of twitter to get the initial organic traction for Hash Case.'),
        DesktopDisplayEx('https://media.licdn.com/dms/image/C560BAQGW7_WG-vi0mA/company-logo_200_200/0/1589785206048?e=1695254400&v=beta&t=hwFo_0LzWRYOBl4_E-XwIIuFnHg1V7oa1aUMa0eV9s0', 'Product', 'Pacify Med Technologies',  'Worked on benchmarking of the skin spray gun device against the standards already present in the market \nbased on certain parameters and also worked \ntowards documents which would help Pacify get FDA approval for testing and sale of the device.\nWorked on the reaching out to doctors for testing and also overlooked on the design for website and content \nfor Pacify’s official blogs.'),
        DesktopDisplayEx('https://media.licdn.com/dms/image/C560BAQG2H1EXLHfSKg/company-logo_200_200/0/1644495267516?e=1695254400&v=beta&t=t3uSrvyo6un1KMUiudCSl1x3l5dVPFCuVDSpviyeEbw', 'Operations & Product', 'Samwaad',  'Landed business collaborations with various other startups and Instagram and social media \ninfluencers and worked on the product-market fit for the launch of the application. \nParticipated in numerous competitions and applied for several incubators in the past six months and manage a \ncommunity of 200+ people on WhatsApp and have over 23k followers on Instagram and \ncreated content and designed post for social media with a traction of 1M+ accounts.'),
        DesktopDisplayEx('https://media.licdn.com/dms/image/C4E0BAQHQL7bqpu71nQ/company-logo_200_200/0/1623588535920?e=1695254400&v=beta&t=eRwU9T5neu-MnDDc3YhE2ADsJzuw_031V10xAqAEwkM', 'Product Marketing','Bluelearn',  'Strategized content marketing for social presence of the brand and analyzed data points \nand creative ways to improve engagement across socials. \nAssisted the marketing manager with campaign ideas that helped BlueLearn stand out as a brand \nand garner more audience engagement.'),
        DesktopDisplayEx('https://media.licdn.com/dms/image/D560BAQHgBxhHzGuV6w/company-logo_200_200/0/1685345378487?e=1695254400&v=beta&t=xAypliXzq9jtlhTRJwEapfAthYb1Z3QIfnnlzaUGFyg', 'Marketing', 'Zealth AI', 'Directly worked with founders to understand user persona and improve brand \nvisibility to onboard 10+ Indian hospitals and 100+ users for pre-launch phase. \nWorked to understand the perspective of the users about the beta version of the \napplication and understand their pain points.'),
      
      ],
    );
  }

  Widget DesktopDisplayEx(String projImg ,String project, String company, String desc) {
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
              Text(company, 
              style: TextStyle(color: Color.fromARGB(255, 81, 81, 81), fontSize: 17,
              fontWeight: FontWeight.normal),
              textAlign: TextAlign.left,
              softWrap: true,
              ),
              SizedBox(height: 20,),
              Text(desc,
              softWrap: true,
              style: TextStyle(
                color: Color.fromARGB(255, 91, 86, 86), fontSize: 15
              ),
              textAlign: TextAlign.left,
              ),
              SizedBox(height: 20,),
            ],
          )
        ],
        ),
    );
  }
  Widget MobileDisplayEx(String imgLink, String position, String company) {
    return Column(
      children: [
        SizedBox(height: 50,),
        Container(
          height: 200,
          width: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                image: DecorationImage(
                  image: NetworkImage(imgLink),
                  fit: BoxFit.contain
                  ,
                ),
              ), ),
              Column(children: [
                SizedBox(height: 10),
                Text(position, 
                  style: TextStyle(color: Color.fromARGB(255, 47, 47, 47), fontSize: 18,
                  fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                  softWrap: true,
                  ),
                  SizedBox(height: 5,),
                  Text(company, 
                  style: TextStyle(color: Color.fromARGB(255, 81, 81, 81), fontSize: 12,
                  fontWeight: FontWeight.normal),
                  textAlign: TextAlign.center,
                  softWrap: true,
                  ),
                            ],),
        
      ],
    );
  }
}