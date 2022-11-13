import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:poke_app/state/pokemon.dart';

part 'target_pokemon.freezed.dart';


@freezed
class TargetPokemon with _$TargetPokemon {
  // {}を中に書いて、その中に、プロパティを?つけて書く!
  factory TargetPokemon({
    int? id,
    Pokemon? targetPokemon,
    @Default(false) isLoading,
    @Default(false) bool favorite,
    final String? error,
  }) = _TargetPokemon;

}