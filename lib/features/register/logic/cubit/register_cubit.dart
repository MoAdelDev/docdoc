import 'package:docdoc/features/register/data/models/register_request_body.dart';
import 'package:docdoc/features/register/data/repos/register_repo.dart';
import 'package:docdoc/features/register/logic/cubit/register_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RegisterCubit extends Cubit<RegisterState> {
  final RegisterRepo _registerRepo;
  RegisterCubit(this._registerRepo) : super(const RegisterState.initial());

  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  void emitRegisterStates() async {
    emit(const RegisterState.registerLoading());
    final response = await _registerRepo.register(
      RegisterRequestBody(
        nameController.text,
        emailController.text,
        phoneController.text,
        passwordController.text,
      ),
    );
    response.when(
      success: (registerResponse) {
        emit(RegisterState.registerSuccess(registerResponse));
      },
      failure: (errorHandler) {
        emit(RegisterState.registerError(
            errorHandler.apiErrorModel.message ?? ''));
      },
    );
  }
}
