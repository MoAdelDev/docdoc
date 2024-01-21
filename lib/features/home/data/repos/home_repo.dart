import 'package:docdoc/core/netwroking/api_error_handler.dart';
import 'package:docdoc/core/netwroking/api_result.dart';
import 'package:docdoc/core/netwroking/api_service.dart';
import 'package:docdoc/features/home/data/models/home_response.dart';

class HomeRepo {
  final ApiService _apiService;

  HomeRepo(this._apiService);

  Future<ApiResult<HomeResponse>> getHomeDataData(
      {required String token}) async {
    try {
      final result = await _apiService.getHomeData('Bearer $token');
      return ApiResult.success(result);
    } catch (e) {
      return ApiResult.failure(ErrorHandler.handle(e));
    }
  }
}
