import 'package:docdoc/core/helpers/spacing.dart';
import 'package:docdoc/core/style/app_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class DashboardAppBar extends StatelessWidget {
  const DashboardAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hi, Mohammed',
              style: AppText.text18BlackBold,
            ),
            verticalSpace(5.0),
            Text(
              'How are you today?',
              style: AppText.text11GrayRegular,
            ),
          ],
        ),
        const Spacer(),
        InkWell(
          onTap: () {},
          customBorder: const CircleBorder(),
          splashColor: Colors.grey[300],
          child: Padding(
            padding: const EdgeInsets.all(2.0),
            child: CircleAvatar(
              radius: 22.r,
              backgroundColor: const Color(0xfff5f5f5),
              child: SvgPicture.asset('assets/icons/notification.svg'),
            ),
          ),
        ),
      ],
    );
  }
}
