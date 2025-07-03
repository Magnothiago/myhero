// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'appearance_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AppearanceModel _$AppearanceModelFromJson(Map<String, dynamic> json) =>
    AppearanceModel(
      gender: json['gender'] as String?,
      race: json['race'] as String?,
      height:
          (json['height'] as List<dynamic>?)?.map((e) => e as String).toList(),
      weight:
          (json['weight'] as List<dynamic>?)?.map((e) => e as String).toList(),
      eyeColor: json['eyeColor'] as String?,
      hairColor: json['hairColor'] as String?,
    );

Map<String, dynamic> _$AppearanceModelToJson(AppearanceModel instance) =>
    <String, dynamic>{
      'gender': instance.gender,
      'race': instance.race,
      'height': instance.height,
      'weight': instance.weight,
      'eyeColor': instance.eyeColor,
      'hairColor': instance.hairColor,
    };
