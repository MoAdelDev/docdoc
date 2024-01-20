import 'package:docdoc/core/helpers/spacing.dart';
import 'package:docdoc/core/style/app_text.dart';
import 'package:flutter/material.dart';

class CreateAccountText extends StatelessWidget {
  const CreateAccountText({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:
          EdgeInsets.only(top: 100 - MediaQuery.of(context).viewPadding.top),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Create Account',
            style: AppText.text24PrimaryBold,
          ),
          verticalSpace(5.0),
          Text(
            "Sign up now and start exploring all that our app has to offer. We're excited to welcome you to our community!",
            style: AppText.text14GrayRegular,
          )
        ],
      ),
    );
  }
}
