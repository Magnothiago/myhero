import 'package:json_annotation/json_annotation.dart';

part 'connections_model.g.dart';

@JsonSerializable()
class ConnectionsModel {
  @JsonKey(name: 'group-affiliation')
  final String? groupAffiliation;

  final String? relatives;

  ConnectionsModel({
    required this.groupAffiliation,
    required this.relatives,
  });

  factory ConnectionsModel.fromJson(Map<String, dynamic> json) =>
      _$ConnectionsModelFromJson(json);
  Map<String, dynamic> toJson() => _$ConnectionsModelToJson(this);
}
