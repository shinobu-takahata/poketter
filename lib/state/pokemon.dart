import 'package:freezed_annotation/freezed_annotation.dart';
part 'pokemon.freezed.dart';
part 'pokemon.g.dart';

@freezed
class Pokemon with _$Pokemon { 
  const factory Pokemon({ 
    /// 友人の名前
    required int id, //requiredで必須項目にする
    required String name,
    int? baseExperience,
    int? height,
    bool? isDefault,
    int? order,
    int? weight,
    dynamic abilities, // change to PokemonAbility class
    dynamic forms, // change to Pokemonform class
    dynamic gameIndices, // change to VersionGameIndex class
    dynamic heldItems, // change to PokemonHeldItem class
    String? locationAreaEncounters,
    dynamic moves, // change to PokemonMove class
    dynamic pastTypes, // change to PokemonTypePast
    dynamic sprites, // change to PokemonSprites class
    dynamic species, // change to PokemonSpecies class
    dynamic stats, // change to PokemonStat class
    dynamic types, // change to PokemonType class
  }) = _Pokemon; 

  factory Pokemon.fromJson(Map<String, dynamic> json) =>
          _$PokemonFromJson(json);
}