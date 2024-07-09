import 'package:authentication_ui/presentation/widgets/text.dart';
import 'package:flutter/material.dart';

import 'gradient_divider.dart';

class ContinueWithText extends StatelessWidget {
  const ContinueWithText({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GradientDivider(
            isLeftSideDivider: true,
          ),
          CustomText(
            text: 'Or continue with',
            textSize: 12,
            isBoldFont: false,
            textColor: Colors.grey,
          ),
          GradientDivider(
            isLeftSideDivider: false,
          ),
        ],
      );
    }
}
