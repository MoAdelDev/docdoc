import 'package:json_annotation/json_annotation.dart';
part 'register_request_body.g.dart';

@JsonSerializable()
class RegisterRequestBody {
  final String name;
  final String email;
  final String phone;
  final String password;

  RegisterRequestBody(this.name, this.email, this.phone, this.password);

  Map<String, dynamic> toJson() => _$RegisterRequestBodyToJson(this);
}
