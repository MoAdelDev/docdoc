import 'package:docdoc/core/helpers/spacing.dart';
import 'package:docdoc/core/widgets/app_text_form_field.dart';
import 'package:flutter/material.dart';
import '../../../../core/widgets/app_button.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final TextEditingController _emailController = TextEditingController();

  final TextEditingController _passwordController = TextEditingController();

  final _formKey = GlobalKey<FormState>();
  bool isPasswordHidden = true;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          AppTextFormFiled(
            controller: _emailController,
            hintText: 'Email',
            keyboardType: TextInputType.emailAddress,
            textInputAction: TextInputAction.next,
            onFieldSubmitted: (p0) =>
                FocusManager.instance.primaryFocus?.requestFocus(),
            errorMsg: 'Please enter your email',
          ),
          verticalSpace(20),
          AppTextFormFiled(
            controller: _passwordController,
            hintText: 'Password',
            keyboardType: TextInputType.visiblePassword,
            textInputAction: TextInputAction.done,
            onFieldSubmitted: (p0) {},
            obscureText: isPasswordHidden,
            suffixIcon:
                isPasswordHidden ? Icons.visibility : Icons.visibility_off,
            onSuffixIcon: () {
              setState(() {
                isPasswordHidden = !isPasswordHidden;
              });
            },
            errorMsg: 'Please enter your password',
          ),
          verticalSpace(10),
          AppButton(
            buttonText: 'Login',
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                FocusManager.instance.primaryFocus?.unfocus();
              }
            },
          )
        ],
      ),
    );
  }
}
