import 'package:docdoc/core/style/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class AppProgressIndicator extends StatelessWidget {
  final double size;
  const AppProgressIndicator({super.key, this.size = 40});

  @override
  Widget build(BuildContext context) {
    return SpinKitFadingCircle(
      size: size,
      color: AppColor.primary,
    );
  }
}
