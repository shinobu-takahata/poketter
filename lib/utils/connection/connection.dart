import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:poke_app/const.dart';
// import 'package:pokeapi/pokeapi.dart';
// import 'package:pokeapi/model/pokemon/pokemon.dart';
import 'package:poke_app/state/pokemon_old.dart';


///
/// 特定のポケモンを取得
///
Future<dynamic> fetchPokemon(dynamic idOrName) async{
  final res = await http.get(Uri.parse('$apiPokemonRoute/$idOrName'));
  if (res.statusCode == 200) {
    Pokemon pokemon = Pokemon.fromJson(json.decode(res.body));
    return pokemon;
  } else {
    throw Exception('Failed to load Pokemon');
  }
}

///
/// ポケモンのリストを取得
///
Future<dynamic> fetchPokemonOffset(int limit, int offset) async{
  var test = Uri.parse('$apiPokemonRoute/?limit=$limit&offset=$offset');
  final res = await http.get(Uri.parse('$apiPokemonRoute?limit=$limit&offset=$offset'));
  if (res.statusCode == 200) {

    List<Pokemon> pokemons = [];
    var tempPokemons = json.decode(res.body);
    for (var tempPokemon in tempPokemons['results']) {
      final res = await http.get(Uri.parse('${tempPokemon['url']}'));
      Pokemon pokemon = Pokemon.fromJson(json.decode(res.body));
      pokemons.add(pokemon);
    }
    return pokemons;
  } else {
    throw Exception('Failed to load Pokemon');
  }
}



// Future<dynamic> fetchPokemonObject(int id) async{
//   Future<List<Pokemon?>> pokemons  = PokeAPI.getObjectList<Pokemon>(143, 3);
//   return pokemons;
// }


// Future<dynamic> fetchThePokemon(String name) async{
//   Future<Pokemon?> pokemon = PokeAPI.getObject(id)
// }