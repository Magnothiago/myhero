import 'package:json_annotation/json_annotation.dart';

part 'biography_model.g.dart';

@JsonSerializable()
class BiographyModel {
  @JsonKey(name: 'full-name')
  final String? fullName;

  @JsonKey(name: 'alter-egos')
  final String? alterEgos;

  final List<String>? aliases;

  @JsonKey(name: 'place-of-birth')
  final String? placeOfBirth;

  @JsonKey(name: 'first-appearance')
  final String? firstAppearance;

  final String? publisher;

  final String? alignment;

  BiographyModel({
    required this.fullName,
    required this.alterEgos,
    required this.aliases,
    required this.placeOfBirth,
    required this.firstAppearance,
    required this.publisher,
    required this.alignment,
  });

  factory BiographyModel.fromJson(Map<String, dynamic> json) =>
      _$BiographyModelFromJson(json);
  Map<String, dynamic> toJson() => _$BiographyModelToJson(this);
}
