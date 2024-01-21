import 'package:docdoc/core/helpers/spacing.dart';
import 'package:docdoc/core/style/app_text.dart';
import 'package:docdoc/features/home/data/models/home_response.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DashboardSpecilaityItem extends StatelessWidget {
  final HomeData speciality;
  final String image;
  const DashboardSpecilaityItem({
    super.key,
    required this.speciality,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          image,
          width: 30.h,
          height: 30.w,
        ),
        verticalSpace(8.0),
        SizedBox(
          height: 16.h,
          child: Text(
            speciality.name,
            style: AppText.text12BlackRegular,
          ),
        )
      ],
    );
  }
}
