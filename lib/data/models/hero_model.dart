import 'package:json_annotation/json_annotation.dart';

import 'powerstats_model.dart';
import 'biography_model.dart';
import 'appearance_model.dart';
import 'work_model.dart';
import 'connections_model.dart';
import 'image_model.dart';

part 'hero_model.g.dart';

@JsonSerializable()
class HeroModel {
  final String? response;
  final String? id;
  final String? name;
  final PowerstatsModel? powerstats;
  final BiographyModel? biography;
  final AppearanceModel? appearance;
  final WorkModel? work;
  final ConnectionsModel? connections;
  final ImageModel? image;

  HeroModel({
    required this.response,
    required this.id,
    required this.name,
    required this.powerstats,
    required this.biography,
    required this.appearance,
    required this.work,
    required this.connections,
    required this.image,
  });

  factory HeroModel.fromJson(Map<String, dynamic> json) =>
      _$HeroModelFromJson(json);

  Map<String, dynamic> toJson() => _$HeroModelToJson(this);
}
