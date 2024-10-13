import 'package:flutter/material.dart';
import 'package:flutter_application_4/view/onboarding%20screens/onboarding_screen.dart';
import 'package:flutter_application_4/view/App%20pages/Reports.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: OnBoardingScreen(),
    );
  }
}
