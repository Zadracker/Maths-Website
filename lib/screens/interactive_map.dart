import 'package:flutter/material.dart';

class ManipurMap extends StatefulWidget {
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
    District('Jiribam', 'manipur_districts/jiribam.png'),
    District('Kakching', 'manipur_districts/kakching.png'),
    District('Kamjong', 'manipur_districts/kamjong.png'),
    District('Kangpokpi', 'manipur_districts/kangpokpi.png'),
    District('Noney', 'manipur_districts/noney.png'),
    District('Pherzawl', 'manipur_districts/pherzawl.png'),
    District('Senapati', 'manipur_districts/senapati.png'),
    District('Tamenglong', 'manipur_districts/tamenglong.png'),
    District('Tengnoupal', 'manipur_districts/tengnoupal.png'),
    District('Thoubal', 'manipur_districts/thoubal.png'),
    District('Ukhrul', 'manipur_districts/ukhrul.png'),
    // Add more districts here
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
            itemCount: districts.length,
            itemBuilder: (context, index) {
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
          color: Colors.transparent, // Set the card color to transparent
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
