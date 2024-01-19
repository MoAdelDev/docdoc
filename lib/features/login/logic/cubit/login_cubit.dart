import 'package:docdoc/core/netwroking/api_error_handler.dart';
import 'package:docdoc/features/login/data/models/login_request_body.dart';
import 'package:docdoc/features/login/data/repos/login_repo.dart';
import 'package:docdoc/features/login/logic/cubit/login_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginRepo _loginRepo;
  LoginCubit(this._loginRepo) : super(const LoginState.initial());

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  void emitLoginState() async {
    emit(const LoginState.loading());
    final response = await _loginRepo.login(
      LoginRequestBody(
        _emailController.text,
        _passwordController.text,
      ),
    );
    response.when(
      success: (data) {
        emit(LoginState.success(data));
      },
      failure: (ErrorHandler errorHandler) {
        emit(LoginState.error(error: errorHandler.apiErrorModel.message ?? ''));
      },
    );
  }
}
