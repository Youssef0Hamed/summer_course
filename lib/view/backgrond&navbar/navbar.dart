import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart'; // Import the package
import 'package:flutter_application_4/view/App%20pages/Home.dart';
import 'package:flutter_application_4/view/App%20pages/Reports.dart';
import 'package:flutter_application_4/view/App%20pages/Transfer.dart';
import 'package:flutter_application_4/view/App%20pages/transaction%20history.dart';

class Navbar extends StatefulWidget {
  const Navbar({super.key});
  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  int _selectedIndex = 0;
  final List<Widget> _pages = [
    const Home(),
    Transactions(),
    Transfer(),
    Reports(),
  ];

  @override
  Widget build(BuildContext context) {
    log(_selectedIndex.toString());
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: CurvedNavigationBar(
        index: _selectedIndex, // Set the initial selected index
        color: const Color(0xFFB7004D4D), // Inactive background color
        backgroundColor: Colors.white, // Color behind the navbar
        buttonBackgroundColor:
            const Color(0xFF4B38CA), // Color of the active icon's background
        animationCurve: Curves.easeInOut,
        animationDuration: const Duration(milliseconds: 300),
        height: 60,
        items: const [
          Icon(
            Icons.home,
            size: 30,
            color: Colors.white, // Active icon color
          ),
          Icon(
            Icons.send,
            size: 30,
            color: Colors.white,
          ),
          Icon(
            Icons.bar_chart,
            size: 30,
            color: Colors.white,
          ),
          Icon(
            Icons.more_horiz,
            size: 30,
            color: Colors.white,
          ),
        ],
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
    );
  }
}
