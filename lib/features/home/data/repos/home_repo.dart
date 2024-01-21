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
          'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczovL3ZjYXJlLmludGVncmF0aW9uMjUuY29tL2FwaS9hdXRoL2xvZ2luIiwiaWF0IjoxNzA1ODM3NDIwLCJleHAiOjE3MDU4NDEwMjAsIm5iZiI6MTcwNTgzNzQyMCwianRpIjoiWTV4ZDQ5RWFqUEVFQUdXYyIsInN1YiI6IjQ0NiIsInBydiI6IjIzYmQ1Yzg5NDlmNjAwYWRiMzllNzAxYzQwMDg3MmRiN2E1OTc2ZjcifQ.xw7ESW6VmI7nnqBqGlTidM9WEuzjPe6JRzdoRS-cMuk';

      final result = await _apiService.getHomeData('Bearer $token');
      return ApiResult.success(result);
    } catch (e) {
      print('Error : ${e.toString()}');
      return ApiResult.failure(ErrorHandler.handle(e));
    }
  }
}
