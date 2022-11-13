// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'target_pokemon.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TargetPokemon {
  int? get id => throw _privateConstructorUsedError;
  Pokemon? get targetPokemon => throw _privateConstructorUsedError;
  dynamic get isLoading => throw _privateConstructorUsedError;
  bool get favorite => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TargetPokemonCopyWith<TargetPokemon> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TargetPokemonCopyWith<$Res> {
  factory $TargetPokemonCopyWith(
          TargetPokemon value, $Res Function(TargetPokemon) then) =
      _$TargetPokemonCopyWithImpl<$Res, TargetPokemon>;
  @useResult
  $Res call(
      {int? id,
      Pokemon? targetPokemon,
      dynamic isLoading,
      bool favorite,
      String? error});

  $PokemonCopyWith<$Res>? get targetPokemon;
}

/// @nodoc
class _$TargetPokemonCopyWithImpl<$Res, $Val extends TargetPokemon>
    implements $TargetPokemonCopyWith<$Res> {
  _$TargetPokemonCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? targetPokemon = freezed,
    Object? isLoading = null,
    Object? favorite = null,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      targetPokemon: freezed == targetPokemon
          ? _value.targetPokemon
          : targetPokemon // ignore: cast_nullable_to_non_nullable
              as Pokemon?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as dynamic,
      favorite: null == favorite
          ? _value.favorite
          : favorite // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PokemonCopyWith<$Res>? get targetPokemon {
    if (_value.targetPokemon == null) {
      return null;
    }

    return $PokemonCopyWith<$Res>(_value.targetPokemon!, (value) {
      return _then(_value.copyWith(targetPokemon: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_TargetPokemonCopyWith<$Res>
    implements $TargetPokemonCopyWith<$Res> {
  factory _$$_TargetPokemonCopyWith(
          _$_TargetPokemon value, $Res Function(_$_TargetPokemon) then) =
      __$$_TargetPokemonCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      Pokemon? targetPokemon,
      dynamic isLoading,
      bool favorite,
      String? error});

  @override
  $PokemonCopyWith<$Res>? get targetPokemon;
}

/// @nodoc
class __$$_TargetPokemonCopyWithImpl<$Res>
    extends _$TargetPokemonCopyWithImpl<$Res, _$_TargetPokemon>
    implements _$$_TargetPokemonCopyWith<$Res> {
  __$$_TargetPokemonCopyWithImpl(
      _$_TargetPokemon _value, $Res Function(_$_TargetPokemon) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? targetPokemon = freezed,
    Object? isLoading = null,
    Object? favorite = null,
    Object? error = freezed,
  }) {
    return _then(_$_TargetPokemon(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      targetPokemon: freezed == targetPokemon
          ? _value.targetPokemon
          : targetPokemon // ignore: cast_nullable_to_non_nullable
              as Pokemon?,
      isLoading: null == isLoading ? _value.isLoading : isLoading,
      favorite: null == favorite
          ? _value.favorite
          : favorite // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_TargetPokemon implements _TargetPokemon {
  _$_TargetPokemon(
      {this.id,
      this.targetPokemon,
      this.isLoading = false,
      this.favorite = false,
      this.error});

  @override
  final int? id;
  @override
  final Pokemon? targetPokemon;
  @override
  @JsonKey()
  final dynamic isLoading;
  @override
  @JsonKey()
  final bool favorite;
  @override
  final String? error;

  @override
  String toString() {
    return 'TargetPokemon(id: $id, targetPokemon: $targetPokemon, isLoading: $isLoading, favorite: $favorite, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TargetPokemon &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.targetPokemon, targetPokemon) ||
                other.targetPokemon == targetPokemon) &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            (identical(other.favorite, favorite) ||
                other.favorite == favorite) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, targetPokemon,
      const DeepCollectionEquality().hash(isLoading), favorite, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TargetPokemonCopyWith<_$_TargetPokemon> get copyWith =>
      __$$_TargetPokemonCopyWithImpl<_$_TargetPokemon>(this, _$identity);
}

abstract class _TargetPokemon implements TargetPokemon {
  factory _TargetPokemon(
      {final int? id,
      final Pokemon? targetPokemon,
      final dynamic isLoading,
      final bool favorite,
      final String? error}) = _$_TargetPokemon;

  @override
  int? get id;
  @override
  Pokemon? get targetPokemon;
  @override
  dynamic get isLoading;
  @override
  bool get favorite;
  @override
  String? get error;
  @override
  @JsonKey(ignore: true)
  _$$_TargetPokemonCopyWith<_$_TargetPokemon> get copyWith =>
      throw _privateConstructorUsedError;
}
