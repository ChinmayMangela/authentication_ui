import 'package:flutter/material.dart';

class SignupScreenBackgroundImages extends StatelessWidget {
  const SignupScreenBackgroundImages({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
          alignment: Alignment.topCenter,
          child: Image.asset(
            'assets/images/signup_screen_object2.png',
          ),
        ),
        Align(
          alignment: Alignment.topRight,
          child: Image.asset(
            'assets/images/signup_screen_object1.png',
          ),
        ),
      ],
    );
  }
}
