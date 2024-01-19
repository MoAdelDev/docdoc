import 'package:docdoc/core/helpers/extensions.dart';
import 'package:docdoc/core/helpers/spacing.dart';
import 'package:docdoc/core/routing/routes.dart';
import 'package:docdoc/core/style/app_text.dart';
import 'package:docdoc/core/widgets/app_button.dart';
import 'package:flutter/material.dart';

class ButtonAndText extends StatelessWidget {
  const ButtonAndText({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 34.0),
      child: Column(
        children: [
          Text(
            'Manage and schedule all of your medical appointments easily with Docdoc to get a new experience.',
            textAlign: TextAlign.center,
            style: AppText.text10GrayRegular,
          ),
          verticalSpace(30),
          Padding(
            padding: const EdgeInsets.only(bottom: 10.0),
            child: AppButton(
              buttonText: 'Get Started',
              onPressed: () => context.pushNamed(Routes.loginScreen),
            ),
          ),
        ],
      ),
    );
  }
}
