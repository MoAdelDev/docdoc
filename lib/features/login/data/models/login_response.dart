import 'package:freezed_annotation/freezed_annotation.dart';
part 'login_response.g.dart';

@JsonSerializable()
class LoginResponse {
  final String message;
  final int code;
  final bool status;
  @JsonKey(name: 'data')
  final UserData? userData;

  LoginResponse(this.message, this.code, this.status, this.userData);

  factory LoginResponse.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseFromJson(json);
}

@JsonSerializable()
class UserData {
  final String token;
  @JsonKey(name: 'username')
  final String username;

  UserData(this.token, this.username);

  factory UserData.fromJson(Map<String, dynamic> json) =>
      _$UserDataFromJson(json);
}
