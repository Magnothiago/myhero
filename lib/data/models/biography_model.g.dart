// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'biography_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BiographyModel _$BiographyModelFromJson(Map<String, dynamic> json) =>
    BiographyModel(
      aliases:
          (json['aliases'] as List<dynamic>?)?.map((e) => e as String).toList(),
      publisher: json['publisher'] as String?,
      alignment: json['alignment'] as String?,
    );

Map<String, dynamic> _$BiographyModelToJson(BiographyModel instance) =>
    <String, dynamic>{
      'aliases': instance.aliases,
      'publisher': instance.publisher,
      'alignment': instance.alignment,
    };
