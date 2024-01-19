import 'package:docdoc/core/routing/app_router.dart';
import 'package:flutter/material.dart';

class DocDocApp extends StatelessWidget {
  final AppRouter appRouter;
  const DocDocApp({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '',
      onGenerateRoute: (settings) => appRouter.generateRouter(settings),
    );
  }
}
