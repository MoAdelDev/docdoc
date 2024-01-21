// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dashboard_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DashboardResponse _$HomeResponseFromJson(Map<String, dynamic> json) =>
    DashboardResponse(
      json['message'] as String,
      json['status'] as bool,
      json['code'] as int,
      (json['data'] as List<dynamic>)
          .map((e) => HomeData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$HomeResponseToJson(DashboardResponse instance) =>
    <String, dynamic>{
      'message': instance.message,
      'status': instance.status,
      'code': instance.code,
      'data': instance.data,
    };

HomeData _$HomeDataFromJson(Map<String, dynamic> json) => HomeData(
      json['id'] as int,
      json['name'] as String,
      (json['doctors'] as List<dynamic>)
          .map((e) => DashboardDoctorData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$HomeDataToJson(HomeData instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'doctors': instance.doctors,
    };

DashboardDoctorData _$HomeDoctorDataFromJson(Map<String, dynamic> json) =>
    DashboardDoctorData(
      json['id'] as int,
      json['name'] as String,
      json['email'] as String,
      json['phone'] as String,
      json['photo'] as String,
      json['gender'] as String,
      json['address'] as String,
      json['description'] as String,
      json['degree'] as String,
      json['appoint_price'],
      json['start_time'] as String,
      json['end_time'] as String,
      SpecializationModel.fromJson(
          json['specialization'] as Map<String, dynamic>),
      CityModel.fromJson(json['city'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$HomeDoctorDataToJson(DashboardDoctorData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'phone': instance.phone,
      'photo': instance.photo,
      'gender': instance.gender,
      'address': instance.address,
      'description': instance.description,
      'degree': instance.degree,
      'appoint_price': instance.appointPrice,
      'start_time': instance.startTime,
      'end_time': instance.endTime,
      'specialization': instance.specializationModel,
      'city': instance.cityModel,
    };
