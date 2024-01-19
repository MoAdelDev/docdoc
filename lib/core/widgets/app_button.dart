import 'package:docdoc/core/style/app_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppButton extends StatelessWidget {
  final String buttonText;
  final VoidCallback onPressed;

  const AppButton({
    super.key,
    required this.buttonText,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45.h,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
        borderRadius: BorderRadius.circular(16.0.r),
      ),
      clipBehavior: Clip.antiAlias,
      child: MaterialButton(
        onPressed: onPressed,
        child: Text(
          buttonText,
          style: AppText.textButton16WhiteSemiBold,
        ),
      ),
    );
  }
}
