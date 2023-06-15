import 'package:flutter/material.dart';
import 'culture.dart';
import 'agriculture.dart';
import 'population.dart';

class TeamPage extends StatelessWidget {
  final List<String> images = [
    'Vikram.jpg',
    'vikram.jpg',
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
          title: Text('Team'),
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
                borderRadius: BorderRadius.circular(0.0), // Make the buttons rectangular with sharp edges
              ),
              padding: EdgeInsets.zero, // Remove the padding between the button and the text
              minimumSize: Size(120, double.infinity), // Set a fixed size for each button
              tapTargetSize: MaterialTapTargetSize.shrinkWrap, // Reduce the tap target size
              elevation: 0, // Remove the drop shadow
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
                borderRadius: BorderRadius.circular(0.0), // Make the buttons rectangular with sharp edges
              ),
              padding: EdgeInsets.zero, // Remove the padding between the button and the text
              minimumSize: Size(120, double.infinity), // Set a fixed size for each button
              tapTargetSize: MaterialTapTargetSize.shrinkWrap, // Reduce the tap target size
              elevation: 0, // Remove the drop shadow
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
                borderRadius: BorderRadius.circular(0.0), // Make the buttons rectangular with sharp edges
              ),
              padding: EdgeInsets.zero, // Remove the padding between the button and the text
              minimumSize: Size(120, double.infinity), // Set a fixed size for each button
              tapTargetSize: MaterialTapTargetSize.shrinkWrap, // Reduce the tap target size
              elevation: 0, // Remove the drop shadow
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
                borderRadius: BorderRadius.circular(0.0), // Make the buttons rectangular with sharp edges
              ),
              padding: EdgeInsets.zero, // Remove the padding between the button and the text
              minimumSize: Size(120, double.infinity), // Set a fixed size for each button
              tapTargetSize: MaterialTapTargetSize.shrinkWrap, // Reduce the tap target size
              elevation: 0, // Remove the drop shadow
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
