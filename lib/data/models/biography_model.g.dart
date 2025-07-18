// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'biography_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BiographyModel _$BiographyModelFromJson(Map<String, dynamic> json) =>
    BiographyModel(
      fullName: json['full-name'] as String?,
      alterEgos: json['alter-egos'] as String?,
      aliases:
          (json['aliases'] as List<dynamic>?)?.map((e) => e as String).toList(),
      placeOfBirth: json['place-of-birth'] as String?,
      firstAppearance: json['first-appearance'] as String?,
      publisher: json['publisher'] as String?,
      alignment: json['alignment'] as String?,
    );

Map<String, dynamic> _$BiographyModelToJson(BiographyModel instance) =>
    <String, dynamic>{
      'full-name': instance.fullName,
      'alter-egos': instance.alterEgos,
      'aliases': instance.aliases,
      'place-of-birth': instance.placeOfBirth,
      'first-appearance': instance.firstAppearance,
      'publisher': instance.publisher,
      'alignment': instance.alignment,
    };
