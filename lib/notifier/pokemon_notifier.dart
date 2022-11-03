
import 'package:poke_app/const.dart';
import 'package:poke_app/state/pokemon.dart';
import 'package:poke_app/state/pokemons.dart';
import 'package:poke_app/utils/connection/connection.dart';
import 'package:poke_app/utils/connection/connection_state.dart';
import 'package:state_notifier/state_notifier.dart';

class PokemonNotifier extends StateNotifier<Pokemons> {
  PokemonNotifier() : super(Pokemons(pokemons: [])) {
    fetchList();
  }

  Future<void> fetchList() async {
    if (state.pokemons!.isEmpty) {
      state = state.copyWith(isLoading: true);
    } else {
      state = state.copyWith(pokemons: state.pokemons!, offset: state.pokemons!.length, isLoading: true);
    }
    try {
      final newPokemons = await fetchPokemonOffset2(limit, state.offset);
      List<Pokemon> tempPokemons = [];
      tempPokemons.addAll(state.pokemons!);
      tempPokemons.addAll(newPokemons);
      state = state.copyWith(pokemons: tempPokemons, offset: state.pokemons!.length, isLoading: false, error: null);
    } on Exception catch(error) {
      state = state.copyWith(error: error.toString());
    }
  }

  void changeOffset()  {
    // state.offset = state.pokemons!.length + 1;
      state = state.copyWith(
        pokemons: state.pokemons,
        offset: state.pokemons!.length
      );

      fetchList();

  }
  
}