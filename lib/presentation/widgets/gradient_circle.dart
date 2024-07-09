import 'package:flutter/material.dart';

class GradientCircle extends StatelessWidget {
  const GradientCircle({super.key, required this.isLeftSideCircle});

  final bool isLeftSideCircle;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 130,
      height: 130,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        gradient: LinearGradient(
          begin: isLeftSideCircle ? Alignment.centerLeft : Alignment.centerRight,
          end: isLeftSideCircle ?  Alignment.topRight : Alignment.topRight,
          colors: isLeftSideCircle ? CircleColorScheme.redScheme : CircleColorScheme.purpleScheme,
        ),
      ),
    );
  }
}

class CircleColorScheme {
  static List<Color> redScheme = [
    Colors.red.shade600,
    Colors.black.withOpacity(0.9),
    Colors.black.withOpacity(0.9),
    Colors.black.withOpacity(0.9)
  ];

  static List<Color> purpleScheme = [
    Colors.purple.shade600,
    Colors.black.withOpacity(0.9),
    Colors.black.withOpacity(0.9),
    Colors.black.withOpacity(0.9)
  ];
}
