import 'package:docdoc/core/helpers/enums.dart';
import 'package:docdoc/core/helpers/extensions.dart';
import 'package:docdoc/core/routing/routes.dart';
import 'package:docdoc/core/widgets/app_button.dart';
import 'package:docdoc/core/widgets/app_progress_indicator.dart';
import 'package:docdoc/features/login/logic/cubit/login_cubit.dart';
import 'package:docdoc/features/login/logic/cubit/login_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginButtonAndListener extends StatelessWidget {
  const LoginButtonAndListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginCubit, LoginState>(
      listener: (context, state) {
        if (state is Error) {
          context.showMessage(
            message: state.error,
            requestState: RequestState.error,
          );
        }
        if (state is Success) {
          context.pushNamedAndRemoveUntil(Routes.homeScreen);
        }
      },
      builder: (context, state) {
        if (state is Loading) {
          return const Center(
            child: AppProgressIndicator(),
          );
        }
        return AppButton(
          buttonText: 'Login',
          onPressed: () {
            validateThenDoLogin(context);
          },
        );
      },
    );
  }

  void validateThenDoLogin(BuildContext context) {
    if (context.read<LoginCubit>().formKey.currentState!.validate()) {
      context.read<LoginCubit>().emitLoginState();
    }
  }
}
