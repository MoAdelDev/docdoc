import 'package:freezed_annotation/freezed_annotation.dart';
part 'register_response.g.dart';

@JsonSerializable()
class RegisterResponse {
  final String message;
  final int code;
  final bool status;
  @JsonKey(name: 'data')
  final UserData? userData;

  RegisterResponse(this.message, this.code, this.status, this.userData);

  factory RegisterResponse.fromJson(Map<String, dynamic> json) =>
      _$RegisterResponseFromJson(json);
}

@JsonSerializable()
class UserData {
  @JsonKey(name: 'username')
  final String name;
  final String token;

  UserData(this.name, this.token);
  factory UserData.fromJson(Map<String, dynamic> json) =>
      _$UserDataFromJson(json);
}
