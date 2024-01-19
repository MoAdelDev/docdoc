import 'package:docdoc/core/style/app_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DocImageAndDescription extends StatelessWidget {
  const DocImageAndDescription({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 30.0),
      height: MediaQuery.sizeOf(context).height * 0.6,
      child: Stack(
        children: [
          SvgPicture.asset(
            'assets/images/logo_obacity.svg',
          ),
          Container(
            foregroundDecoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.white,
                  Colors.white.withOpacity(0.0),
                ],
                begin: Alignment.bottomCenter,
                // end: Alignment.topCenter,
                stops: const [0.14, 0.4],
              ),
            ),
            child: Image.asset('assets/images/doctor.png'),
          ),
          Positioned(
            bottom: 30.0,
            left: 0,
            right: 0,
            child: Text(
              'Best Doctor\nAppointment App',
              textAlign: TextAlign.center,
              style: AppText.text32PrimaryBold,
            ),
          )
        ],
      ),
    );
  }
}
