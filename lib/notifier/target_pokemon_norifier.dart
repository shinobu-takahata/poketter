
import 'package:poke_app/state/target_pokemon.dart';
import 'package:poke_app/state/pokemon.dart';
import 'package:poke_app/utils/connection/connection_state.dart';
import 'package:state_notifier/state_notifier.dart';

class TargetPokemonNotifier extends StateNotifier<TargetPokemon> {
  TargetPokemonNotifier() : super(TargetPokemon()) {
    // fetch(id);
  }

  Future<void> fetch(Pokemon pokemon) async {
    state = state.copyWith(isLoading: true);

    try {
      // final newPokemon = await fetchPokemon(id);
      state = state.copyWith(id: pokemon.id, targetPokemon: pokemon, isLoading: false, error: null);
    } on Exception catch(error) {
      state = state.copyWith(error: error.toString());
    }
  }

  
}