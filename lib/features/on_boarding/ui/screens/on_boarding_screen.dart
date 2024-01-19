import 'package:docdoc/features/on_boarding/ui/widgets/doc_logo_and_name.dart';
import 'package:flutter/material.dart';

import '../widgets/button_and_text.dart';
import '../widgets/doc_image_and_description.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          DocLogoAndName(),
          DocImageAndDescription(),
          Spacer(),
          ButtonAndText(),
        ],
      ),
    );
  }
}
