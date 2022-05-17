import 'package:freezed_annotation/freezed_annotation.dart';

part 'character_builds_model.freezed.dart';
part 'character_builds_model.g.dart';

@freezed
abstract class CharacterBuildsModel with _$CharacterBuildsModel {
  const factory CharacterBuildsModel({
    required List<Character> data,
    required DateTime updated,
  }) = _CharacterBuildsModel;

  factory CharacterBuildsModel.fromJson(Map<String, dynamic> json) =>
      _$CharacterBuildsModelFromJson(json);
}

@freezed
abstract class Character with _$Character {
  const factory Character({
    required String name,
    required List<Build> builds,
    required List<List<String>> notes,
  }) = _Character;

  factory Character.fromJson(Map<String, dynamic> json) =>
      _$CharacterFromJson(json);
}

@freezed
abstract class Build with _$Build {
  const factory Build({
    required String role,
    required List<String> equipment,
    required List<String> artifacts,
    required bool optimal,
  }) = _Build;

  factory Build.fromJson(Map<String, dynamic> json) => _$BuildFromJson(json);
}
