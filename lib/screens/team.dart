import 'package:flutter/material.dart';
import 'culture.dart';
import 'agriculture.dart';
import 'population.dart';
import 'resource.dart';

class TeamPage extends StatelessWidget {
  final List<String> images = [
    'Team/Zayyan.png',
    'Team/Parshant.png',
    'Team/Harsh.png',
    'Team/Aryan.png',
    'Team/Kartik.png',
    'Team/Shreyansh.png',
  ];

  final List<String> texts = [
    'Zayyan Dalai',
    'Parshant Tanwar',
    'Harshvardhan Singh',
    'Aryan Sharma',
    'Kartik Biswal',
    'Shreyansh Dubey',
  ];

  final List<String> subTexts = [
    "He is an exceptional student who has taken on the role of Project Manager and Lead Programmer for a website dedicated to showcasing the culture, agriculture, population, and resources of Manipur. His programming prowess is evident in seamlessly integrating complex math concepts like Differentiation and Integration into the website, enhancing user understanding. His attention to detail and commitment to excellence have played a pivotal role in the website's success. His leadership skills ensure smooth collaboration, timely delivery. His passion for preserving cultural heritage is reflected in the comprehensive coverage and interactive features of the website.",
    "A dedicated student, has conducted insightful research on Manipur's population. His thorough analysis explores demographic trends, migration patterns, and socio-economic factors influencing population growth. Parshant's meticulous attention to detail, diverse research methodologies, and incorporation of qualitative insights make his work comprehensive and valuable. His achievement as a young student showcases his exceptional intellect, passion for knowledge, and potential to excel. Parshant's research on Manipur's population inspires peers and educators, highlighting the power of curiosity and critical thinking.",
    "A hardworking student, has conducted valuable research on Manipuri agriculture. Through meticulous data analysis, he has explored crop patterns, traditional farming techniques, soil health, and sustainability. His findings offer practical solutions to challenges faced by farmers, aiming to improve yields and livelihoods. His commitment, analytical prowess, and genuine concern for farmers' welfare inspire others. A great teammate who has done the work asked of him. ",
    "An exceptional student has emerged as a brilliant researcher with a deep passion for exploring the abundant resources of Manipur. With an insatiable curiosity and unwavering dedication, he has delved into the realm of this enchanting northeastern state, unearthing its hidden treasures and shedding light on its immense potential. Through meticulous research, he has showcased his profound understanding of Manipur's diverse resources, ranging from its rich biodiversity, rare medicinal plants, and vibrant cultural heritage to its untapped renewable energy sources.",
    "A brilliant and dedicated student, made an invaluable contribution to our math project by seamlessly integrating the complex topics of integration and differentiation. His exceptional understanding of these concepts allowed him to create a cohesive and comprehensive project that showcased his analytical prowess and problem-solving abilities. His meticulous attention to detail, innovative thinking, and exceptional presentation skills were instrumental in elevating the project to new heights. His unwavering commitment to excellence and passion for mathematics truly set him apart, making him an invaluable asset to our team.",
    "An exceptional student made an invaluable contribution to our project by conducting meticulous research on the vibrant culture of Manipur. With a keen eye for detail, he delved into the region's traditions, rituals, art forms, and historical significance, unearthing fascinating insights that brought the essence of Manipuri culture to life. His relentless pursuit of knowledge, dedication to thorough research, and ability to synthesize information compellingly elevated the project to new heights. His passion for cultural exploration and exceptional research skills made him an invaluable asset to our team.",
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
