import 'package:flutter/material.dart';
import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'home_screen.dart';
import 'mesagge_screen.dart';
import 'profil_screen.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int _currentIndex = 1; 

  final List<Widget> _screens = [
    const MessageScreen(),
    const HomeScreen(),
    const ProfilScreen(),
  ];

  final iconList = <IconData>[Icons.message, Icons.home, Icons.person];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('')),
      body: _screens[_currentIndex],
      bottomNavigationBar: AnimatedBottomNavigationBar(
        icons: iconList,
        activeIndex: _currentIndex,
        gapLocation: GapLocation.none,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        iconSize: 30,
        backgroundColor: Colors.blue,
        activeColor: Colors.white,
        inactiveColor: Colors.black,
      ),
    );
  }
}
