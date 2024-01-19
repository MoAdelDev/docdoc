import 'package:docdoc/core/style/app_color.dart';
import 'package:docdoc/core/style/font_weight_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppText {
  static TextStyle get text10GrayRegular => TextStyle(
        fontSize: 10.sp,
        fontWeight: FontWeightHelper.regular,
        color: AppColor.grayColor,
      );

  static TextStyle get textButton16WhiteSemiBold => TextStyle(
        fontSize: 16.sp,
        fontWeight: FontWeightHelper.semiBold,
        color: Colors.white,
      );

  static TextStyle get text32PrimaryBold => TextStyle(
        fontSize: 32.sp,
        fontWeight: FontWeightHelper.bold,
        color: AppColor.primaryColor,
      );
  static TextStyle get text24BlackBold => TextStyle(
        fontSize: 24.sp,
        fontWeight: FontWeightHelper.bold,
        color: AppColor.blackColor,
      );

  static TextStyle get text24PrimaryBold => TextStyle(
        fontSize: 24.sp,
        fontWeight: FontWeightHelper.bold,
        color: AppColor.primaryColor,
      );

  static TextStyle get text12PrimaryRegular => TextStyle(
        fontSize: 12.sp,
        fontWeight: FontWeightHelper.regular,
        color: AppColor.primaryColor,
      );

  static TextStyle get text14GrayRegular => TextStyle(
        fontSize: 14.sp,
        fontWeight: FontWeightHelper.regular,
        color: AppColor.grayColor,
      );

  static TextStyle get text12BlackRegular => TextStyle(
        fontSize: 12.sp,
        fontWeight: FontWeightHelper.regular,
        color: AppColor.blackColor,
      );
}
