// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'pokemon.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Pokemon _$PokemonFromJson(Map<String, dynamic> json) {
  return _Pokemon.fromJson(json);
}

/// @nodoc
mixin _$Pokemon {
  /// 友人の名前
  int get id => throw _privateConstructorUsedError; //requiredで必須項目にする
  String get name => throw _privateConstructorUsedError;
  int? get baseExperience => throw _privateConstructorUsedError;
  int? get height => throw _privateConstructorUsedError;
  bool? get isDefault => throw _privateConstructorUsedError;
  int? get order => throw _privateConstructorUsedError;
  int? get weight => throw _privateConstructorUsedError;
  dynamic get abilities =>
      throw _privateConstructorUsedError; // change to PokemonAbility class
  dynamic get forms =>
      throw _privateConstructorUsedError; // change to Pokemonform class
  dynamic get gameIndices =>
      throw _privateConstructorUsedError; // change to VersionGameIndex class
  dynamic get heldItems =>
      throw _privateConstructorUsedError; // change to PokemonHeldItem class
  String? get locationAreaEncounters => throw _privateConstructorUsedError;
  dynamic get moves =>
      throw _privateConstructorUsedError; // change to PokemonMove class
  dynamic get pastTypes =>
      throw _privateConstructorUsedError; // change to PokemonTypePast
  dynamic get sprites =>
      throw _privateConstructorUsedError; // change to PokemonSprites class
  dynamic get species =>
      throw _privateConstructorUsedError; // change to PokemonSpecies class
  dynamic get stats =>
      throw _privateConstructorUsedError; // change to PokemonStat class
  dynamic get types => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PokemonCopyWith<Pokemon> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonCopyWith<$Res> {
  factory $PokemonCopyWith(Pokemon value, $Res Function(Pokemon) then) =
      _$PokemonCopyWithImpl<$Res, Pokemon>;
  @useResult
  $Res call(
      {int id,
      String name,
      int? baseExperience,
      int? height,
      bool? isDefault,
      int? order,
      int? weight,
      dynamic abilities,
      dynamic forms,
      dynamic gameIndices,
      dynamic heldItems,
      String? locationAreaEncounters,
      dynamic moves,
      dynamic pastTypes,
      dynamic sprites,
      dynamic species,
      dynamic stats,
      dynamic types});
}

/// @nodoc
class _$PokemonCopyWithImpl<$Res, $Val extends Pokemon>
    implements $PokemonCopyWith<$Res> {
  _$PokemonCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? baseExperience = freezed,
    Object? height = freezed,
    Object? isDefault = freezed,
    Object? order = freezed,
    Object? weight = freezed,
    Object? abilities = null,
    Object? forms = null,
    Object? gameIndices = null,
    Object? heldItems = null,
    Object? locationAreaEncounters = freezed,
    Object? moves = null,
    Object? pastTypes = null,
    Object? sprites = null,
    Object? species = null,
    Object? stats = null,
    Object? types = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      baseExperience: freezed == baseExperience
          ? _value.baseExperience
          : baseExperience // ignore: cast_nullable_to_non_nullable
              as int?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int?,
      isDefault: freezed == isDefault
          ? _value.isDefault
          : isDefault // ignore: cast_nullable_to_non_nullable
              as bool?,
      order: freezed == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int?,
      weight: freezed == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as int?,
      abilities: null == abilities
          ? _value.abilities
          : abilities // ignore: cast_nullable_to_non_nullable
              as dynamic,
      forms: null == forms
          ? _value.forms
          : forms // ignore: cast_nullable_to_non_nullable
              as dynamic,
      gameIndices: null == gameIndices
          ? _value.gameIndices
          : gameIndices // ignore: cast_nullable_to_non_nullable
              as dynamic,
      heldItems: null == heldItems
          ? _value.heldItems
          : heldItems // ignore: cast_nullable_to_non_nullable
              as dynamic,
      locationAreaEncounters: freezed == locationAreaEncounters
          ? _value.locationAreaEncounters
          : locationAreaEncounters // ignore: cast_nullable_to_non_nullable
              as String?,
      moves: null == moves
          ? _value.moves
          : moves // ignore: cast_nullable_to_non_nullable
              as dynamic,
      pastTypes: null == pastTypes
          ? _value.pastTypes
          : pastTypes // ignore: cast_nullable_to_non_nullable
              as dynamic,
      sprites: null == sprites
          ? _value.sprites
          : sprites // ignore: cast_nullable_to_non_nullable
              as dynamic,
      species: null == species
          ? _value.species
          : species // ignore: cast_nullable_to_non_nullable
              as dynamic,
      stats: null == stats
          ? _value.stats
          : stats // ignore: cast_nullable_to_non_nullable
              as dynamic,
      types: null == types
          ? _value.types
          : types // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PokemonCopyWith<$Res> implements $PokemonCopyWith<$Res> {
  factory _$$_PokemonCopyWith(
          _$_Pokemon value, $Res Function(_$_Pokemon) then) =
      __$$_PokemonCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      int? baseExperience,
      int? height,
      bool? isDefault,
      int? order,
      int? weight,
      dynamic abilities,
      dynamic forms,
      dynamic gameIndices,
      dynamic heldItems,
      String? locationAreaEncounters,
      dynamic moves,
      dynamic pastTypes,
      dynamic sprites,
      dynamic species,
      dynamic stats,
      dynamic types});
}

