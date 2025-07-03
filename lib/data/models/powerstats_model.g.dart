// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'powerstats_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PowerstatsModel _$PowerstatsModelFromJson(Map<String, dynamic> json) =>
    PowerstatsModel(
      intelligence: json['intelligence'] as String?,
      strength: json['strength'] as String?,
      speed: json['speed'] as String?,
      durability: json['durability'] as String?,
      power: json['power'] as String?,
      combat: json['combat'] as String?,
    );

Map<String, dynamic> _$PowerstatsModelToJson(PowerstatsModel instance) =>
    <String, dynamic>{
      'intelligence': instance.intelligence,
      'strength': instance.strength,
      'speed': instance.speed,
      'durability': instance.durability,
      'power': instance.power,
      'combat': instance.combat,
    };
