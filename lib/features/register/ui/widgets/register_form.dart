import 'package:docdoc/core/helpers/app_regex.dart';
import 'package:docdoc/core/helpers/spacing.dart';
import 'package:docdoc/core/widgets/app_text_form_field.dart';
import 'package:docdoc/features/login/ui/widgets/password_validations.dart';
import 'package:docdoc/features/register/logic/cubit/register_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RegisterForm extends StatefulWidget {
  const RegisterForm({super.key});

  @override
  State<RegisterForm> createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  bool isPasswordHidden = true;
  bool hasLowerCase = false;
  bool hasSpecialCharacter = false;
  bool hasUpperCase = false;
  bool hasNumber = false;
  bool hasMinLength = false;
  late TextEditingController passwordController;
  @override
  void initState() {
    super.initState();
    passwordController = context.read<RegisterCubit>().passwordController;
    passwordController.addListener(() {
      hasLowerCase = AppRegex.hasLowerCase(passwordController.text);
      hasSpecialCharacter =
          AppRegex.hasSpecialCharacter(passwordController.text);
      hasUpperCase = AppRegex.hasUpperCase(passwordController.text);
      hasNumber = AppRegex.hasNumber(passwordController.text);
      hasMinLength = AppRegex.hasMinLength(passwordController.text);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<RegisterCubit>().formKey,
      child: Column(
        children: [
          AppTextFormFiled(
            controller: context.read<RegisterCubit>().nameController,
            hintText: 'Username',
            keyboardType: TextInputType.name,
            textInputAction: TextInputAction.next,
            onFieldSubmitted: (p0) => FocusScope.of(context).requestFocus(),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter a valid username';
              }
              return null;
            },
          ),
          verticalSpace(20),
          AppTextFormFiled(
            controller: context.read<RegisterCubit>().emailController,
            hintText: 'Email',
            keyboardType: TextInputType.emailAddress,
            textInputAction: TextInputAction.next,
            onFieldSubmitted: (p0) => FocusScope.of(context).requestFocus(),
            validator: (value) {
              if (value == null ||
                  value.isEmpty ||
                  !AppRegex.isEmailValid(value)) {
                return 'Please enter a valid email';
              }
              return null;
            },
          ),
          verticalSpace(20),
          AppTextFormFiled(
            controller: context.read<RegisterCubit>().phoneController,
            hintText: 'Phone',
            keyboardType: TextInputType.phone,
            textInputAction: TextInputAction.next,
            onFieldSubmitted: (p0) => FocusScope.of(context).requestFocus(),
            validator: (value) {
              if (value == null ||
                  value.isEmpty ||
                  !AppRegex.isPhoneNumberValid(value)) {
                return 'Please enter a valid phone number';
              }
              return null;
            },
          ),
          verticalSpace(20),
          AppTextFormFiled(
            controller: context.read<RegisterCubit>().passwordController,
            hintText: 'Password',
            keyboardType: TextInputType.visiblePassword,
            textInputAction: TextInputAction.next,
            onFieldSubmitted: (p0) => FocusScope.of(context).requestFocus(),
            obscureText: isPasswordHidden,
            suffixIcon:
                isPasswordHidden ? Icons.visibility : Icons.visibility_off,
            onSuffixIcon: () {
              setState(() {
                isPasswordHidden = !isPasswordHidden;
              });
            },
            validator: (value) {
              if (value == null ||
                  value.isEmpty ||
                  !AppRegex.isPasswordValid(value)) {
                return 'Please enter a valid password';
              }
              return null;
            },
          ),
          verticalSpace(20),
          PasswordValidations(
            hasLowerCase: hasLowerCase,
            hasUpperCase: hasUpperCase,
            hasSpecialCharacter: hasSpecialCharacter,
            hasNumber: hasNumber,
            hasMinLength: hasMinLength,
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    passwordController.dispose();
  }
}
