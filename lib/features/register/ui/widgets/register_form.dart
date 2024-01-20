import 'package:docdoc/core/helpers/spacing.dart';
import 'package:docdoc/core/widgets/app_button.dart';
import 'package:docdoc/core/widgets/app_text_form_field.dart';
import 'package:flutter/material.dart';

class RegisterForm extends StatefulWidget {
  const RegisterForm({super.key});

  @override
  State<RegisterForm> createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  bool isPasswordHidden = false;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          AppTextFormFiled(
            controller: _usernameController,
            hintText: 'Username',
            keyboardType: TextInputType.name,
            textInputAction: TextInputAction.next,
            onFieldSubmitted: (p0) => FocusScope.of(context).requestFocus(),
            validator: (value) {},
          ),
          verticalSpace(20),
          AppTextFormFiled(
            controller: _emailController,
            hintText: 'Email',
            keyboardType: TextInputType.emailAddress,
            textInputAction: TextInputAction.next,
            onFieldSubmitted: (p0) => FocusScope.of(context).requestFocus(),
            validator: (value) {},
          ),
          verticalSpace(20),
          AppTextFormFiled(
            controller: _phoneController,
            hintText: 'Phone',
            keyboardType: TextInputType.phone,
            textInputAction: TextInputAction.next,
            onFieldSubmitted: (p0) => FocusScope.of(context).requestFocus(),
            validator: (value) {},
          ),
          verticalSpace(20),
          AppTextFormFiled(
            controller: _passwordController,
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
            validator: (value) {},
          ),
          verticalSpace(20),
          AppButton(
            buttonText: 'Create Account',
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
