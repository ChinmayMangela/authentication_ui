import 'package:authentication_ui/data/authentication_button_images.dart';
import 'package:authentication_ui/presentation/widgets/authentication_image_button.dart';
import 'package:flutter/material.dart';

class AuthenticationImageButtonRow extends StatelessWidget {
  const AuthenticationImageButtonRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: authenticationButtonImages.map((imageUrl) {
        return AuthenticationImageButton(imageUrl: imageUrl);
      }).toList(),
    );
  }
}
