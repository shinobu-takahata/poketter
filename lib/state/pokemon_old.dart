class Pokemon {
  late int id;
  late String name;
  late int baseExperience;
  late int height;
  late bool isDefault;
  late int order;
  late int weight;
  late dynamic abilities; // change to PokemonAbility class
  late dynamic forms; // change to Pokemonform class
  late dynamic gameIndices; // change to VersionGameIndex class
  late dynamic heldItems; // change to PokemonHeldItem class
  late String locationAreaEncounters;
  late dynamic moves; // change to PokemonMove class
  late dynamic pastTypes; // change to PokemonTypePast
  late dynamic sprites; // change to PokemonSprites class
  late dynamic species; // change to PokemonSpecies class
  late dynamic stats; // change to PokemonStat class
  late dynamic types; // change to PokemonType class

  Pokemon({
    this.id = 0,
    this.name = '',
    this.baseExperience = 0,
    this.height = 0,
    this.isDefault = false,
    this.order = 0,
    this.weight = 0,
    this.locationAreaEncounters = '',
  });

  Pokemon.fromJson(Map<String, dynamic> json)
    : id = json['id'],
      name = json['name'],
      baseExperience = json['base_experience'],
      height = json['height'],
      isDefault = json['is_default'],
      order = json['order'],
      weight = json['weight'],
      abilities = json['abilities'],
      forms = json['forms'],
      gameIndices = json['game_indices'],
      heldItems = json['held_items'],
      locationAreaEncounters = json['location_area_encounters'],
      moves = json['moves'],
      pastTypes = json['past_types'],
      sprites = Sprite.fromJson(json['sprites']),
      species = json['species'],
      stats = json['stats'],
      types = json['types'];
}



class Sprite {
  late String frontDefault;
  late String frontShiny;
  late String frontFemale;
  late String frontShinyfemale;
  late String backDefault;
  late String backShiny;
  late String backFemale;
  late String backShinyFemale;

  Sprite.fromJson(Map<String, dynamic> json)
    : frontDefault     = json['front_default'] ?? '',
      frontShiny       = json['front_shiny'] ?? '',
      frontFemale      = json['front_female'] ?? '',
      frontShinyfemale = json['front_shiny_female'] ?? '',
      backDefault      = json['back_default'] ?? '',
      backShiny        = json['back_shiny'] ?? '',
      backFemale       = json['back_female'] ?? '',
      backShinyFemale  = json['back_shiny_female'] ?? '';
}


