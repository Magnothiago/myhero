// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hero_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HeroModel _$HeroModelFromJson(Map<String, dynamic> json) => HeroModel(
      response: json['response'] as String?,
      id: json['id'] as String?,
      name: json['name'] as String?,
      powerstats: json['powerstats'] == null
          ? null
          : PowerstatsModel.fromJson(
              json['powerstats'] as Map<String, dynamic>),
      biography: json['biography'] == null
          ? null
          : BiographyModel.fromJson(json['biography'] as Map<String, dynamic>),
      appearance: json['appearance'] == null
          ? null
          : AppearanceModel.fromJson(
              json['appearance'] as Map<String, dynamic>),
      work: json['work'] == null
          ? null
          : WorkModel.fromJson(json['work'] as Map<String, dynamic>),
      connections: json['connections'] == null
          ? null
          : ConnectionsModel.fromJson(
              json['connections'] as Map<String, dynamic>),
      image: json['image'] == null
          ? null
          : ImageModel.fromJson(json['image'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$HeroModelToJson(HeroModel instance) => <String, dynamic>{
      'response': instance.response,
      'id': instance.id,
      'name': instance.name,
      'powerstats': instance.powerstats,
      'biography': instance.biography,
      'appearance': instance.appearance,
      'work': instance.work,
      'connections': instance.connections,
      'image': instance.image,
    };
