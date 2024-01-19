import 'package:docdoc/features/login/logic/cubit/login_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/widgets/app_button.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({super.key});

  @override
  Widget build(BuildContext context) {
    return AppButton(
      buttonText: 'Login',
      onPressed: () {
        if (context.read<LoginCubit>().formKey.currentState!.validate()) {
          FocusManager.instance.primaryFocus?.unfocus();
        }
      },
    );
  }
}
