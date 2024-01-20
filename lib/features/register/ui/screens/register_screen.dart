import 'package:docdoc/core/helpers/spacing.dart';
import 'package:docdoc/features/login/ui/widgets/terms_and_conditions_text.dart';
import 'package:docdoc/features/register/ui/widgets/create_account_text.dart';
import 'package:docdoc/features/register/ui/widgets/register_form.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          child: Column(
            children: [
              const CreateAccountText(),
              verticalSpace(30),
              const RegisterForm(),
              verticalSpace(30),
              const TermsAndConditionsText(),
            ],
          ),
        ),
      ),
    );
  }
}
