import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_application_4/view/onboarding%20screens/login_screen1.dart';
import 'package:flutter_application_4/view/onboarding%20screens/login_screen2.dart';
import 'package:flutter_application_4/view/onboarding%20screens/login_screen3.dart';
import 'package:flutter_application_4/view/signup%20page/sign_up.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  _OnBoardingScreenState createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final PageController _controller = PageController();
  bool onLastPage = false;
  Timer? _timer;

  @override
  void initState() {
    super.initState();

    _timer = Timer.periodic(const Duration(seconds: 2), (Timer timer) {
      if (_controller.page == 2) {
        timer.cancel();
      } else {
        _controller.nextPage(
          duration: const Duration(milliseconds: 500),
          curve: Curves.easeIn,
        );
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            onPageChanged: (index) {
              setState(() {
                onLastPage = (index == 2);
              });
            },
            children: const [
              // Replace with your actual onboarding content widgets
              LoginScreen1(),
              LoginScreen2(),
              login_screen3(),
            ],
          ),
          Align(
            alignment: const Alignment(0.0, 0.58),
            child: SmoothPageIndicator(controller: _controller, count: 3),
          ),
          // Sign Up button only on the last page
          if (onLastPage)
            Align(
              alignment: const Alignment(0.0, 0.79),
              child: GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => const SignUp()),
                  );
                },
                child: Container(
                  padding: const EdgeInsets.all(15.0),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 75, 56, 202),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: const Text(
                    'Sign Up',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
