import 'package:docdoc/core/helpers/spacing.dart';
import 'package:docdoc/core/style/app_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DocLogoAndName extends StatelessWidget {
  const DocLogoAndName({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 60.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset('assets/images/logo.svg'),
          horiontalSpace(5.0),
          Text(
            'Docdoc',
            style: AppText.text24BlackBold,
          )
        ],
      ),
    );
  }
}
