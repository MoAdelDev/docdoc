import 'package:docdoc/core/helpers/cache_helper.dart';
import 'package:docdoc/core/netwroking/api_error_handler.dart';
import 'package:docdoc/core/netwroking/api_result.dart';
import 'package:docdoc/core/netwroking/api_service.dart';
import 'package:docdoc/features/login/data/models/login_request_body.dart';
import 'package:docdoc/features/login/data/models/login_response.dart';

class LoginRepo {
  final ApiService _apiService;

  LoginRepo(this._apiService);

  Future<ApiResult<LoginResponse>> login(
      LoginRequestBody loginRequestBody) async {
    try {
      final result = await _apiService.login(loginRequestBody);
      CacheHelper.saveString(key: 'token', value: result.userData?.token ?? '');
      return ApiResult.success(result);
    } catch (e) {
      return ApiResult.failure(ErrorHandler.handle(e));
    }
  }
}
