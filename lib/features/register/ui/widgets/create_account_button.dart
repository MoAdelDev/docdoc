import 'package:docdoc/core/helpers/enums.dart';
import 'package:docdoc/core/helpers/extensions.dart';
import 'package:docdoc/core/routing/routes.dart';
import 'package:docdoc/core/widgets/app_button.dart';
import 'package:docdoc/core/widgets/app_progress_indicator.dart';
import 'package:docdoc/features/register/logic/cubit/register_cubit.dart';
import 'package:docdoc/features/register/logic/cubit/register_state.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CreateAccountButton extends StatelessWidget {
  const CreateAccountButton({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<RegisterCubit, RegisterState>(
      listener: (context, state) {
        if (state is RegisterError) {
          context.showMessage(
            message: state.message,
            requestState: RequestState.error,
          );
        } else if (state is RegisterSuccess) {
          state.whenOrNull(
            registerSuccess: (data) {
              if (kDebugMode) {
                print('Data $data');
              }
            },
          );
          context.pushNamedAndRemoveUntil(Routes.homeScreen);
        }
      },
      builder: (context, state) {
        if (state is RegisterLoading) {
          return const Center(
            child: AppProgressIndicator(),
          );
        }

        return AppButton(
          buttonText: 'Create Account',
          onPressed: () {
            if (context
                .read<RegisterCubit>()
                .formKey
                .currentState!
                .validate()) {
              context.read<RegisterCubit>().emitRegisterStates();
            }
          },
        );
      },
    );
  }
}
