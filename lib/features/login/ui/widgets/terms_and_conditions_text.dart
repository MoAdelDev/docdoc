import 'package:docdoc/core/style/app_text.dart';
import 'package:flutter/material.dart';

class TermsAndConditionsText extends StatelessWidget {
  const TermsAndConditionsText({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: RichText(
        textAlign: TextAlign.center,
        text: TextSpan(children: [
          TextSpan(
              text: 'By logging, you agree to our ',
              style: AppText.text10GrayRegular),
          TextSpan(
            text: 'Terms & Conditions ',
            style: AppText.text12BlackRegular,
          ),
          TextSpan(
            text: 'and ',
            style: AppText.text10GrayRegular,
          ),
          TextSpan(
            text: 'PrivacyPolicy.',
            style: AppText.text12BlackRegular,
          )
        ]),
      ),
    );
  }
}
