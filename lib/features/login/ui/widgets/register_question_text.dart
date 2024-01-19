import 'package:docdoc/core/style/app_text.dart';
import 'package:docdoc/core/widgets/app_text_button.dart';
import 'package:flutter/material.dart';

class RegisterText extends StatelessWidget {
  const RegisterText({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Are you haven't an account ? ",
          style: AppText.text12BlackRegular,
        ),
        AppTextButton(
          onPressed: () {},
          buttonText: 'Sign Up',
        ),
      ],
    );
  }
}
