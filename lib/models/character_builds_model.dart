import 'package:json_annotation/json_annotation.dart';

part 'character_builds_model.g.dart';

@JsonSerializable()
class CharacterBuildsModel {
  List<Character> data;
  DateTime updated;

  CharacterBuildsModel({
    required this.data,
    required this.updated,
  });

  factory CharacterBuildsModel.fromJson(Map<String, dynamic> json) =>
      _$CharacterBuildsModelFromJson(json);

  Map<String, dynamic> toJson() => _$CharacterBuildsModelToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Character {
  String name;
  List<Build> builds;
  String notes;

  Character({
    required this.name,
    required this.builds,
    required this.notes,
  });

  factory Character.fromJson(Map<String, dynamic> json) =>
      _$CharacterFromJson(json);

  Map<String, dynamic> toJson() => _$CharacterToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Build {
  String role;
  List<String> equipment;
  List<String> artifacts;
  bool optimal;

  Build({
    required this.role,
    required this.equipment,
    required this.artifacts,
    required this.optimal,
  });

  factory Build.fromJson(Map<String, dynamic> json) => _$BuildFromJson(json);
  Map<String, dynamic> toJson() => _$BuildToJson(this);
}
