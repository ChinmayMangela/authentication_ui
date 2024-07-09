import 'package:flutter/material.dart';

class AuthenticationImageButton extends StatelessWidget {
  const AuthenticationImageButton({
    super.key,
    required this.imageUrl,
  });

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      height: 50,
      width: 60,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
          gradient: LinearGradient(colors: [
        Colors.white.withOpacity(0.2),
        Colors.white.withOpacity(0.1),
      ])),
      child: Center(
        child: Image.asset(imageUrl),
      ),
    );
  }
}
