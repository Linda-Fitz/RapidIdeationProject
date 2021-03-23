import 'package:flutter/material.dart';

class BottomNavScreen extends StatefulWidget {
  @override
  _BottomNavScreenState createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  final List _screens = [
    Scaffold(),
    Scaffold(),
    Scaffold(),
    Scaffold(),
    Scaffold(),
  ];
  int _currentIndex = 2;

  Image tasksIcon = Image.asset('assets/icons/tasksicon.png');
  Image droneIcon = Image.asset('assets/icons/droneicon.png');
  Image homeIcon = Image.asset('assets/icons/homeicon.png');
  Image weatherIcon = Image.asset('assets/icons/weathericon.png');
  Image wheelIcon = Image.asset('assets/icons/steeringwheelicon.png');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) => setState(() => _currentIndex = index),
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.white,
        elevation: 0.0,
        items: [
          tasksIcon,
          droneIcon,
          homeIcon,
          wheelIcon,
          weatherIcon,
        ]
            .asMap()
            .map((key, item) => MapEntry(
                  key,
                  BottomNavigationBarItem(
                    label: (''),
                    icon: Container(
                      padding: const EdgeInsets.symmetric(
                        vertical: 6.0,
                        horizontal: 16.0,
                      ),
                      decoration: BoxDecoration(
                        color: _currentIndex == key
                            ? Colors.lime
                            : Colors.transparent,
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: item,
                    ),
                  ),
                ))
            .values
            .toList(),
      ),
    );
  }
}
