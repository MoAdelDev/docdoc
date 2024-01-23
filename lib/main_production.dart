import 'package:docdoc/core/di/dependency_injection.dart';
import 'package:docdoc/core/helpers/cache_helper.dart';
import 'package:docdoc/core/routing/app_router.dart';
import 'package:docdoc/docdoc_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setupGetIt();
  await CacheHelper.init();
  await ScreenUtil.ensureScreenSize();
  runApp(DocDocApp(
    appRouter: AppRouter(),
  ));
}
