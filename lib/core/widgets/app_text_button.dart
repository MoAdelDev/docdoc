import 'package:docdoc/core/style/app_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String buttonText;

  const AppTextButton({
    super.key,
    required this.onPressed,
    required this.buttonText,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        animationDuration: const Duration(seconds: 10),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0.r),
        ),
        foregroundColor: Theme.of(context).primaryColor,
      ),
      onPressed: onPressed,
      child: Text(
        buttonText,
        style: AppText.text12PrimaryRegular,
      ),
    );
  }
}
