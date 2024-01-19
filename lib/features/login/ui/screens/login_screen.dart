import 'package:docdoc/core/helpers/spacing.dart';
import 'package:docdoc/features/login/ui/widgets/login_email_and_password.dart';
import 'package:docdoc/features/login/ui/widgets/register_question_text.dart';
import 'package:docdoc/features/login/ui/widgets/login_button.dart';
import 'package:docdoc/features/login/ui/widgets/terms_and_conditions_text.dart';
import 'package:docdoc/features/login/ui/widgets/welcome_back_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 32.0.w),
          child: Column(
            children: [
              const WelcomeBackText(),
              verticalSpace(40.0),
              const LoginEmailAndPassword(),
              verticalSpace(20.0),
              const LoginButton(),
              verticalSpace(40.0),
              const TermsAndConditionsText(),
              verticalSpace(20.0),
              const RegisterText(),
            ],
          ),
        ),
      ),
    );
  }
}