/// @nodoc
class __$$_PokemonCopyWithImpl<$Res>
    extends _$PokemonCopyWithImpl<$Res, _$_Pokemon>
    implements _$$_PokemonCopyWith<$Res> {
  __$$_PokemonCopyWithImpl(_$_Pokemon _value, $Res Function(_$_Pokemon) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? baseExperience = freezed,
    Object? height = freezed,
    Object? isDefault = freezed,
    Object? order = freezed,
    Object? weight = freezed,
    Object? abilities = null,
    Object? forms = null,
    Object? gameIndices = null,
    Object? heldItems = null,
    Object? locationAreaEncounters = freezed,
    Object? moves = null,
    Object? pastTypes = null,
    Object? sprites = null,
    Object? species = null,
    Object? stats = null,
    Object? types = null,
  }) {
    return _then(_$_Pokemon(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      baseExperience: freezed == baseExperience
          ? _value.baseExperience
          : baseExperience // ignore: cast_nullable_to_non_nullable
              as int?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int?,
      isDefault: freezed == isDefault
          ? _value.isDefault
          : isDefault // ignore: cast_nullable_to_non_nullable
              as bool?,
      order: freezed == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int?,
      weight: freezed == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as int?,
      abilities: null == abilities
          ? _value.abilities
          : abilities // ignore: cast_nullable_to_non_nullable
              as dynamic,
      forms: null == forms
          ? _value.forms
          : forms // ignore: cast_nullable_to_non_nullable
              as dynamic,
      gameIndices: null == gameIndices
          ? _value.gameIndices
          : gameIndices // ignore: cast_nullable_to_non_nullable
              as dynamic,
      heldItems: null == heldItems
          ? _value.heldItems
          : heldItems // ignore: cast_nullable_to_non_nullable
              as dynamic,
      locationAreaEncounters: freezed == locationAreaEncounters
          ? _value.locationAreaEncounters
          : locationAreaEncounters // ignore: cast_nullable_to_non_nullable
              as String?,
      moves: null == moves
          ? _value.moves
          : moves // ignore: cast_nullable_to_non_nullable
              as dynamic,
      pastTypes: null == pastTypes
          ? _value.pastTypes
          : pastTypes // ignore: cast_nullable_to_non_nullable
              as dynamic,
      sprites: null == sprites
          ? _value.sprites
          : sprites // ignore: cast_nullable_to_non_nullable
              as dynamic,
      species: null == species
          ? _value.species
          : species // ignore: cast_nullable_to_non_nullable
              as dynamic,
      stats: null == stats
          ? _value.stats
          : stats // ignore: cast_nullable_to_non_nullable
              as dynamic,
      types: null == types
          ? _value.types
          : types // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Pokemon implements _Pokemon {
  const _$_Pokemon(
      {required this.id,
      required this.name,
      this.baseExperience,
      this.height,
      this.isDefault,
      this.order,
      this.weight,
      this.abilities,
      this.forms,
      this.gameIndices,
      this.heldItems,
      this.locationAreaEncounters,
      this.moves,
      this.pastTypes,
      this.sprites,
      this.species,
      this.stats,
      this.types});

  factory _$_Pokemon.fromJson(Map<String, dynamic> json) =>
      _$$_PokemonFromJson(json);

  /// 友人の名前
  @override
  final int id;
//requiredで必須項目にする
  @override
  final String name;
  @override
  final int? baseExperience;
  @override
  final int? height;
  @override
  final bool? isDefault;
  @override
  final int? order;
  @override
  final int? weight;
  @override
  final dynamic abilities;
// change to PokemonAbility class
  @override
  final dynamic forms;
// change to Pokemonform class
  @override
  final dynamic gameIndices;
// change to VersionGameIndex class
  @override
  final dynamic heldItems;
// change to PokemonHeldItem class
  @override
  final String? locationAreaEncounters;
  @override
  final dynamic moves;
// change to PokemonMove class
  @override
  final dynamic pastTypes;
// change to PokemonTypePast
  @override
  final dynamic sprites;
// change to PokemonSprites class
  @override
  final dynamic species;
// change to PokemonSpecies class
  @override
  final dynamic stats;
// change to PokemonStat class
  @override
  final dynamic types;

  @override
  String toString() {
    return 'Pokemon(id: $id, name: $name, baseExperience: $baseExperience, height: $height, isDefault: $isDefault, order: $order, weight: $weight, abilities: $abilities, forms: $forms, gameIndices: $gameIndices, heldItems: $heldItems, locationAreaEncounters: $locationAreaEncounters, moves: $moves, pastTypes: $pastTypes, sprites: $sprites, species: $species, stats: $stats, types: $types)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Pokemon &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.baseExperience, baseExperience) ||
                other.baseExperience == baseExperience) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.isDefault, isDefault) ||
                other.isDefault == isDefault) &&
            (identical(other.order, order) || other.order == order) &&
            (identical(other.weight, weight) || other.weight == weight) &&
            const DeepCollectionEquality().equals(other.abilities, abilities) &&
            const DeepCollectionEquality().equals(other.forms, forms) &&
            const DeepCollectionEquality()
                .equals(other.gameIndices, gameIndices) &&
            const DeepCollectionEquality().equals(other.heldItems, heldItems) &&
            (identical(other.locationAreaEncounters, locationAreaEncounters) ||
                other.locationAreaEncounters == locationAreaEncounters) &&
            const DeepCollectionEquality().equals(other.moves, moves) &&
            const DeepCollectionEquality().equals(other.pastTypes, pastTypes) &&
            const DeepCollectionEquality().equals(other.sprites, sprites) &&
            const DeepCollectionEquality().equals(other.species, species) &&
            const DeepCollectionEquality().equals(other.stats, stats) &&
            const DeepCollectionEquality().equals(other.types, types));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      baseExperience,
      height,
      isDefault,
      order,
      weight,
      const DeepCollectionEquality().hash(abilities),
      const DeepCollectionEquality().hash(forms),
      const DeepCollectionEquality().hash(gameIndices),
      const DeepCollectionEquality().hash(heldItems),
      locationAreaEncounters,
      const DeepCollectionEquality().hash(moves),
      const DeepCollectionEquality().hash(pastTypes),
      const DeepCollectionEquality().hash(sprites),
      const DeepCollectionEquality().hash(species),
      const DeepCollectionEquality().hash(stats),
      const DeepCollectionEquality().hash(types));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PokemonCopyWith<_$_Pokemon> get copyWith =>
      __$$_PokemonCopyWithImpl<_$_Pokemon>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PokemonToJson(
      this,
    );
  }
}

