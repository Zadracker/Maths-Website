import 'package:flutter/material.dart';
import 'agriculture.dart';
import 'culture.dart';
import 'resource.dart';
import 'team.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
class PopulationApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Population',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: PopulationPage(),
    );
  }
}

class PopulationPage extends StatefulWidget {
  @override
  _PopulationPageState createState() => _PopulationPageState();
}

class _PopulationPageState extends State<PopulationPage> {
  bool _isImageVisible = true;
  String _selectedDistrictName = 'Manipur';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                      "Population",
                      style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.left,
                    ),
                    SizedBox(height: 8),
                    Text(
                      "According to the latest Aadhar Statistics, the population of Manipur in 2023 stands at 3,008,546 (3.01 million), experiencing a growth rate of 5.35% since the last census in 2011, where the population was recorded as 2,855,794. The population of Manipur is estimated to be 3.22 million (32.2 lakhs) by March 2023, based on projections from Unique Identification Aadhar India as of March 2022. In terms of population, Manipur ranks as the 24th most populous state in India. The state is located in northeastern India, bordered by Assam to the west, Nagaland to the north, Mizoram to the south, and Myanmar to the east.\n\nManipur is predominantly a hilly region, comprising approximately 90% of its total geographical area. The state boasts several lakes, occupying a combined area of around 600 square kilometres. The major ethnic group in Manipur is the Meitei, primarily residing in the central plains of the state. The Manipuri language, also known as Meitei, is the most widely spoken language in Manipur. Other significant tribal communities in the state include Nagas, Kukis, and Pangals (Manipuri Muslims).",
                      style: TextStyle(fontSize: 16),
                      textAlign: TextAlign.left,
                    ),
                    SizedBox(height: 16),
                  ],
                ),
              ),
            ),
            ManipurMap(
              onDistrictSelected: (districtName) {
                setState(() {
                  _selectedDistrictName = districtName;
                });
              },
            ),
            SizedBox(height: 16),
            NewCardRow(selectedDistrictName: _selectedDistrictName),
            SizedBox(height: 16),
            AnotherCardRow(),
          ],
        ),
      ),
    );
  }
}

class ManipurMap extends StatefulWidget {
  final Function(String) onDistrictSelected;

  ManipurMap({required this.onDistrictSelected});

  @override
  _ManipurMapState createState() => _ManipurMapState();
}

class _ManipurMapState extends State<ManipurMap> {
  final List<District> districts = [
    District('Chandel', 'manipur_districts/chandel.png'),
    District('Churachandapur', 'manipur_districts/churachandapur.png'),
    District('Bishnupur', 'manipur_districts/bishnupur.png'),
    District('Imphal East', 'manipur_districts/Imphal_East.png'),
    District('Imphal West', 'manipur_districts/Imphal_West.png'),
    District('Senapati', 'manipur_districts/senapati.png'),
    District('Tamenglong', 'manipur_districts/tamenglong.png'),
    District('Thoubal', 'manipur_districts/thoubal.png'),
    District('Ukhrul', 'manipur_districts/ukhrul.png'),
  ];

  int _selectedDistrictIndex = -1;
  int _hoveredDistrictIndex = -1;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double sidebarWidth = screenWidth * 0.3;
    double cardWidth = screenWidth * 0.5;
    double cardHeight = screenWidth * 0.4;

