import 'package:flutter/material.dart';
import 'culture.dart';
import 'team.dart';
import 'population.dart';
import 'agriculture.dart';

class ResourcePage extends StatefulWidget {
  @override
  _ResourcePageState createState() => _ResourcePageState();
}

class _ResourcePageState extends State<ResourcePage> {
  bool _isImageVisible = true;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Resource',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Resource'),
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
              Visibility(
                visible: _isImageVisible,
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.6,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('resources_1.png'),
                      fit: BoxFit.cover,
                    ),
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
                        "Resources of Manipur",
                        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 8),
                      Text(
                        "Manipur, located in northeastern India, is endowed with diverse natural resources. Some of the key natural resources found in Manipur include forests, minerals, and hydroelectric potential.",
                        style: TextStyle(fontSize: 16),
                      ),
                      SizedBox(height: 16),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          image: DecorationImage(
                            image: AssetImage('resources_2.jpg'),
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
                                  "Forest Resources:",
                                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                                  textAlign: TextAlign.left,
                                ),
                                SizedBox(height: 8),
                                Text(
                                  "Manipur is known for its rich forest cover, which includes a variety of flora and fauna. The state's forests contribute to timber production, medicinal plants, and the conservation of biodiversity. It also has various other resources like semi-evergreen forests, Teak gurjan forests, Wet hill forests, Wet Temperate Forests, Sub-alpine forests, Bamboo breaks, Pinus-cassia forests, Minor products, important tree species",
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
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Mineral Resources:",
                                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                                  textAlign: TextAlign.left,
                                ),
                                SizedBox(height: 8),
                                Text(
                                  "Manipur is known for its rich forest cover, which includes a variety of flora and fauna. The state's forests contribute to timber production, medicinal plants, and the conservation of biodiversity. It also has various other resources like semi-evergreen forests, Teak gurjan forests, Wet hill forests, Wet Temperate Forests, Sub-alpine forests, Bamboo breaks, Pinus-cassia forests, Minor products, important tree species",
                                  style: TextStyle(fontSize: 16),
                                  textAlign: TextAlign.left,
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
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Hydroelectric Potential:",
                                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                                  textAlign: TextAlign.left,
                                ),
                                SizedBox(height: 8),
                                Text(
                                  "Manipur has significant hydroelectric potential due to its hilly terrain and abundant water resources. The state has several rivers and water bodies that can be harnessed for generating electricity. The Loktak Lake, the largest freshwater lake in northeastern India, is an important source of hydroelectric power.",
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
                          // image: DecorationImage(
                          //   image: AssetImage(''),
                          //   fit: BoxFit.cover,
                          // ),
                        ),
                        child: Card(
                          elevation: 2,
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Mineral Extraction Data",
                                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                                  textAlign: TextAlign.left,
                                ),
                                SizedBox(height: 8),
                                Image.asset(
                                  'Stat_image/resource_mining_graph.png',
                                  fit: BoxFit.cover,
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
    color: Color.fromARGB(255, 255, 255, 255),
  ),
  child: Card(
    elevation: 2,
    color: Colors.white, // Set the color to transparent
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(8.0),
    ),
    child: Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "The total revenue in Rupees that the Contractor receives from sale of x Kgs of limestone is given by- \nR(x) = 3x^2+36x+5 [value given in thousands] \nfind the marginal revenue when x = 10",
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
                "To find the marginal revenue when the quantity of limestone sold is given by x, we need to calculate the derivative of the revenue function R(x) with respect to x, denoted as R'(x).\nGiven the revenue function:\nR(x) = 3x^2 + 36x + 5\nTo find R'(x), we can differentiate each term of the function with respect to x using the power rule of differentiation:\nR'(x) = d/dx(3x^2) + d/dx(36x) + d/dx(5)\nDifferentiating each term:\nR'(x) = 6x + 36 + 0\nR'(x) = 6x + 36\nNow, we can substitute the value of x into the derivative equation to find the marginal revenue.\nLet's say x = 10 \n\nSubstituting x = 10 into R'(x):\nR'(10) = 6(10) + 36\nR'(10) = 60 + 36\nR'(10) = 96\n\nTherefore, the marginal revenue when x = 10 is 96 Thousand Rupees.",
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