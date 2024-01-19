import 'package:docdoc/core/helpers/enums.dart';
import 'package:flutter/material.dart';

extension NaviagtorEx on BuildContext {
  void pushNamedAndRemoveUntil(String routeName, {Object? arguments}) {
    Navigator.pushNamedAndRemoveUntil(this, routeName, (route) => false,
        arguments: arguments);
  }

  void pushNamed(String routeName, {Object? arguments}) {
    Navigator.pushNamed(this, routeName, arguments: arguments);
  }

  void pushReplacementNamed(String routeName, {Object? arguments}) {
    Navigator.pushReplacementNamed(this, routeName, arguments: arguments);
  }
}

extension SnackBarEx on BuildContext {
  void showMessage({
    required String message,
    required RequestState requestState,
  }) {
    Color backgroundColor = Theme.of(this).primaryColor;
    if (requestState == RequestState.success) {
      backgroundColor = Colors.green;
    } else if (requestState == RequestState.error) {
      backgroundColor = Colors.red;
    } else if (requestState == RequestState.loading) {
      backgroundColor = Colors.yellow;
    }
    ScaffoldMessenger.of(this).showSnackBar(
      SnackBar(
        content: Center(
          child: Text(
            message,
            style: const TextStyle(
              fontSize: 18.0,
              color: Colors.white,
            ),
          ),
        ),
        backgroundColor: backgroundColor,
        padding: const EdgeInsets.all(10),
        duration: const Duration(seconds: 3),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        elevation: 3.0,
        margin: const EdgeInsets.all(10),
        behavior: SnackBarBehavior.floating,
      ),
    );
  }
}

extension MediaQueryEx on BuildContext {
  double get height => MediaQuery.sizeOf(this).height;

  double get width => MediaQuery.sizeOf(this).width;
}
