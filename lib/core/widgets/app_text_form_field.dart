import 'package:docdoc/core/style/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextFormFiled extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final TextInputType keyboardType;
  final TextInputAction textInputAction;
  final Function(String)? onFieldSubmitted;
  final bool obscureText;
  final IconData? suffixIcon;
  final VoidCallback? onSuffixIcon;
  final String errorMsg;
  final String? Function(String?)? validator;

  const AppTextFormFiled({
    super.key,
    required this.controller,
    required this.hintText,
    required this.keyboardType,
    required this.textInputAction,
    this.onFieldSubmitted,
    this.obscureText = false,
    this.suffixIcon,
    this.onSuffixIcon,
    this.errorMsg = '',
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        isDense: true,
        contentPadding:
            EdgeInsets.symmetric(horizontal: 20.0.w, vertical: 18.0.h),
        hintText: hintText,
        hintStyle: TextStyle(
          color: const Color(0xFFC2C2C2),
          fontSize: 14.0.sp,
          fontWeight: FontWeight.w500,
        ),
        filled: true,
        fillColor: const Color(0xFFFDFDFF),
        enabled: true,
        suffixIcon: IconButton(
          onPressed: onSuffixIcon,
          icon: Icon(
            suffixIcon,
            color: AppColor.grayColor,
          ),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16.r),
          borderSide: BorderSide(
            width: 1.3.w,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide(
            color: const Color(0xFFEDEDED),
            width: 1.3.w,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide(
            color: Theme.of(context).primaryColor,
            width: 1.3.w,
          ),
        ),
      ),
      validator: validator ??
          (value) {
            if (value == null || value.isEmpty) {
              return errorMsg;
            }
            return null;
          },
      style: TextStyle(
        fontSize: 14.0.sp,
        fontWeight: FontWeight.w500,
        color: Colors.black,
      ),
      textInputAction: textInputAction,
      onFieldSubmitted: onFieldSubmitted,
      enabled: true,
      obscureText: obscureText,
      maxLines: 1,
      textAlign: TextAlign.start,
    );
  }
}