    return Row(
      children: [
        Container(
          color: Colors.blue,
          width: sidebarWidth,
          height: cardHeight,
          child: ListView.builder(
            itemCount: districts.length + 1,
            itemBuilder: (context, index) {
              if (index == districts.length) {
                return ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _selectedDistrictIndex = -1;
                      widget.onDistrictSelected('Manipur');
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    primary: _selectedDistrictIndex == -1 ? Colors.orange : Colors.transparent,
                    onPrimary: Colors.black,
                    elevation: 0,
                    padding: EdgeInsets.zero,
                    alignment: Alignment.centerLeft,
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border(
                        top: BorderSide(
                          color: _selectedDistrictIndex == -1 ? Colors.white : Colors.transparent,
                          width: 2.0,
                        ),
                      ),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                    child: Text(
                      'Manipur',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ),
                );
              }

              District district = districts[index];

              return MouseRegion(
                onEnter: (_) {
                  setState(() {
                    _hoveredDistrictIndex = index;
                  });
                },
                onExit: (_) {
                  setState(() {
                    _hoveredDistrictIndex = -1;
                  });
                },
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _selectedDistrictIndex = index;
                      widget.onDistrictSelected(district.name);
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    primary: _selectedDistrictIndex == index
                        ? Colors.orange
                        : _hoveredDistrictIndex == index
                            ? Colors.red
                            : Colors.transparent,
                    onPrimary: _selectedDistrictIndex == index ? Colors.white : Colors.black,
                    elevation: 0,
                    padding: EdgeInsets.zero,
                    alignment: Alignment.centerLeft,
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border(
                        top: BorderSide(
                          color: _selectedDistrictIndex == index || _hoveredDistrictIndex == index
                              ? Colors.white
                              : Colors.transparent,
                          width: 2.0,
                        ),
                      ),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                    child: Text(
                      district.name,
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
        Card(
          color: Colors.transparent,
          child: Container(
            width: cardWidth,
            height: cardHeight,
            child: Stack(
              alignment: Alignment.center,
              children: districts.map((district) {
                bool isHovered = districts.indexOf(district) == _hoveredDistrictIndex;
                bool isSelected = districts.indexOf(district) == _selectedDistrictIndex;

                return Positioned(
                  child: Image.asset(
                    district.imagePath,
                    width: cardWidth,
                    height: cardHeight,
                    color: isSelected ? Colors.orange : isHovered ? Colors.red : null,
                    colorBlendMode: isSelected || isHovered ? BlendMode.modulate : BlendMode.srcOver,
                    fit: BoxFit.cover,
                  ),
                );
              }).toList(),
            ),
          ),
        ),
      ],
    );
  }
}

class District {
  final String name;
  final String imagePath;

  District(this.name, this.imagePath);
}

class NewCardRow extends StatelessWidget {
  final String selectedDistrictName;

  NewCardRow({required this.selectedDistrictName});

  @override
  Widget build(BuildContext context) {
    String cardTitle = selectedDistrictName == 'Manipur'
        ? 'Manipur'
        : '$selectedDistrictName';

    String imagePath = selectedDistrictName == 'Chandel'
        ? 'Stat_image/pop_stat/Chandel_literacy.png'
        : selectedDistrictName == 'Churachandapur'
            ? 'Stat_image/pop_stat/Churachandapur_literacy.png'
            : selectedDistrictName == 'Bishnupur'
                ? 'Stat_image/pop_stat/Bish⁬nupur_literacy.png'
                : selectedDistrictName == 'Imphal East'
                    ? 'Stat_image/pop_stat/Imphal_East_literacy.png'
                    : selectedDistrictName == 'Imphal West'
                        ? 'Stat_image/pop_stat/Imphal_West_literacy.png'
                        : selectedDistrictName == 'Senapati'
                            ? 'Stat_image/pop_stat/Senapati_literacy.png'
                            : selectedDistrictName == 'Tamenglong'
                                ? 'Stat_image/pop_stat/Tamenglong_literacy.png'
                                : selectedDistrictName == 'Thoubal'
                                    ? 'Stat_image/pop_stat/Thoubal_literacy.png'
                                    : selectedDistrictName == 'Ukhrul'
                                        ? 'Stat_image/pop_stat/Ukhrul_literacy.png'
                                        : 'Stat_image/pop_stat/Manipur_literacy.png';

    double screenWidth = MediaQuery.of(context).size.width;
    double cardWidth = screenWidth * 1;
    double cardHeight = cardWidth * 1;
    double imageWidth = cardWidth * 0.3;
    double imageHeight = cardHeight * 0.3;

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Card(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 16),
                Text(
                  cardTitle,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 16),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Image.asset(
                    imagePath,
                    width: imageWidth,
                    height: imageHeight,
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
class AnotherCardRow extends StatefulWidget {
  @override
  _AnotherCardRowState createState() => _AnotherCardRowState();
}

class _AnotherCardRowState extends State<AnotherCardRow> {
  bool isClicked = false;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double cardWidth = screenWidth * 1;
    double cardHeight = cardWidth * 0.4;

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Card(
        child: Container(
          width: cardWidth,
          height: cardHeight,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Question',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              GestureDetector(
                onTap: () {
                  setState(() {
                    isClicked = !isClicked;
                  });
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    color: Color.fromARGB(255, 255, 255, 255),
                  ),
                  child: Card(
                    elevation: 2,
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "If the function for the graph of Population growth in Manipur is given. Find out the interval where it increases and decreases. Let f(x)=([x^2]/8)+8x-9",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.left,
                          ),
                          SizedBox(height: 8),
                          Visibility(
                            visible: isClicked,
                            child: TypewriterAnimatedTextKit(
                              repeatForever: false,
                              speed: Duration(milliseconds: 50),
                              totalRepeatCount: 1,
                              pause: Duration(milliseconds: 1000),
                              text: [
                                "f(x) = (x²/3) + 8x - 9\nFor a function to be increasing f'(x)>0\n\nf'(x) = 2x+8\nPut f'(x) = 0\n2x+8=0\nx=-4\n\nCase 1: (-∞,-4)\nf'(x) = 2(-10) +8\n= -20+8 = -12\nTherefore, This is the decreasing interval\n\nCase 2: (4,∞)\nf'(x)= 2(0)+8\n= 8 = +ve\nTherefore, This is the increasing function\n\nTherefore, function is decreasing from (-∞,-4) and increasing from (4,∞)."
                              ],
                              textStyle: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                    ),
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
