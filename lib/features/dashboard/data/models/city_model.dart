import 'package:freezed_annotation/freezed_annotation.dart';
part 'city_model.g.dart';

@JsonSerializable()
class CityModel {
  final int id;
  final String name;
  final GovernrateModel governrateModel;

  CityModel(this.id, this.name, this.governrateModel);

  factory CityModel.fromJson(Map<String, dynamic> json) =>
      _$CityModelFromJson(json);
}

@JsonSerializable()
class GovernrateModel {
  final int id;
  final String name;

  GovernrateModel(this.id, this.name);

  factory GovernrateModel.fromJson(Map<String, dynamic> json) =>
      _$GovernrateModelFromJson(json);
}
