import 'package:flutter/material.dart';

class GradientDivider extends StatelessWidget {
  const GradientDivider({
    super.key,
    required this.isLeftSideDivider,
  });

  final bool isLeftSideDivider;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 7),
      width: 70,
      height: 1,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: isLeftSideDivider
              ? _leftSideDividerColorScheme()
              : _rightSideDividerColorScheme(),
        ),
      ),
    );
  }

  List<Color> _leftSideDividerColorScheme() {
    return [
      Colors.black.withOpacity(0.1),
      Colors.white.withOpacity(0.2),
      Colors.white.withOpacity(0.5),
    ];
  }

  List<Color> _rightSideDividerColorScheme() {
    return [
      Colors.white.withOpacity(0.5),
      Colors.white.withOpacity(0.2),
      Colors.black.withOpacity(0.1),
    ];
  }
}
