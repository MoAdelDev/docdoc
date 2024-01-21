import 'package:docdoc/core/style/app_text.dart';
import 'package:docdoc/core/widgets/app_text_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DashboardTitle extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;
  const DashboardTitle({
    super.key,
    required this.onPressed,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10.0.h),
      child: Row(
        children: [
          Text(
            title,
            style: AppText.text18BlackSemiBold,
          ),
          const Spacer(),
          AppTextButton(
            onPressed: onPressed,
            buttonText: 'See All',
          ),
        ],
      ),
    );
  }
}
