import 'package:flutter/material.dart';
import 'agriculture.dart';
import 'team.dart';
import 'culture.dart';
import 'interactive_map.dart';

class PopulationPage extends StatefulWidget {
  @override
  _PopulationPageState createState() => _PopulationPageState();
}

class _PopulationPageState extends State<PopulationPage> {
  bool _isImageVisible = true;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Population',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Population'),
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
                    'population_1.jpg',
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
                        "People",
                        style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                        textAlign: TextAlign.left,
                      ),
                      SizedBox(height: 8),
                      Text(
                        "L\norem ipsum dolor id.d.",
                        style: TextStyle(fontSize: 16),
                        textAlign: TextAlign.left,
                      ),
                      SizedBox(height: 16),
                    ],
                  ),
                ),
              ),
              ManipurMap(),
            ],
          ),
        ),
      ),
    );
  }
}