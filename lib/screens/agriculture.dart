import 'package:flutter/material.dart';
import 'culture.dart';
import 'team.dart';
import 'population.dart';
import 'package:carousel_slider/carousel_slider.dart';

class AgriculturePage extends StatefulWidget {
  @override
  _AgriculturePageState createState() => _AgriculturePageState();
}

class _AgriculturePageState extends State<AgriculturePage> {
  bool _isImageVisible = true;

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
        body: SingleChildScrollView(
          child: Column(
            children: [
              Visibility(
                visible: _isImageVisible,
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.6, // Adjust the height as needed
                  child: Image.asset(
                    'agriculture_1.jpg',
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
                        "Crops",
                        style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                        textAlign: TextAlign.left,
                      ),
                      SizedBox(height: 8),
                      Text(
                        "L\norem ipsum dolor sit ame\nt, conseciLo\nrem ip\ns\nu\nm\n d\no\no\nrtisasad\nasdasdkjasdkjsankdjb\naskjdb\nkjsabdkjsabdkjsabdjkasbsdjkbasdj\ns m\ni pretium id.d.",
                        style: TextStyle(fontSize: 16),
                        textAlign: TextAlign.left,
                      ),
                      SizedBox(height: 16),
                      CarouselSlider(
                        items: [
                          // Add your carousel items here
                          Container(
                            child: Image.asset('music.jpg'), //image to be changed
                          ),
                          Container(
                            child: Image.asset('Manipuri_dance-1.jpg'), //image to be changed 
                          ),
                          Container(
                            child: Image.asset('manipur_food.jpg'), //image to be changed
                          ),
                        ],
                        options: CarouselOptions(
                          height: 400.0, // Adjust the height as needed
                          aspectRatio: 3 / 2,
                          enlargeCenterPage: true,
                          scrollDirection: Axis.horizontal,
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
