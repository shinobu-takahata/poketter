// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'pokemons.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Pokemons {
  List<Pokemon>? get pokemons => throw _privateConstructorUsedError;
  dynamic get isLoading => throw _privateConstructorUsedError;
  int get offset => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PokemonsCopyWith<Pokemons> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonsCopyWith<$Res> {
  factory $PokemonsCopyWith(Pokemons value, $Res Function(Pokemons) then) =
      _$PokemonsCopyWithImpl<$Res, Pokemons>;
  @useResult
  $Res call(
      {List<Pokemon>? pokemons, dynamic isLoading, int offset, String? error});
}

/// @nodoc
class _$PokemonsCopyWithImpl<$Res, $Val extends Pokemons>
    implements $PokemonsCopyWith<$Res> {
  _$PokemonsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pokemons = freezed,
    Object? isLoading = null,
    Object? offset = null,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      pokemons: freezed == pokemons
          ? _value.pokemons
          : pokemons // ignore: cast_nullable_to_non_nullable
              as List<Pokemon>?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as dynamic,
      offset: null == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PokemonsCopyWith<$Res> implements $PokemonsCopyWith<$Res> {
  factory _$$_PokemonsCopyWith(
          _$_Pokemons value, $Res Function(_$_Pokemons) then) =
      __$$_PokemonsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Pokemon>? pokemons, dynamic isLoading, int offset, String? error});
}

/// @nodoc
class __$$_PokemonsCopyWithImpl<$Res>
    extends _$PokemonsCopyWithImpl<$Res, _$_Pokemons>
    implements _$$_PokemonsCopyWith<$Res> {
  __$$_PokemonsCopyWithImpl(
      _$_Pokemons _value, $Res Function(_$_Pokemons) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pokemons = freezed,
    Object? isLoading = null,
    Object? offset = null,
    Object? error = freezed,
  }) {
    return _then(_$_Pokemons(
      pokemons: freezed == pokemons
          ? _value._pokemons
          : pokemons // ignore: cast_nullable_to_non_nullable
              as List<Pokemon>?,
      isLoading: null == isLoading ? _value.isLoading : isLoading,
      offset: null == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_Pokemons implements _Pokemons {
  _$_Pokemons(
      {final List<Pokemon>? pokemons = const [],
      this.isLoading = false,
      this.offset = 0,
      this.error})
      : _pokemons = pokemons;

  final List<Pokemon>? _pokemons;
  @override
  @JsonKey()
  List<Pokemon>? get pokemons {
    final value = _pokemons;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey()
  final dynamic isLoading;
  @override
  @JsonKey()
  final int offset;
  @override
  final String? error;

  @override
  String toString() {
    return 'Pokemons(pokemons: $pokemons, isLoading: $isLoading, offset: $offset, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Pokemons &&
            const DeepCollectionEquality().equals(other._pokemons, _pokemons) &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            (identical(other.offset, offset) || other.offset == offset) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_pokemons),
      const DeepCollectionEquality().hash(isLoading),
      offset,
      error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PokemonsCopyWith<_$_Pokemons> get copyWith =>
      __$$_PokemonsCopyWithImpl<_$_Pokemons>(this, _$identity);
}

abstract class _Pokemons implements Pokemons {
  factory _Pokemons(
      {final List<Pokemon>? pokemons,
      final dynamic isLoading,
      final int offset,
      final String? error}) = _$_Pokemons;

  @override
  List<Pokemon>? get pokemons;
  @override
  dynamic get isLoading;
  @override
  int get offset;
  @override
  String? get error;
  @override
  @JsonKey(ignore: true)
  _$$_PokemonsCopyWith<_$_Pokemons> get copyWith =>
      throw _privateConstructorUsedError;
}
