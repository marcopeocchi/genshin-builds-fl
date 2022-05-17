// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'character_builds_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CharacterBuildsModel _$CharacterBuildsModelFromJson(Map<String, dynamic> json) {
  return _CharacterBuildsModel.fromJson(json);
}

/// @nodoc
mixin _$CharacterBuildsModel {
  List<Character> get data => throw _privateConstructorUsedError;
  DateTime get updated => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CharacterBuildsModelCopyWith<CharacterBuildsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CharacterBuildsModelCopyWith<$Res> {
  factory $CharacterBuildsModelCopyWith(CharacterBuildsModel value,
          $Res Function(CharacterBuildsModel) then) =
      _$CharacterBuildsModelCopyWithImpl<$Res>;
  $Res call({List<Character> data, DateTime updated});
}

/// @nodoc
class _$CharacterBuildsModelCopyWithImpl<$Res>
    implements $CharacterBuildsModelCopyWith<$Res> {
  _$CharacterBuildsModelCopyWithImpl(this._value, this._then);

  final CharacterBuildsModel _value;
  // ignore: unused_field
  final $Res Function(CharacterBuildsModel) _then;

  @override
  $Res call({
    Object? data = freezed,
    Object? updated = freezed,
  }) {
    return _then(_value.copyWith(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Character>,
      updated: updated == freezed
          ? _value.updated
          : updated // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
abstract class _$$_CharacterBuildsModelCopyWith<$Res>
    implements $CharacterBuildsModelCopyWith<$Res> {
  factory _$$_CharacterBuildsModelCopyWith(_$_CharacterBuildsModel value,
          $Res Function(_$_CharacterBuildsModel) then) =
      __$$_CharacterBuildsModelCopyWithImpl<$Res>;
  @override
  $Res call({List<Character> data, DateTime updated});
}

/// @nodoc
class __$$_CharacterBuildsModelCopyWithImpl<$Res>
    extends _$CharacterBuildsModelCopyWithImpl<$Res>
    implements _$$_CharacterBuildsModelCopyWith<$Res> {
  __$$_CharacterBuildsModelCopyWithImpl(_$_CharacterBuildsModel _value,
      $Res Function(_$_CharacterBuildsModel) _then)
      : super(_value, (v) => _then(v as _$_CharacterBuildsModel));

  @override
  _$_CharacterBuildsModel get _value => super._value as _$_CharacterBuildsModel;

  @override
  $Res call({
    Object? data = freezed,
    Object? updated = freezed,
  }) {
    return _then(_$_CharacterBuildsModel(
      data: data == freezed
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Character>,
      updated: updated == freezed
          ? _value.updated
          : updated // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CharacterBuildsModel implements _CharacterBuildsModel {
  const _$_CharacterBuildsModel(
      {required final List<Character> data, required this.updated})
      : _data = data;

  factory _$_CharacterBuildsModel.fromJson(Map<String, dynamic> json) =>
      _$$_CharacterBuildsModelFromJson(json);

  final List<Character> _data;
  @override
  List<Character> get data {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  final DateTime updated;

  @override
  String toString() {
    return 'CharacterBuildsModel(data: $data, updated: $updated)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CharacterBuildsModel &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            const DeepCollectionEquality().equals(other.updated, updated));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_data),
      const DeepCollectionEquality().hash(updated));

  @JsonKey(ignore: true)
  @override
  _$$_CharacterBuildsModelCopyWith<_$_CharacterBuildsModel> get copyWith =>
      __$$_CharacterBuildsModelCopyWithImpl<_$_CharacterBuildsModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CharacterBuildsModelToJson(this);
  }
}

abstract class _CharacterBuildsModel implements CharacterBuildsModel {
  const factory _CharacterBuildsModel(
      {required final List<Character> data,
      required final DateTime updated}) = _$_CharacterBuildsModel;

  factory _CharacterBuildsModel.fromJson(Map<String, dynamic> json) =
      _$_CharacterBuildsModel.fromJson;

  @override
  List<Character> get data => throw _privateConstructorUsedError;
  @override
  DateTime get updated => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_CharacterBuildsModelCopyWith<_$_CharacterBuildsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

Character _$CharacterFromJson(Map<String, dynamic> json) {
  return _Character.fromJson(json);
}

/// @nodoc
mixin _$Character {
  String get name => throw _privateConstructorUsedError;
  List<Build> get builds => throw _privateConstructorUsedError;
  List<List<String>> get notes => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CharacterCopyWith<Character> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CharacterCopyWith<$Res> {
  factory $CharacterCopyWith(Character value, $Res Function(Character) then) =
      _$CharacterCopyWithImpl<$Res>;
  $Res call({String name, List<Build> builds, List<List<String>> notes});
}

/// @nodoc
class _$CharacterCopyWithImpl<$Res> implements $CharacterCopyWith<$Res> {
  _$CharacterCopyWithImpl(this._value, this._then);

  final Character _value;
  // ignore: unused_field
  final $Res Function(Character) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? builds = freezed,
    Object? notes = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      builds: builds == freezed
          ? _value.builds
          : builds // ignore: cast_nullable_to_non_nullable
              as List<Build>,
      notes: notes == freezed
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as List<List<String>>,
    ));
  }
}

/// @nodoc
abstract class _$$_CharacterCopyWith<$Res> implements $CharacterCopyWith<$Res> {
  factory _$$_CharacterCopyWith(
          _$_Character value, $Res Function(_$_Character) then) =
      __$$_CharacterCopyWithImpl<$Res>;
  @override
  $Res call({String name, List<Build> builds, List<List<String>> notes});
}

/// @nodoc
class __$$_CharacterCopyWithImpl<$Res> extends _$CharacterCopyWithImpl<$Res>
    implements _$$_CharacterCopyWith<$Res> {
  __$$_CharacterCopyWithImpl(
      _$_Character _value, $Res Function(_$_Character) _then)
      : super(_value, (v) => _then(v as _$_Character));

  @override
  _$_Character get _value => super._value as _$_Character;

  @override
  $Res call({
    Object? name = freezed,
    Object? builds = freezed,
    Object? notes = freezed,
  }) {
    return _then(_$_Character(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      builds: builds == freezed
          ? _value._builds
          : builds // ignore: cast_nullable_to_non_nullable
              as List<Build>,
      notes: notes == freezed
          ? _value._notes
          : notes // ignore: cast_nullable_to_non_nullable
              as List<List<String>>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Character implements _Character {
  const _$_Character(
      {required this.name,
      required final List<Build> builds,
      required final List<List<String>> notes})
      : _builds = builds,
        _notes = notes;

  factory _$_Character.fromJson(Map<String, dynamic> json) =>
      _$$_CharacterFromJson(json);

  @override
  final String name;
  final List<Build> _builds;
  @override
  List<Build> get builds {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_builds);
  }

  final List<List<String>> _notes;
  @override
  List<List<String>> get notes {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_notes);
  }

  @override
  String toString() {
    return 'Character(name: $name, builds: $builds, notes: $notes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Character &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other._builds, _builds) &&
            const DeepCollectionEquality().equals(other._notes, _notes));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(_builds),
      const DeepCollectionEquality().hash(_notes));

  @JsonKey(ignore: true)
  @override
  _$$_CharacterCopyWith<_$_Character> get copyWith =>
      __$$_CharacterCopyWithImpl<_$_Character>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CharacterToJson(this);
  }
}

abstract class _Character implements Character {
  const factory _Character(
      {required final String name,
      required final List<Build> builds,
      required final List<List<String>> notes}) = _$_Character;

  factory _Character.fromJson(Map<String, dynamic> json) =
      _$_Character.fromJson;

  @override
  String get name => throw _privateConstructorUsedError;
  @override
  List<Build> get builds => throw _privateConstructorUsedError;
  @override
  List<List<String>> get notes => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_CharacterCopyWith<_$_Character> get copyWith =>
      throw _privateConstructorUsedError;
}

Build _$BuildFromJson(Map<String, dynamic> json) {
  return _Build.fromJson(json);
}

/// @nodoc
mixin _$Build {
  String get role => throw _privateConstructorUsedError;
  List<String> get equipment => throw _privateConstructorUsedError;
  List<String> get artifacts => throw _privateConstructorUsedError;
  bool get optimal => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BuildCopyWith<Build> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BuildCopyWith<$Res> {
  factory $BuildCopyWith(Build value, $Res Function(Build) then) =
      _$BuildCopyWithImpl<$Res>;
  $Res call(
      {String role,
      List<String> equipment,
      List<String> artifacts,
      bool optimal});
}

/// @nodoc
class _$BuildCopyWithImpl<$Res> implements $BuildCopyWith<$Res> {
  _$BuildCopyWithImpl(this._value, this._then);

  final Build _value;
  // ignore: unused_field
  final $Res Function(Build) _then;

  @override
  $Res call({
    Object? role = freezed,
    Object? equipment = freezed,
    Object? artifacts = freezed,
    Object? optimal = freezed,
  }) {
    return _then(_value.copyWith(
      role: role == freezed
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
      equipment: equipment == freezed
          ? _value.equipment
          : equipment // ignore: cast_nullable_to_non_nullable
              as List<String>,
      artifacts: artifacts == freezed
          ? _value.artifacts
          : artifacts // ignore: cast_nullable_to_non_nullable
              as List<String>,
      optimal: optimal == freezed
          ? _value.optimal
          : optimal // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$$_BuildCopyWith<$Res> implements $BuildCopyWith<$Res> {
  factory _$$_BuildCopyWith(_$_Build value, $Res Function(_$_Build) then) =
      __$$_BuildCopyWithImpl<$Res>;
  @override
  $Res call(
      {String role,
      List<String> equipment,
      List<String> artifacts,
      bool optimal});
}

/// @nodoc
class __$$_BuildCopyWithImpl<$Res> extends _$BuildCopyWithImpl<$Res>
    implements _$$_BuildCopyWith<$Res> {
  __$$_BuildCopyWithImpl(_$_Build _value, $Res Function(_$_Build) _then)
      : super(_value, (v) => _then(v as _$_Build));

  @override
  _$_Build get _value => super._value as _$_Build;

  @override
  $Res call({
    Object? role = freezed,
    Object? equipment = freezed,
    Object? artifacts = freezed,
    Object? optimal = freezed,
  }) {
    return _then(_$_Build(
      role: role == freezed
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
      equipment: equipment == freezed
          ? _value._equipment
          : equipment // ignore: cast_nullable_to_non_nullable
              as List<String>,
      artifacts: artifacts == freezed
          ? _value._artifacts
          : artifacts // ignore: cast_nullable_to_non_nullable
              as List<String>,
      optimal: optimal == freezed
          ? _value.optimal
          : optimal // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Build implements _Build {
  const _$_Build(
      {required this.role,
      required final List<String> equipment,
      required final List<String> artifacts,
      required this.optimal})
      : _equipment = equipment,
        _artifacts = artifacts;

  factory _$_Build.fromJson(Map<String, dynamic> json) =>
      _$$_BuildFromJson(json);

  @override
  final String role;
  final List<String> _equipment;
  @override
  List<String> get equipment {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_equipment);
  }

  final List<String> _artifacts;
  @override
  List<String> get artifacts {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_artifacts);
  }

  @override
  final bool optimal;

  @override
  String toString() {
    return 'Build(role: $role, equipment: $equipment, artifacts: $artifacts, optimal: $optimal)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Build &&
            const DeepCollectionEquality().equals(other.role, role) &&
            const DeepCollectionEquality()
                .equals(other._equipment, _equipment) &&
            const DeepCollectionEquality()
                .equals(other._artifacts, _artifacts) &&
            const DeepCollectionEquality().equals(other.optimal, optimal));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(role),
      const DeepCollectionEquality().hash(_equipment),
      const DeepCollectionEquality().hash(_artifacts),
      const DeepCollectionEquality().hash(optimal));

  @JsonKey(ignore: true)
  @override
  _$$_BuildCopyWith<_$_Build> get copyWith =>
      __$$_BuildCopyWithImpl<_$_Build>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BuildToJson(this);
  }
}

abstract class _Build implements Build {
  const factory _Build(
      {required final String role,
      required final List<String> equipment,
      required final List<String> artifacts,
      required final bool optimal}) = _$_Build;

  factory _Build.fromJson(Map<String, dynamic> json) = _$_Build.fromJson;

  @override
  String get role => throw _privateConstructorUsedError;
  @override
  List<String> get equipment => throw _privateConstructorUsedError;
  @override
  List<String> get artifacts => throw _privateConstructorUsedError;
  @override
  bool get optimal => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_BuildCopyWith<_$_Build> get copyWith =>
      throw _privateConstructorUsedError;
}
