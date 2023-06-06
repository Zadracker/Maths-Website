import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';


class CulturePage extends StatelessWidget {
  final List<String> cards = [
    "Card 1",
    "Card 2",
    "Card 3",
    "Card 4",
    "Card 5",
  ];

  final List<String> cardTitles = [
    "Title 1",
    "Title 2",
    "Title 3",
    "Title 4",
    "Title 5",
  ];

  final List<String> cardSubtexts = [
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Odio facilisis mauris sit amet massa vitae. Euismod in pellentesque massa placerat duis ultricies. Maecenas ultricies mi eget mauris. Vel quam elementum pulvinar etiam non quam. Porta lorem mollis aliquam ut porttitor leo. Duis tristique sollicitudin nibh sit amet commodo nulla. Vulputate sapien nec sagittis aliquam malesuada bibendum arcu vitae. Sit amet cursus sit amet dictum sit. Est ante in nibh mauris cursus mattis molestie a. Dapibus ultrices in iaculis nunc sed augue lacus. Lacus vestibulum sed arcu non odio. Vel pretium lectus quam id leo in vitae turpis massa. Laoreet non curabitur gravida arcu ac. Ac turpis egestas sed tempus urna et. Vitae semper quis lectus nulla at volutpat diam ut venenatis.",
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
    "Subtext 3",
    "Subtext 4",
    "Subtext 5",
  ];

  final List<String> cardImages = [
    "image1.jpg",
    "image2.jpg",
    "image3.jpg",
    "image4.jpg",
    "image5.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Carousel Slider')),
      body: Center(
        child: CarouselSlider(
          items: cards.asMap().entries.map((entry) {
            final int index = entry.key;
            final String title = cardTitles[index];
            final String subtext = cardSubtexts[index];
            final String image = cardImages[index];

            return Builder(
              builder: (BuildContext context) {
                return Container(
                  width: MediaQuery.of(context).size.width * 0.85,
                  margin: EdgeInsets.symmetric(horizontal: 10.0),
                  decoration: BoxDecoration(
                    color: Colors.lightBlue,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Row(
                    children: [
                      SizedBox(width: 20.0),
                      Container(
                        width: 80.0,
                        height: 80.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          image: DecorationImage(
                            image: AssetImage(image),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(width: 20.0),
                      Flexible(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start, // Align children to the start
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
              },
            );
          }).toList(),
          options: CarouselOptions(
            height: 400.0, // Adjust the height as needed
            initialPage: 0,
            enlargeCenterPage: true,
            enableInfiniteScroll: true,
            autoPlay: true,
            autoPlayInterval: Duration(seconds: 2),
            autoPlayAnimationDuration: Duration(milliseconds: 800),
            autoPlayCurve: Curves.fastOutSlowIn,
            scrollDirection: Axis.horizontal,
          ),
        ),
      ),
    );
  }
}