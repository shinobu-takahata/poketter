import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:poke_app/const.dart';
part 'pokemon.freezed.dart';
part 'pokemon.g.dart';

@freezed
abstract class Pokemon implements  _$Pokemon {
  const Pokemon._(); 
  const factory Pokemon({ 
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

  dynamic getTypeColor() {
    List<Color> colors = [];

    for (dynamic type in types) {
      colors.add(typeColors[type["type"]["name"]]!);
    }

    return colors;
  }
}