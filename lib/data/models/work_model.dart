import 'package:json_annotation/json_annotation.dart';

part 'work_model.g.dart';

@JsonSerializable()
class WorkModel {
  final String? occupation;
  final String? base;

  WorkModel({
    required this.occupation,
    required this.base,
  });

  factory WorkModel.fromJson(Map<String, dynamic> json) =>
      _$WorkModelFromJson(json);
  Map<String, dynamic> toJson() => _$WorkModelToJson(this);
}
