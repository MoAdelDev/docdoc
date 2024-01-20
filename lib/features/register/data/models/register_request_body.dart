import 'package:json_annotation/json_annotation.dart';
part 'register_request_body.g.dart';

@JsonSerializable()
class RegisterRequestBody {
  final String name;
  final String email;
  final String phone;
  final String password;
  @JsonKey(name: 'password_confirmation')
  final String passwordConfirmation;
  final String gender;

  RegisterRequestBody(
    this.name,
    this.email,
    this.phone,
    this.password,
    this.passwordConfirmation,
    this.gender,
  );

  Map<String, dynamic> toJson() => _$RegisterRequestBodyToJson(this);
}
