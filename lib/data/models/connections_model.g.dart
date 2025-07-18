// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'connections_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ConnectionsModel _$ConnectionsModelFromJson(Map<String, dynamic> json) =>
    ConnectionsModel(
      groupAffiliation: json['group-affiliation'] as String?,
      relatives: json['relatives'] as String?,
    );

Map<String, dynamic> _$ConnectionsModelToJson(ConnectionsModel instance) =>
    <String, dynamic>{
      'group-affiliation': instance.groupAffiliation,
      'relatives': instance.relatives,
    };
