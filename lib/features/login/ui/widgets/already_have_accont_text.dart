import 'package:docdoc/core/style/app_text.dart';
import 'package:docdoc/core/widgets/app_text_button.dart';
import 'package:flutter/material.dart';

class AlreadyHaveAnAccountText extends StatelessWidget {
  const AlreadyHaveAnAccountText({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Already have an account yet?',
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
