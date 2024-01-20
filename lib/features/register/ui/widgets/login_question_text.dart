import 'package:docdoc/core/helpers/extensions.dart';
import 'package:docdoc/core/routing/routes.dart';
import 'package:docdoc/core/style/app_text.dart';
import 'package:docdoc/core/widgets/app_text_button.dart';
import 'package:flutter/material.dart';

class LoginQuestionText extends StatelessWidget {
  const LoginQuestionText({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Are you already have an account ? ",
          style: AppText.text12BlackRegular,
        ),
        AppTextButton(
          onPressed: () => context.pushReplacementNamed(Routes.loginScreen),
          buttonText: 'Sign In',
        ),
      ],
    );
  }
}
