import 'package:flutter/material.dart';
import 'culture.dart';
import 'team.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My App'),
        backgroundColor: Colors.blue,
        elevation: 4,
        actions: [
          FloatingActionButton(
            child: Text("Agriculture"),
            onPressed: () {
              // Handle search action
            },
          ),
          FloatingActionButton(
            child: Text("Population"),
            onPressed: () {
              // Handle search action
            },
          ),
          FloatingActionButton(
            child: Text("Team"),
            onPressed: () {
              Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => TeamPage()),
              // Handle search action
            );
           },
          ),
        ],
      ),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage('https://img.traveltriangle.com/blog/wp-content/uploads/2021/10/Things-to-do-in-Manipur.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Center(
            child: Text(
              'Manipur',
              style: TextStyle(
                fontSize: 24,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(bottom: 20.0),
              child: ElevatedButton(
                child: Text('Explore'),
                onPressed: () {
                  Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => CulturePage()),
                  // Handle button press
                );
               },
              ),
            ),
          ),
        ],
      ),
    );
  }
}