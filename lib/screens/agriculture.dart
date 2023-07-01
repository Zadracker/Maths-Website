import 'package:flutter/material.dart';
import 'culture.dart';
import 'team.dart';
import 'population.dart';
import 'resource.dart';
import 'package:carousel_slider/carousel_slider.dart';

class AgriculturePage extends StatelessWidget {
  final double carouselHeight = 500; // Customize the height of the Carousel Slider
  final double carouselWidth = double.infinity; // Customize the width of the Carousel Slider

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Agriculture',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Agriculture'),
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.popUntil(context, ModalRoute.withName('/'));
            },
          ),
          actions: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(0.0),
                ),
                padding: EdgeInsets.zero,
                minimumSize: Size(120, double.infinity),
                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                elevation: 0,
              ),
              child: Text("Culture"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CulturePage()),
                );
              },
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(0.0),
                ),
                padding: EdgeInsets.zero,
                minimumSize: Size(120, double.infinity),
                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                elevation: 0,
              ),
              child: Text("Agriculture"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AgriculturePage()),
                );
              },
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(0.0),
                ),
                padding: EdgeInsets.zero,
                minimumSize: Size(120, double.infinity),
                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                elevation: 0,
              ),
              child: Text("Population"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PopulationPage()),
                );
              },
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(0.0),
                ),
                padding: EdgeInsets.zero,
                minimumSize: Size(120, double.infinity),
                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                elevation: 0,
              ),
              child: Text("Resources"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ResourcePage()),
                );
              },
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(0.0),
                ),
                padding: EdgeInsets.zero,
                minimumSize: Size(120, double.infinity),
                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                elevation: 0,
              ),
              child: Text("Team"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TeamPage()),
                );
              },
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.6, // Adjust the height as needed
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('build/web/assets/agriculture_1.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Agriculture in Manipur",
                        style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                        textAlign: TextAlign.left,
                      ),
                      SizedBox(height: 8),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          image: DecorationImage(
                            image: AssetImage('web/assets/resources_2.jpg'),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Card(
                          elevation: 2,
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Birth of Agriculture Department",
                                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                                  textAlign: TextAlign.left,
                                ),
                                SizedBox(height: 8),
                                Text(
                                  ">The Department of Agriculture, Manipur was emerged in March 1946 with a skeleton staff consisting of about a dozen members only headed by an Agriculture Officer in a small building at Babupara, Imphal.\n>With the lunching of “Grow More Food Campaign” under Ministry of Food and Agriculture, Government of India a separate Food Production Office was established in September 1950 with the objective of popularizing double cropping in all suitable areas state in both Hills and Valley.\n>The gradual increase of the staff strength to cope with the increasing volume of work of the Department, the State Government recognized the felt need of strengthening the Department that necessitated the creation of a post of Director of Agriculture, Manipur along with supporting staff during 1954. After 37 years of existence, Agriculture Department has  become a major department in the year 1983 with over 2000 sanctioned posts.\n>In November 1977 Agriculture Department was bifurcated as Agriculture Department and Horticulture & Soil Conservation Department.\n>In September 1997 the joint cadre of Agriculture was trifurcated as indicated below.",
                                  style: TextStyle(fontSize: 16),
                                  textAlign: TextAlign.left,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 8),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          image: DecorationImage(
                            image: AssetImage('resources_3.jpg'),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Card(
                          elevation: 2,
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Agricultural development",
                                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                                        textAlign: TextAlign.left,
                                      ),
                                      SizedBox(height: 8),
                                      Text(
                                        ">During the territorial days most of the state plan expenditures were focused to infrastructural development. During the two decades between 1950s and 1970s the basic parameters of modernization in agriculture were introduced.\n>In the 2nd plan the Japanese Method of paddy cultivation was introduced in about 3700 acres. Use of chemical fertilizers, improved tools and implements and plant protection inputs were also introduced.\n>Experimental farms-cum-demonstration farm and orchards were established at Maram, Tengnoupal, Nungba, Thanlon,Tinsong,Jiribam and Phungyan-Pheisat. The Fruit preservation Factory, soil Testing Laboratory and Basic Agriculture School, now Gram Sevak Training Centre. Soil Conservation work was taken up in 2400 acres during the same plan.\n>In the third plan Rice Research Centre Wangbal, Seed Multiplication farm Chakpikarong and Thoubal and a soil conservation demonstration farm at Kangpokpi were established.\n>The introductory, demonstrative and qualitative nature of investment in agriculture in the pre statehood days therefore did not have immediate and significant impact on agricultural development in the state. On the other hand the population growth rates of 3.5 pc and 3.7 pc per annum during those two decades had greatly increased pressure on land.",
                                        style: TextStyle(fontSize: 16),
                                        textAlign: TextAlign.left,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 16),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          image: DecorationImage(
                            image: AssetImage('resources_4.jpg'),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Card(
                          elevation: 2,
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Introduction of Green Revolution & its Impact in the State",
                                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                                        textAlign: TextAlign.left,
                                      ),
                                      SizedBox(height: 8),
                                      Text(
                                        ">The Green Revolution in the state can be said to have truly started in Manipur in the seventies. Introduction HYV seeds, fertilizers, pesticides mechanization and providing irrigation facilities forms the backbone of the green revolution. Farmers of the state can be said to have observed the process of modernization admirably.\n>Area under HYV seeds have increased from 23,000 hectares in 1972 to 1,06,180 hectare in 2013-14 an above five times increases. Area under first crop has also increased seventeen times from 1600 hectares in 1972 to 27,800 hectares in 2013-14. The quantum of improved seeds made available to farmers multiplied four times from the level of 142 qtls in 1972-73 to 570.031. qtls in 2013-14. The state has to day seed testing laboratory and a seed Certification Cell.",
                                        style: TextStyle(fontSize: 16),
                                        textAlign: TextAlign.left,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 16),
                      Container(
                        height: carouselHeight,
                        width: carouselWidth,
                        child: CarouselSlider(
                          items: [
                            Image.asset(
                              'Stat_image/agri_stat/Paddy_graph.png',
                              fit: BoxFit.cover,
                            ),
                            Image.asset(
                              'Stat_image/agri_stat/Potato_graph.png',
                              fit: BoxFit.cover,
                            ),
                            Image.asset(
                              'Stat_image/agri_stat/Pulses_graph.png',
                              fit: BoxFit.cover,
                            ),
                          ],
                          options: CarouselOptions(
                            height: carouselHeight,
                            enlargeCenterPage: true,
                            viewportFraction: 0.8,
                            aspectRatio: 4 / 3,
                            autoPlay: true,
                            autoPlayCurve: Curves.fastOutSlowIn,
                            autoPlayAnimationDuration: Duration(milliseconds: 800),
                            enableInfiniteScroll: true,
                            scrollDirection: Axis.horizontal,
                          ),
                        ),
                      ),
                      SizedBox(height: 16),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          image: DecorationImage(
                            image: AssetImage('resources_5.jpg'),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Card(
                          elevation: 2,
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Q-	The height of the crop are increasing at the rate 15cm/week. In 87 weeks it was found that crop has achieved its maximum height which is 600cm. Then find the height-time function [h(t)] of the sugarcane?",
                                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                                  textAlign: TextAlign.left,
                                ),
                                SizedBox(height: 8),
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      "dh/dt = 15cm/week\nOr dh = 15 dt\nIntegrating both side with –\n∫dh.dt = ∫15.dt\nh(t) = 15t+C 		(i)\nIn the question it is given that \nWhen t = 87 \nh(t) = 600\n\nPut the value in equation (i)\nh(t) = 15t+C\n600 = 15 x 87 +C\ntherefore, C = 600-(15x87)\n= 600 -1305 = -705\nAgain, putting the value of C in equation (i)\nh(t) = 15t-705  ",
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.white,
                                      ),
                                      textAlign: TextAlign.left,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 16),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          image: DecorationImage(
                            image: AssetImage('resources_6.jpg'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
