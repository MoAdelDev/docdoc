import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class HomeNavigationDestination extends StatelessWidget {
  final Map<String, dynamic> item;
  const HomeNavigationDestination({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return NavigationDestination(
      icon: SvgPicture.asset(
        'assets/icons/${item['icon']}.svg',
        width: 25.w,
        height: 25.w,
      ),
      label: item['label'] ?? '',
      selectedIcon: SvgPicture.asset(
        'assets/icons/${item['icon']}_filled.svg',
        width: 25.w,
        height: 25.w,
      ),
      tooltip: item['label'],
    );
  }
}
