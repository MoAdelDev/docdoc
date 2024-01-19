// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginResponse _$LoginResponseFromJson(Map<String, dynamic> json) =>
    LoginResponse(
      json['message'] as String,
      json['code'] as int,
      json['status'] as bool,
      json['data'] == null
          ? null
          : UserData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$LoginResponseToJson(LoginResponse instance) =>
    <String, dynamic>{
      'message': instance.message,
      'code': instance.code,
      'status': instance.status,
      'data': instance.userData,
    };

UserData _$UserDataFromJson(Map<String, dynamic> json) => UserData(
      json['token'] as String,
      json['username'] as String,
    );

Map<String, dynamic> _$UserDataToJson(UserData instance) => <String, dynamic>{
      'token': instance.token,
      'username': instance.username,
    };
