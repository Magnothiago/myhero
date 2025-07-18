import 'package:json_annotation/json_annotation.dart';

part 'appearance_model.g.dart';

@JsonSerializable()
class AppearanceModel {
  final String? gender;
  final String? race;
  final List<String>? height;
  final List<String>? weight;

  @JsonKey(name: 'eye-color')
  final String? eyeColor;

  @JsonKey(name: 'hair-color')
  final String? hairColor;

  AppearanceModel({
    required this.gender,
    required this.race,
    required this.height,
    required this.weight,
    required this.eyeColor,
    required this.hairColor,
  });

  factory AppearanceModel.fromJson(Map<String, dynamic> json) =>
      _$AppearanceModelFromJson(json);
  Map<String, dynamic> toJson() => _$AppearanceModelToJson(this);
}
