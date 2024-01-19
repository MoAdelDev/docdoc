import 'package:docdoc/core/di/dependency_injection.dart';
import 'package:docdoc/core/routing/app_router.dart';
import 'package:docdoc/docdoc_app.dart';
import 'package:flutter/material.dart';

void main() async {
  await setupGetIt();
  runApp(DocDocApp(
    appRouter: AppRouter(),
  ));
}
