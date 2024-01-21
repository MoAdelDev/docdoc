import 'package:docdoc/core/style/app_color.dart';
import 'package:docdoc/features/calendar/calendar_screen.dart';
import 'package:docdoc/features/dashboard/ui/screens/dashboard_screen.dart';
import 'package:docdoc/features/home/ui/widgets/navigation_destination.dart';
import 'package:docdoc/features/messages/messages_screen.dart';
import 'package:docdoc/features/profile/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
      body: SafeArea(child: screens[currentIndex]),
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
          height: 60.h,
          animationDuration: const Duration(seconds: 4),
          backgroundColor: Colors.transparent,
          destinations: items
              .map(
                (e) => HomeNavigationDestination(item: e),
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
