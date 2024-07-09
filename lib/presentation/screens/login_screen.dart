import 'package:flutter/material.dart';
import '../widgets/Frosted_Glass_Container.dart';
import '../widgets/gradient_circle.dart';
import '../widgets/login_form.dart';
import '../widgets/login_screen_background_images.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
        LoginScreenBackgroundImages(),
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
          child: LoginForm(),
        ),
      ],
    );
  }
}
