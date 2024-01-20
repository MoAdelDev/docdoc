import 'package:docdoc/core/netwroking/api_error_handler.dart';
import 'package:docdoc/core/netwroking/api_result.dart';
import 'package:docdoc/core/netwroking/api_service.dart';
import 'package:docdoc/features/register/data/models/register_request_body.dart';
import 'package:docdoc/features/register/data/models/register_response.dart';

class RegisterRepo {
  final ApiService _apiService;

  RegisterRepo(this._apiService);

  Future<ApiResult<RegisterResponse>> register(
      RegisterRequestBody registerRequestBody) async {
    try {
      final response = await _apiService.register(registerRequestBody);
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(ErrorHandler.handle(e));
    }
  }
}
