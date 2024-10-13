import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  final Widget child;

  const Background({required this.child});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Background circles
        Positioned(
          top: -50,
          right: -50,
          child: CircleAvatar(
            radius: 100,
            backgroundColor: Colors.yellow.withOpacity(0.4),
          ),
        ),
        Positioned(
          bottom: -50,
          left: -50,
          child: CircleAvatar(
            radius: 150,
            backgroundColor: Colors.lightBlue.withOpacity(0.4),
          ),
        ),
        // Main content
        Positioned.fill(
          child: Column(
            children: [
              Expanded(child: child),
            ],
          ),
        ),
      ],
    );
  }
}
