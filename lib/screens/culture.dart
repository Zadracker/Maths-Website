import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'team.dart';
import 'agriculture.dart';
import 'population.dart';

class CulturePage extends StatefulWidget {
  @override
  _CulturePageState createState() => _CulturePageState();
}

class _CulturePageState extends State<CulturePage> {
  final List<String> cards = [
    "Card 1",
    "Card 2",
    "Card 3",
    "Card 4",
    "Card 5",
  ];

  final List<String> cardImages = [
    "manipur_food.jpg",
    "Manipuri-women-wearing-traditional-dress.jpg",
    "Manipuri_dance-1.jpg",
    "handicraft.jpg",
    "music.jpg",
  ];

  final List<String> cardTitles = [
    "Cuisine",
    "Festivals",
    "Dances",
    "Art And Handicraft",
    "Traditional Music",
  ];

  final List<String> cardSubtexts = [
    "Manipuri Cuisine is marked by abundant use of rice, fish and leafy green vegetables. The region experiences heavy rainfall of over 1000m annually and is thus suitable for the cultivation of several small, long-grained and scented varieties of rice. As the region is dotted with many small and large water-bodies, fish is also found in abundance. Manipuri food is also marked by the use of a variety of vegetables, many of which are exclusive to this region and not known in the rest of the Indian subcontinent. The vegetables are mostly grown at home by the householders or are procured from the local market. As a result of this, the dishes of the Manipuri cuisine are predominantly seasonal and organic. The common vegetables that are indigenous to this region include pumpkins, various kinds of beans, gourds, brinjals, etc. Vegetables that were introduced under the rule of the British include potatoes, cabbage, tomatoes, radishes, peas, carrots and turnips. Apart from this, vegetables that are unique and native to this region are yendem (a kind of taro), kolamni (waterspinach), thangjing (foxnut), koukhaa (katniss), yongchak (a variety of bitter beans), sougri (roselle leaves) and so on. Famous Foods of Manipur: \n >Chamthong \n >Alu Kangmet \n >Eromba \n >Nga-Thongba \n >Morok Metpa",
    "Manipur is one of the most beautiful states in Northeast India. Blessed by nature’s bounty and boasting a rich culture & history, it has served as the meeting point of Asian economic and cultural exchange for more than 2,500 years. That richness is also reflected in its fairs & festivals. Some of them are held to celebrate the onset of a bountiful harvest, while others are held in the hope of attaining greater prosperity and success in life. One of the major festivals of Manipur is Gang-Ngai, which is celebrated in the month of December/January by the Kabui Nagas. It is marked by an oath-taking ceremony followed by a common feast. Dances are held, farewell gifts are distributed & there is vigorous merrymaking on all sides. Come 15th February, and the Nagas get together to celebrate the Lui Ngai Ni, a collective seed sowing festival. It is marked by wonderful songs and dances. Immediately after this festival, people belonging to several tribes of the Naga group begin their cultivation. It is also a way of strengthening the bond between the Nagas.",
    "Manipuri is an ancient classical dance form that originated in the northeastern state of Manipur in India. Its origins can be traced back to ancient times, even before recorded history began. Manipuri culture is a combination of both Indian and southeastern cultures, and this is reflected in its dances as well. The dance streams are more or less independent of each other, and an artist spends his or her life being proficient in one or the other. Features of Manipuri that distinguish it from other classical dances \n >It is more restrained compared to the other dances of India. \n >The artist never establishes eye contact with the audience. \n >The movements are continuous and circular, merging into one another. \n >The hand gestures or mudras gel gently with the overall movements. \n >The facial expressions are not over the top, but rather subdued. \n >Even in the more vigorous form, that is, the Cholom, these features are maintained. \n >The artist does not wear bells or anklets known as ghunghru, and this is in stark contrast with the other classical dances of India.",
    "Manipur has some prized possessions within the world of art and handicraft spanning from hand-woven and embroidered textiles. Mats made of water reed are exceptional pieces of handicrafts. Shawls and blankets made here have a geometrical pattern that looks amazing. Manipuri dance dolls make beautiful souvenirs that can be gifted to friends and family. It's not surprising that northeastern states have people who are into the creative business and their craft is very different from the rest of the country.  It is said to be one of the largest producers of bamboo crafts in India, and many decorative items like sofa sets, stools, mats, basketry, and flower vases are made. \n >Kauna is a kind of reed this is used for making mats and cushions and often exported to countries like the UK, Netherlands, Germany, France, UAE, and Switzerland. \n >Pottery is an age-old craft of Manipur which is painted in different and bright colors. \n >Textile Weaving is practiced by the women and also known as Laichamphi.",
    "Manipuri people are very fond of music and an ardent admirer of the same. Mostly folk songs dominate the region. \n	>Khullong Ishei is sung by the Meities in villages when they go to work like fishing. The theme is love where the singer adjusts the lyrics of the song with his own tune. \n	>Pena Ishei is another form of song which is accompanied with the help of a musical instrument called Pena. The theme is mostly the love story of Khamba-Thoibi. A Pena looks like a slender bamboo rod which is attached to the round dry shell of gourd of coconut. To produce the musical symphony, the bamboo rod is held in the left hand, and the drum shell is pressed against the chest. The right hand is used for holding the curved iron rod. The strings are rubbed with the curved iron rod. \n >Lai Haraoba Ishei is a song which is known for erotic mysticism, but the inner meaning is covered up by the use of simple words. It is sung during the ceremonial occasion of Lai-Haraoba. Thoubal Chongba, Nat, Gaur Padas, Dhob, Napi Pala, Khubaishei, and Raslila songs are some of the many famous songs sung in that region.",
  ];

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Culture'),
        backgroundColor: Colors.blue,
        elevation: 0,
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
              // Handle search action
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
              // Handle search action
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
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("culture_BG.jpg"), // Replace with your background image
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            Expanded(
              child: CarouselSlider(
                items: cards.asMap().entries.map((entry) {
                  final int index = entry.key;
                  final String image = cardImages[index];
                  final String title = cardTitles[index];
                  final String subtext = cardSubtexts[index];

                  return Container(
                    width: MediaQuery.of(context).size.width * 0.85,
                    margin: EdgeInsets.symmetric(horizontal: 10.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      image: DecorationImage(
                        image: AssetImage(image),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 20.0),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                title,
                                style: TextStyle(fontSize: 24.0, color: Colors.white),
                              ),
                              SizedBox(height: 10.0),
                              Text(
                                subtext,
                                style: TextStyle(fontSize: 16.0, color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                }).toList(),
                options: CarouselOptions(
                  height: 400.0,
                  initialPage: _currentIndex,
                  enlargeCenterPage: true,
                  onPageChanged: (index, reason) {
                    setState(() {
                      _currentIndex = index;
                    });
                  },
                  autoPlay: true, // Enable auto-play
                  autoPlayInterval: Duration(seconds: 6), // Set auto-play interval
                  autoPlayAnimationDuration: Duration(milliseconds: 800), // Set animation duration
                  autoPlayCurve: Curves.fastOutSlowIn, // Set animation curve
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: cards.asMap().entries.map((entry) {
                final int index = entry.key;
                final String title = cardTitles[index];

                return TextButton(
                  onPressed: () {
                    setState(() {
                      _currentIndex = index;
                    });
                  },
                  style: ButtonStyle(
                    overlayColor: MaterialStateProperty.resolveWith<Color?>(
                      (Set<MaterialState> states) {
                        if (states.contains(MaterialState.hovered)) {
                          return Colors.blue.withOpacity(0.2);
                        }
                        if (states.contains(MaterialState.focused) ||
                            states.contains(MaterialState.pressed)) {
                          return Colors.blue.withOpacity(0.4);
                        }
                        return null;
                      },
                    ),
                  ),
                  child: Hero(
                    tag: 'card_$index', // Unique Hero tag
                    child: Text(
                      title,
                      style: TextStyle(
                        color: _currentIndex == index ? const Color.fromARGB(255, 6, 64, 112) : Colors.white,
                      ),
                    ),
                  ),
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
