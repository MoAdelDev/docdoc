import 'package:docdoc/features/dashboard/ui/widgets/dashboard_app_bar.dart';
import 'package:docdoc/features/dashboard/ui/widgets/dashboard_banner.dart';
import 'package:docdoc/features/dashboard/ui/widgets/dashboard_speciality.dart';
import 'package:docdoc/features/dashboard/ui/widgets/dashboard_title.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 12.w,
          vertical: 16.0.h,
        ),
        child: Column(
          children: [
            const DashboardAppBar(),
            const DashboardBanner(),
            DashboardTitle(onPressed: () {}, title: 'Doctor Speciality'),
            const DashboardSpecilaity(),
          ],
        ),
      ),
    );
  }
}
