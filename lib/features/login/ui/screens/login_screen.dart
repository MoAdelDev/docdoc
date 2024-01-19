import 'package:docdoc/core/helpers/spacing.dart';
import 'package:docdoc/features/login/ui/widgets/already_have_accont_text.dart';
import 'package:docdoc/features/login/ui/widgets/login_form.dart';
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
              verticalSpace(20.0),
              const LoginForm(),
              verticalSpace(20.0),
              const TermsAndConditionsText(),
              const AlreadyHaveAnAccountText(),
            ],
          ),
        ),
      ),
    );
  }
}
