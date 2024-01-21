import 'package:freezed_annotation/freezed_annotation.dart';
part 'specialization_model.g.dart';

@JsonSerializable()
class SpecializationModel {
  final int id;
  final String name;

  SpecializationModel(this.id, this.name);

  factory SpecializationModel.fromJson(Map<String, dynamic> json) =>
      _$SpecializationModelFromJson(json);
}
