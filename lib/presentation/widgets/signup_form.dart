import 'package:authentication_ui/presentation/screens/login_screen.dart';
import 'package:authentication_ui/presentation/widgets/continue_with_text.dart';
import 'package:authentication_ui/presentation/widgets/gradient_button.dart';
import 'package:authentication_ui/presentation/widgets/input_component.dart';
import 'package:authentication_ui/presentation/widgets/text.dart';
import 'package:flutter/material.dart';

import 'authentication_image_button_row.dart';

class SignupForm extends StatefulWidget {
  const SignupForm({super.key});

  @override
  State<SignupForm> createState() => _SignupFormState();
}

class _SignupFormState extends State<SignupForm> {
  final String headingText = 'Get Started';
  // final String subHeadingText = 'Free forever. No credit card needed';
  final _emailController = TextEditingController();
  final _nameController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _nameController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.fromLTRB(44, 20, 44, 0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _buildHeadingText(),
            SizedBox(height: screenHeight * 0.02),
            InputComponent(controller: _emailController, prefixIcon: Icons.email_outlined, componentLabel: 'Email Address', hintText: 'yourname@gmail.com', isPasswordField: false,),
            SizedBox(height: screenHeight * 0.02),
            InputComponent(controller: _passwordController, prefixIcon: Icons.person, componentLabel: 'Your Name', hintText: '@yourname', isPasswordField: false,),
            SizedBox(height: screenHeight * 0.02),
            InputComponent(controller: _emailController, prefixIcon: Icons.key, componentLabel: 'Password', hintText: 'Enter your password', isPasswordField: true,),
            SizedBox(height: screenHeight * 0.02),
            GradientButton(buttonLabel: 'Sign up', onPressed: () {},),
            SizedBox(height: screenHeight * 0.01),
            const ContinueWithText(),
            SizedBox(height: screenHeight * 0.01),
            const AuthenticationImageButtonRow(),
            _buildBottomTextButtonForLogIn(),
          ],
        ),
      ),
    );
  }

  Widget _buildHeadingText() {
    return CustomText(text: headingText, textSize: 34, isBoldFont: true);
  }



  Widget _buildBottomTextButtonForLogIn() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const CustomText(
          text: 'Already have an account ?',
          textSize: 12,
          isBoldFont: false,
          textColor: Colors.grey,
        ),
        TextButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const LoginScreen();
              }));
            },
            child: const CustomText(
              text: 'LogIn here',
              textSize: 15,
              isBoldFont: true,
              textColor: Colors.red,
            ))
      ],
    );
  }
}
