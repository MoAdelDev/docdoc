import 'dart:developer';

import 'package:docdoc/core/helpers/cache_helper.dart';
import 'package:docdoc/core/netwroking/api_error_handler.dart';
import 'package:docdoc/core/netwroking/api_result.dart';
import 'package:docdoc/core/netwroking/api_service.dart';
import 'package:docdoc/features/home/data/models/home_response.dart';

class HomeRepo {
  final ApiService _apiService;

  HomeRepo(this._apiService);

  Future<ApiResult<HomeResponse>> getHomeDataData() async {
    try {
      final String token = CacheHelper.getString(key: 'token') ?? '';
      final result = await _apiService.getHomeData('Bearer $token');
      return ApiResult.success(result);
    } catch (e) {
      log(e.toString());
      return ApiResult.failure(ErrorHandler.handle(e));
    }
  }
}
