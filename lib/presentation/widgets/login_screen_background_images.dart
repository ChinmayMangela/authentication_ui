import 'package:flutter/material.dart';

class LoginScreenBackgroundImages extends StatelessWidget {
  const LoginScreenBackgroundImages({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: 238,
          child: Image.asset(
            'assets/images/login_screen_object2.png',
          ),
        ),
        Positioned(
          top: 0,
          child: Image.asset(
            'assets/images/login_screen_object1.png',
          ),
        ),
      ],
    );
  }
}
