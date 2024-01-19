import 'package:docdoc/core/helpers/spacing.dart';
import 'package:docdoc/core/style/app_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WelcomeBackText extends StatelessWidget {
  const WelcomeBackText({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:
          EdgeInsets.only(top: 90.h - MediaQuery.of(context).viewPadding.top.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Welcome Back',
            style: AppText.text24PrimaryBold,
          ),
          verticalSpace(5.0),
          Text(
            "We're excited to have you back, can't wait to see what you've been up to since you last logged in.",
            style: AppText.text14GrayRegular,
          )
        ],
      ),
    );
  }
}
