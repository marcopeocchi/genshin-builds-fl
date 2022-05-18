// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'character_builds_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CharacterBuildsModel _$CharacterBuildsModelFromJson(
        Map<String, dynamic> json) =>
    CharacterBuildsModel(
      data: (json['data'] as List<dynamic>)
          .map((e) => Character.fromJson(e as Map<String, dynamic>))
          .toList(),
      updated: DateTime.parse(json['updated'] as String),
    );

Map<String, dynamic> _$CharacterBuildsModelToJson(
        CharacterBuildsModel instance) =>
    <String, dynamic>{
      'data': instance.data,
      'updated': instance.updated.toIso8601String(),
    };

Character _$CharacterFromJson(Map<String, dynamic> json) => Character(
      name: json['name'] as String,
      builds: (json['builds'] as List<dynamic>)
          .map((e) => Build.fromJson(e as Map<String, dynamic>))
          .toList(),
      notes: json['notes'] as String,
    );

Map<String, dynamic> _$CharacterToJson(Character instance) => <String, dynamic>{
      'name': instance.name,
      'builds': instance.builds.map((e) => e.toJson()).toList(),
      'notes': instance.notes,
    };

Build _$BuildFromJson(Map<String, dynamic> json) => Build(
      role: json['role'] as String,
      equipment:
          (json['equipment'] as List<dynamic>).map((e) => e as String).toList(),
      artifacts:
          (json['artifacts'] as List<dynamic>).map((e) => e as String).toList(),
      optimal: json['optimal'] as bool,
    );

Map<String, dynamic> _$BuildToJson(Build instance) => <String, dynamic>{
      'role': instance.role,
      'equipment': instance.equipment,
      'artifacts': instance.artifacts,
      'optimal': instance.optimal,
    };
