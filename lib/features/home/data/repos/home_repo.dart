import 'package:docdoc/core/netwroking/api_error_handler.dart';
import 'package:docdoc/core/netwroking/api_result.dart';
import 'package:docdoc/core/netwroking/api_service.dart';
import 'package:docdoc/features/home/data/models/home_response.dart';

class HomeRepo {
  final ApiService _apiService;

  HomeRepo(this._apiService);

  Future<ApiResult<HomeResponse>> getHomeDataData() async {
    try {
      const String token =
          'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczovL3ZjYXJlLmludGVncmF0aW9uMjUuY29tL2FwaS9hdXRoL2xvZ2luIiwiaWF0IjoxNzA1ODMxMDk1LCJleHAiOjE3MDU4MzQ2OTUsIm5iZiI6MTcwNTgzMTA5NSwianRpIjoidUFVb0toaEUzODhTVjhtWiIsInN1YiI6IjQ0NiIsInBydiI6IjIzYmQ1Yzg5NDlmNjAwYWRiMzllNzAxYzQwMDg3MmRiN2E1OTc2ZjcifQ.MJ2DApSCGo7x4zITQddUw-cnNKEuHnagX1JINyXvGHo';

      final result = await _apiService.getHomeData('Bearer $token');
      return ApiResult.success(result);
    } catch (e) {
      return ApiResult.failure(ErrorHandler.handle(e));
    }
  }
}
