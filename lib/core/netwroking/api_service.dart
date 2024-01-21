import 'package:dio/dio.dart';
import 'package:docdoc/core/netwroking/api_constants.dart';
import 'package:docdoc/features/home/data/models/home_response.dart';
import 'package:docdoc/features/login/data/models/login_request_body.dart';
import 'package:docdoc/features/login/data/models/login_response.dart';
import 'package:docdoc/features/register/data/models/register_request_body.dart';
import 'package:docdoc/features/register/data/models/register_response.dart';
import 'package:retrofit/retrofit.dart';

part 'api_service.g.dart';

@RestApi(baseUrl: ApiConstants.baseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @POST(ApiConstants.login)
  Future<LoginResponse> login(@Body() LoginRequestBody loginRequestBody);

  @POST(ApiConstants.register)
  Future<RegisterResponse> register(
      @Body() RegisterRequestBody registerRequestBody);

  @GET(ApiConstants.home)
  Future<HomeResponse> getHomeData(
    @Header('Authorization') String bearerToken,
  );
}
