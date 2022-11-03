// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Pokemon _$$_PokemonFromJson(Map<String, dynamic> json) => _$_Pokemon(
      id: json['id'] as int,
      name: json['name'] as String,
      baseExperience: json['baseExperience'] as int?,
      height: json['height'] as int?,
      isDefault: json['isDefault'] as bool?,
      order: json['order'] as int?,
      weight: json['weight'] as int?,
      abilities: json['abilities'],
      forms: json['forms'],
      gameIndices: json['gameIndices'],
      heldItems: json['heldItems'],
      locationAreaEncounters: json['locationAreaEncounters'] as String?,
      moves: json['moves'],
      pastTypes: json['pastTypes'],
      sprites: json['sprites'],
      species: json['species'],
      stats: json['stats'],
      types: json['types'],
    );

Map<String, dynamic> _$$_PokemonToJson(_$_Pokemon instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'baseExperience': instance.baseExperience,
      'height': instance.height,
      'isDefault': instance.isDefault,
      'order': instance.order,
      'weight': instance.weight,
      'abilities': instance.abilities,
      'forms': instance.forms,
      'gameIndices': instance.gameIndices,
      'heldItems': instance.heldItems,
      'locationAreaEncounters': instance.locationAreaEncounters,
      'moves': instance.moves,
      'pastTypes': instance.pastTypes,
      'sprites': instance.sprites,
      'species': instance.species,
      'stats': instance.stats,
      'types': instance.types,
    };
