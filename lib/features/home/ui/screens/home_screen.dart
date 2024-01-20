import 'package:docdoc/core/style/app_color.dart';
import 'package:docdoc/features/calendar/calendar_screen.dart';
import 'package:docdoc/features/dashboard/dashboard_screen.dart';
import 'package:docdoc/features/messages/messages_screen.dart';
import 'package:docdoc/features/profile/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;
  final List<Map<String, String>> items = [
    {'icon': 'home', 'label': 'Home'},
    {'icon': 'messages', 'label': 'Messages'},
    {'icon': 'calendar', 'label': 'Calendar'},
    {'icon': 'person', 'label': 'Profile'},
  ];

  final List<Widget> screens = [
    const DashboardScreen(),
    const MessagesScreen(),
    const CalendarScreen(),
    const ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: Container(
        margin: EdgeInsets.symmetric(
          horizontal: 10.0.w,
          vertical: 10.0.h,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            20.0,
          ),
          boxShadow: const [
            BoxShadow(color: AppColor.gray, blurRadius: 8),
            BoxShadow(
              color: AppColor.primary,
              blurRadius: 4,
              spreadRadius: 4.0,
            ),
          ],
        ),
        child: NavigationBar(
          elevation: 0,
          animationDuration: const Duration(seconds: 5),
          backgroundColor: Colors.transparent,
          destinations: items
              .map(
                (e) => NavigationDestination(
                  icon: SvgPicture.asset(
                    items.indexOf(e) == currentIndex
                        ? 'assets/icons/${e['icon']}_filled.svg'
                        : 'assets/icons/${e['icon']}.svg',
                    width: 25.w,
                    height: 25.w,
                  ),
                  label: e['label'] ?? '',
                  selectedIcon: SvgPicture.asset(
                    'assets/icons/${e['icon']}_filled.svg',
                    width: 25.w,
                    height: 25.w,
                  ),
                  tooltip: e['label'],
                ),
              )
              .toList(),
          onDestinationSelected: (value) {
            setState(() {
              currentIndex = value;
            });
          },
          labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
          indicatorColor: Colors.white,
          selectedIndex: currentIndex,
        ),
      ),
    );
  }
}