abstract class _Pokemon implements Pokemon {
  const factory _Pokemon(
      {required final int id,
      required final String name,
      final int? baseExperience,
      final int? height,
      final bool? isDefault,
      final int? order,
      final int? weight,
      final dynamic abilities,
      final dynamic forms,
      final dynamic gameIndices,
      final dynamic heldItems,
      final String? locationAreaEncounters,
      final dynamic moves,
      final dynamic pastTypes,
      final dynamic sprites,
      final dynamic species,
      final dynamic stats,
      final dynamic types}) = _$_Pokemon;

  factory _Pokemon.fromJson(Map<String, dynamic> json) = _$_Pokemon.fromJson;

  @override

  /// 友人の名前
  int get id;
  @override //requiredで必須項目にする
  String get name;
  @override
  int? get baseExperience;
  @override
  int? get height;
  @override
  bool? get isDefault;
  @override
  int? get order;
  @override
  int? get weight;
  @override
  dynamic get abilities;
  @override // change to PokemonAbility class
  dynamic get forms;
  @override // change to Pokemonform class
  dynamic get gameIndices;
  @override // change to VersionGameIndex class
  dynamic get heldItems;
  @override // change to PokemonHeldItem class
  String? get locationAreaEncounters;
  @override
  dynamic get moves;
  @override // change to PokemonMove class
  dynamic get pastTypes;
  @override // change to PokemonTypePast
  dynamic get sprites;
  @override // change to PokemonSprites class
  dynamic get species;
  @override // change to PokemonSpecies class
  dynamic get stats;
  @override // change to PokemonStat class
  dynamic get types;
  @override
  @JsonKey(ignore: true)
  _$$_PokemonCopyWith<_$_Pokemon> get copyWith =>
      throw _privateConstructorUsedError;
}
