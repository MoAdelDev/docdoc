import 'package:docdoc/core/helpers/spacing.dart';
import 'package:docdoc/features/login/logic/cubit/login_cubit.dart';
import 'package:docdoc/features/login/ui/widgets/password_validations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/widgets/app_text_form_field.dart';

class LoginEmailAndPassword extends StatefulWidget {
  const LoginEmailAndPassword({super.key});

  @override
  State<LoginEmailAndPassword> createState() => _LoginEmailAndPasswordState();
}

class _LoginEmailAndPasswordState extends State<LoginEmailAndPassword> {
  bool isPasswordHidden = true;

  late TextEditingController _passwordController;
  @override
  void initState() {
    super.initState();
    _passwordController = context.read<LoginCubit>().passwordController;
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<LoginCubit>().formKey,
      child: Column(
        children: [
          AppTextFormFiled(
            controller: context.read<LoginCubit>().emailController,
            hintText: 'Email',
            keyboardType: TextInputType.emailAddress,
            textInputAction: TextInputAction.next,
            onFieldSubmitted: (p0) =>
                FocusManager.instance.primaryFocus?.requestFocus(),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter a valid email';
              }
            },
          ),
          verticalSpace(20),
          AppTextFormFiled(
            controller: context.read<LoginCubit>().passwordController,
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
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter a valid password';
              }
            },
          ),
          verticalSpace(20),
          const PasswordValidations(
            hasLowerCase: false,
            hasUpperCase: true,
            hasSpecialCharacter: false,
            hasNumber: true,
            hasMinLength: false,
          ),
        ],
      ),
    );
  }
}
