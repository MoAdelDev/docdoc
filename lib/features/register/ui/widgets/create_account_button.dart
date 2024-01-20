import 'package:docdoc/core/widgets/app_button.dart';
import 'package:docdoc/features/register/logic/cubit/register_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CreateAccountButton extends StatelessWidget {
  const CreateAccountButton({super.key});

  @override
  Widget build(BuildContext context) {
    return AppButton(
      buttonText: 'Create Account',
      onPressed: () {
        if (context.read<RegisterCubit>().formKey.currentState!.validate()) {}
      },
    );
  }
}
