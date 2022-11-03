import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:poke_app/main.dart';
import 'package:poke_app/state/pokemon.dart';
import 'package:cached_network_image/cached_network_image.dart';

class PokemonList extends ConsumerWidget {
  const PokemonList({Key? key}) : super(key: key);
static const _threshold = 0.9;

  Widget _cardItem(Pokemon pokemon) {

    return Row(
      children: [
        CachedNetworkImage(
          height: 150,
          width: 100,
          imageUrl: pokemon.sprites!['front_default']!
        ),
        Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Text(pokemon.name),
            ],
          ),
        ),
        Expanded(child: 
          Container(
            padding: const EdgeInsets.all(20.0),
            alignment: Alignment.topRight,
            child: Icon(Icons.add)
          )
        ),
      ],
    );
  }

  Widget _card(Pokemon pokemon) {
    List<Color> colors = pokemon.getTypeColor();

    return Card(
      color: pokemon.getTypeColor()[0], // Card自体の色
      margin: const EdgeInsets.all(10),
      elevation: 8, // 影の離れ具合
      shadowColor: Colors.black ,// 影の色
      shape: RoundedRectangleBorder( // 枠線を変更できる
        borderRadius: BorderRadius.circular(10),
      ),
      child: colors.length == 1 ? 
            _cardItem(pokemon) : // タイプが1つしかないなら背景色を単色に
            Container( // タイプが複数の場合、背景色を複数に
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  stops: const [
                    0.5,
                    0.5,
                  ],
                  colors: colors,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child: _cardItem(pokemon),
            ),

    );
  }

  Widget _emptyListView() {
    return const Center(
            child: CircularProgressIndicator(),
          );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(pokemonsProvider);

    return NotificationListener<OverscrollNotification>(
      onNotification: (OverscrollNotification  scrollNotification) {
        if (!state.isLoading) {
          ref.watch(pokemonsProvider.notifier).changeOffset();
        }

        // if (scrollNotification is ScrollEndNotification) {
        //   final before = scrollNotification.metrics.extentBefore;
        //   final max = scrollNotification.metrics.maxScrollExtent;
        //   if (before == max && !state.isLoading) {
        //     ref.watch(pokemonsProvider.notifier).changeOffset();
        //     // return true;
        //   }
        // }

        return false;
      },
      child: state.pokemons!.isNotEmpty
            ? ListView.builder(
                itemExtent: 150,
                itemCount: state.pokemons!.length + 1,
                itemBuilder: (BuildContext context, int index){
                  if (index >= state.pokemons!.length) {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );  
                  } else {
                    return _card(state.pokemons![index]);
                  }
                })
            : _emptyListView(),
    );
  }
}