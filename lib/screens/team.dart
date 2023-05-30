import 'package:flutter/material.dart';

class TeamPage extends StatelessWidget {
  final List<String> images = [
    'assets/Vikram.jpg',
    'assets/images/image2.jpg',
    'assets/images/image3.jpg',
  ];

  final List<String> texts = [
    'Team Leader',
    'Text 2',
    'Text 3',
  ];

  final List<String> subTexts = [
    'Subtext 1',
    'Subtext 2',
    'Subtext 3',
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Image and Text',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Image and Text'),
        ),
        body: ListView.builder(
          itemCount: images.length,
          itemBuilder: (context, index) {
            if (index % 2 == 0) {
              // Display image on the left and text on the right
              return Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Image.asset(images[index]),
                  ),
                  Expanded(
                    flex: 1,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            texts[index],
                            style: TextStyle(fontSize: 18),
                          ),
                          SizedBox(height: 8),
                          Text(
                            subTexts[index],
                            style: TextStyle(fontSize: 14, color: Colors.grey),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              );
            } else {
              // Display text on the left and image on the right
              return Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            texts[index],
                            style: TextStyle(fontSize: 18),
                          ),
                          SizedBox(height: 8),
                          Text(
                            subTexts[index],
                            style: TextStyle(fontSize: 14, color: Colors.grey),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Image.asset(images[index]),
                  ),
                ],
              );
            }
          },
        ),
      ),
    );
  }
}