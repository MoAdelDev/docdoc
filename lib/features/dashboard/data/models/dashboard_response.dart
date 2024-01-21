import 'package:docdoc/features/dashboard/data/models/city_model.dart';
import 'package:docdoc/features/dashboard/data/models/specialization_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'home_response.g.dart';

@JsonSerializable()
class DashboardResponse {
  final String message;
  final bool status;
  final int code;
  final List<HomeData> data;

  DashboardResponse(this.message, this.status, this.code, this.data);
  factory DashboardResponse.fromJson(Map<String, dynamic> json) =>
      _$HomeResponseFromJson(json);
}

@JsonSerializable()
class HomeData {
  final int id;
  final String name;
  final List<DashboardDoctorData> doctors;

  HomeData(this.id, this.name, this.doctors);
  factory HomeData.fromJson(Map<String, dynamic> json) =>
      _$HomeDataFromJson(json);
}

@JsonSerializable()
class DashboardDoctorData {
  final int id;
  final String name;
  final String email;
  final String phone;
  final String photo;
  final String gender;
  final String address;
  final String description;
  final String degree;
  @JsonKey(name: 'appoint_price')
  final dynamic appointPrice;
  @JsonKey(name: 'start_time')
  final String startTime;
  @JsonKey(name: 'end_time')
  final String endTime;
  @JsonKey(name: 'specialization')
  final SpecializationModel specializationModel;
  @JsonKey(name: 'city')
  final CityModel cityModel;

  DashboardDoctorData(
    this.id,
    this.name,
    this.email,
    this.phone,
    this.photo,
    this.gender,
    this.address,
    this.description,
    this.degree,
    this.appointPrice,
    this.startTime,
    this.endTime,
    this.specializationModel,
    this.cityModel,
  );

  factory DashboardDoctorData.fromJson(Map<String, dynamic> json) =>
      _$HomeDoctorDataFromJson(json);
}
