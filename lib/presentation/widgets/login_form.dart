import 'package:authentication_ui/presentation/widgets/authentication_image_button_row.dart';
import 'package:authentication_ui/presentation/widgets/continue_with_text.dart';
import 'package:authentication_ui/presentation/widgets/text.dart';
import 'package:flutter/material.dart';

import 'gradient_button.dart';
import 'input_component.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final String headingText = 'Welcome Back!';
  final String subHeadingText = 'welcome back we missed you';
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void dispose() {
    _usernameController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.fromLTRB(44, 30, 44, 0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _buildHeadingText(),
            _buildSubHeadingText(),
            SizedBox(height: screenHeight * 0.04),
            InputComponent(
              controller: _usernameController,
              prefixIcon: Icons.person,
              componentLabel: 'Username',
              hintText: 'Username',
              isPasswordField: false,
            ),
            SizedBox(height: screenHeight * 0.03),
            InputComponent(
              controller: _passwordController,
              prefixIcon: Icons.key,
              componentLabel: 'Password',
              hintText: 'Enter your password',
              isPasswordField: true,
            ),
            _buildForgotPassButton(),
            SizedBox(height: screenHeight * 0.01),
            GradientButton(
              buttonLabel: 'Log In',
              onPressed: () {},
            ),
            SizedBox(height: screenHeight * 0.02),
            const ContinueWithText(),
            SizedBox(height: screenHeight * 0.01),
            const AuthenticationImageButtonRow(),
          ],
        ),
      ),
    );
  }

  Widget _buildHeadingText() {
    return CustomText(text: headingText, textSize: 34, isBoldFont: true);
  }

  Widget _buildSubHeadingText() {
    return CustomText(
      text: subHeadingText,
      textSize: 12,
      isBoldFont: false,
      textColor: Colors.grey,
    );
  }

  Widget _buildForgotPassButton() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        TextButton(
          onPressed: () {},
          child: const CustomText(
            textSize: 12,
            text: 'Forgot Password',
            isBoldFont: false,
            textColor: Colors.grey,
          ),
        ),
      ],
    );
  }
}
