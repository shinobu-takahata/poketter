import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:poke_app/state/pokemon.dart';

part 'pokemons.freezed.dart';


@freezed
class Pokemons with _$Pokemons {
  // {}を中に書いて、その中に、プロパティを?つけて書く!
  factory Pokemons({
    @Default([]) List<Pokemon>? pokemons,
    @Default(false) isLoading,
    @Default(0) int offset,
    final String? error,
  }) = _Pokemons;

}