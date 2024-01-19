import 'package:docdoc/core/routing/routes.dart';
import 'package:docdoc/features/on_boarding/ui/screens/on_boarding_screen.dart';
import 'package:flutter/material.dart';

class AppRouter {
  Route? generateRouter(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(
          builder: (context) => const OnBoardingScreen(),
        );
      default:
        return MaterialPageRoute(
          builder: (context) => const Scaffold(
            backgroundColor: Colors.white,
            body: Center(
              child: Text('No Route Found'),
            ),
          ),
        );
    }
  }
}
