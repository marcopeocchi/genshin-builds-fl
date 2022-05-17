// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'character_builds_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CharacterBuildsModel _$$_CharacterBuildsModelFromJson(
        Map<String, dynamic> json) =>
    _$_CharacterBuildsModel(
      data: (json['data'] as List<dynamic>)
          .map((e) => Character.fromJson(e as Map<String, dynamic>))
          .toList(),
      updated: DateTime.parse(json['updated'] as String),
    );

Map<String, dynamic> _$$_CharacterBuildsModelToJson(
        _$_CharacterBuildsModel instance) =>
    <String, dynamic>{
      'data': instance.data,
      'updated': instance.updated.toIso8601String(),
    };

_$_Character _$$_CharacterFromJson(Map<String, dynamic> json) => _$_Character(
      name: json['name'] as String,
      builds: (json['builds'] as List<dynamic>)
          .map((e) => Build.fromJson(e as Map<String, dynamic>))
          .toList(),
      notes: (json['notes'] as List<dynamic>)
          .map((e) => (e as List<dynamic>).map((e) => e as String).toList())
          .toList(),
    );

Map<String, dynamic> _$$_CharacterToJson(_$_Character instance) =>
    <String, dynamic>{
      'name': instance.name,
      'builds': instance.builds,
      'notes': instance.notes,
    };

_$_Build _$$_BuildFromJson(Map<String, dynamic> json) => _$_Build(
      role: json['role'] as String,
      equipment:
          (json['equipment'] as List<dynamic>).map((e) => e as String).toList(),
      artifacts:
          (json['artifacts'] as List<dynamic>).map((e) => e as String).toList(),
      optimal: json['optimal'] as bool,
    );

Map<String, dynamic> _$$_BuildToJson(_$_Build instance) => <String, dynamic>{
      'role': instance.role,
      'equipment': instance.equipment,
      'artifacts': instance.artifacts,
      'optimal': instance.optimal,
    };
