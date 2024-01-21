import 'package:docdoc/core/helpers/extensions.dart';
import 'package:docdoc/core/style/app_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DashboardBanner extends StatelessWidget {
  const DashboardBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.bottomEnd,
      children: [
        Container(
          padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 18.w),
          width: double.infinity,
          height: context.height * 0.18.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24.0.r),
            color: Theme.of(context).primaryColor,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Book and\nschedule with\nthe doctors',
                style: AppText.text18WhiteMedium,
              ),
              const Spacer(),
              Container(
                height: 40.h,
                width: 110.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(48.r),
                  color: Colors.white,
                ),
                clipBehavior: Clip.antiAlias,
                child: MaterialButton(
                  splashColor: Colors.transparent,
                  onPressed: () {},
                  child: Text(
                    'Find Doctors',
                    style: AppText.text12PrimaryRegular,
                  ),
                ),
              )
            ],
          ),
        ),
        Image.asset(
          'assets/images/female.png',
          height: context.height * 0.22.h,
          fit: BoxFit.cover,
        ),
      ],
    );
  }
}
