import 'dart:ui';
import 'package:flutter/material.dart';

class FrostedGlassContainer extends StatelessWidget {
  const FrostedGlassContainer({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Positioned(
      bottom: 0,
      child: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 40, sigmaY: 40),
          child: Container(
            color: Colors.white.withOpacity(0.1),
            height: screenHeight - 238,
            width: screenWidth,
            child: child,
          ),
        ),
      ),
    );
  }
}
