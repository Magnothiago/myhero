import 'package:json_annotation/json_annotation.dart';

part 'powerstats_model.g.dart';

@JsonSerializable()
class PowerstatsModel {
  final String? intelligence;
  final String? strength;
  final String? speed;
  final String? durability;
  final String? power;
  final String? combat;

  PowerstatsModel({
    required this.intelligence,
    required this.strength,
    required this.speed,
    required this.durability,
    required this.power,
    required this.combat,
  });

  factory PowerstatsModel.fromJson(Map<String, dynamic> json) =>
      _$PowerstatsModelFromJson(json);

  Map<String, dynamic> toJson() => _$PowerstatsModelToJson(this);
}
