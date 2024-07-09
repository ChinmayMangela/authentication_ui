
import 'package:authentication_ui/presentation/widgets/Frosted_Glass_Container.dart';
import 'package:authentication_ui/presentation/widgets/gradient_circle.dart';
import 'package:authentication_ui/presentation/widgets/signup_form.dart';
import 'package:authentication_ui/presentation/widgets/signup_screen_background_images.dart';
import 'package:flutter/material.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return const Stack(
      children: [
        SignupScreenBackgroundImages(),
        Positioned(
          left: -10,
          bottom: -30,
          child: GradientCircle(
            isLeftSideCircle: true,
          ),
        ),
        Positioned(
          right: -10,
          bottom: -30,
          child: GradientCircle(
            isLeftSideCircle: false,
          ),
        ),
        FrostedGlassContainer(
          child: SignupForm(),
        ),
      ],
    );
  }
}