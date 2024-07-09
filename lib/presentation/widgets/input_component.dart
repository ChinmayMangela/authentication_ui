import 'package:authentication_ui/presentation/widgets/text.dart';
import 'package:authentication_ui/presentation/widgets/text_field.dart';
import 'package:flutter/material.dart';

class InputComponent extends StatelessWidget {
  const InputComponent({
    super.key,
    required this.controller,
    required this.prefixIcon,
    required this.componentLabel,
    required this.hintText, required this.isPasswordField,
  });

  final TextEditingController controller;
  final IconData prefixIcon;
  final String componentLabel;
  final String hintText;
  final bool isPasswordField;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText(
          text: componentLabel,
          textSize: 12,
          isBoldFont: false,
          textColor: Colors.grey,
        ),
        const SizedBox(height: 5),
        CustomTextField(
          prefixIcon: prefixIcon,
          hintText: hintText,
          isPasswordField: isPasswordField,
          controller: controller,
        ),
      ],
    );
  }
}
