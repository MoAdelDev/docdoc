import 'package:docdoc/core/style/app_color.dart';
import 'package:docdoc/core/style/font_weight_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppText {
  static TextStyle get text10GrayRegular => TextStyle(
        fontSize: 10.sp,
        fontWeight: FontWeightHelper.regular,
        color: AppColor.gray,
      );

  static TextStyle get textButton16WhiteSemiBold => TextStyle(
        fontSize: 16.sp,
        fontWeight: FontWeightHelper.semiBold,
        color: Colors.white,
      );

  static TextStyle get text32PrimaryBold => TextStyle(
        fontSize: 32.sp,
        fontWeight: FontWeightHelper.bold,
        color: AppColor.primary,
      );

  static TextStyle get text13DarkBlueRegular => TextStyle(
        fontSize: 13.sp,
        fontWeight: FontWeightHelper.bold,
        color: AppColor.darkBlue,
      );
  static TextStyle get text18WhiteMedium => TextStyle(
        fontSize: 18.sp,
        fontWeight: FontWeightHelper.medium,
        color: Colors.white,
      );
  static TextStyle get text18BlackBold => TextStyle(
        fontSize: 18.sp,
        fontWeight: FontWeightHelper.bold,
        color: AppColor.black,
      );
  static TextStyle get text11GrayRegular => TextStyle(
        fontSize: 11.sp,
        fontWeight: FontWeightHelper.regular,
        color: AppColor.gray,
      );
  static TextStyle get text24BlackBold => TextStyle(
        fontSize: 24.sp,
        fontWeight: FontWeightHelper.bold,
        color: AppColor.black,
      );

  static TextStyle get text24PrimaryBold => TextStyle(
        fontSize: 24.sp,
        fontWeight: FontWeightHelper.bold,
        color: AppColor.primary,
      );

  static TextStyle get text12PrimaryRegular => TextStyle(
        fontSize: 12.sp,
        fontWeight: FontWeightHelper.regular,
        color: AppColor.primary,
      );

  static TextStyle get text14GrayRegular => TextStyle(
        fontSize: 14.sp,
        fontWeight: FontWeightHelper.regular,
        color: AppColor.gray,
      );

  static TextStyle get text12BlackRegular => TextStyle(
        fontSize: 12.sp,
        fontWeight: FontWeightHelper.regular,
        color: AppColor.black,
      );
}
