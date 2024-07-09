import 'package:authentication_ui/presentation/widgets/text.dart';
import 'package:flutter/material.dart';

class GradientButton extends StatelessWidget {
  const GradientButton({
    super.key,
    required this.buttonLabel,
    required this.onPressed,
  });

  final String buttonLabel;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: double.maxFinite,
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          gradient: const LinearGradient(
            colors: [
              Color(0xFF9C3FE4),
              Color(0xFFC65647),
            ],
          ),
        ),
        child: Center(
          child: CustomText(
            text: buttonLabel,
            isBoldFont: true,
            textSize: 15,
          ),
        ),
      ),
    );
  }
}
