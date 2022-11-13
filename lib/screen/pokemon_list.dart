import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:poke_app/notifier/pokemon_notifier.dart';
import 'package:poke_app/state/pokemon.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:poke_app/state/pokemons.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

final pokemonsProvider = StateNotifierProvider<PokemonNotifier, Pokemons>(
  (ref) => PokemonNotifier()
);

class PokemonList extends ConsumerWidget {
  const PokemonList({Key? key}) : super(key: key);


  // 種族値のゲージWidget
  Widget _getLinearGauge(String statType, int stat) {
    return Row(
        children: [
          // 種族値の名前
          Text(statType),

          // 種族値のゲージ
          Container(
            width: 150,
            margin: const EdgeInsets.all(7),
            child: SfLinearGauge(
                showLabels: false,
                showTicks: false,
                // showAxisTrack: false,
                interval: 100,
                minimum: 0.0,
                maximum: 255.0,
                barPointers: [LinearBarPointer(value: stat.toDouble())],
                orientation: LinearGaugeOrientation.horizontal,
                // majorTickStyle: LinearTickStyle(length: 10),
                // axisLabelStyle: TextStyle(fontSize: 12.0, color: Colors.black),
                axisTrackStyle: const LinearAxisTrackStyle(
                    color: Colors.white,
                    edgeStyle: LinearEdgeStyle.bothFlat,
                    thickness: 5.0,
                    borderWidth: 1,
                    borderColor: Colors.black)
            ),
          ),

          // 種族値の値
          Text(stat.toString()),
        ],
    );
  }


  // カード要素のメインWidget
  Widget _cardItem(Pokemon pokemon) {
    return Row(
      children: [
        Column(
          children: [

            // ポケモンの名前
            Container(
              margin: const EdgeInsets.only(top: 10),
              // padding: const EdgeInsets.only(left: 5, right: 5),
              padding: const EdgeInsets.all(5.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                // color: const Color.fromARGB(255, 110, 137, 151).withOpacity(0.3),
                color: Colors.white.withOpacity(0.5)
              ),
              child: Text(
                pokemon.name,
                style: const TextStyle(
                  fontWeight: FontWeight.normal,
                  // color: Colors.white
                  color: Color.fromARGB(255, 70, 67, 67)
                ),

              ),
            ),
            // ポケモンの画像
            CachedNetworkImage(
              height: 100,
              width: 100,
              imageUrl: pokemon.sprites!['front_default']!
            ),
          ],
        ),

        // 種族値
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _getLinearGauge('H', pokemon.getHp),
              _getLinearGauge('A', pokemon.getAttack),
              _getLinearGauge('B', pokemon.getDefence),
              _getLinearGauge('C', pokemon.getSAttack),
              _getLinearGauge('D', pokemon.getSDefence),
              _getLinearGauge('S', pokemon.getSpeed),
            ],
          ),
        ),

        // お気に入りアイコン
        Expanded(child: 
          Container(
            padding: const EdgeInsets.all(20.0),
            alignment: Alignment.topRight,
            child: const Icon(
                      Icons.favorite_border_rounded,
                      color: Colors.black38,
                    ),
          )
        ),
      ],
    );
  }

  // カード要素の土台Widget
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

  // 初期表示
  Widget _emptyListView() {
    return const Center(
            child: CircularProgressIndicator(),
          );
  }

  Widget _waitingListView() {
    return Container(
            height: 20,
            child: const Center(
                    child: CircularProgressIndicator()
                  ),
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
            ? Scaffold(
                body: ListView.builder(
                    itemExtent: 170,
                    itemCount: state.pokemons!.length + 1,
                    itemBuilder: (BuildContext context, int index){
                      if (index >= state.pokemons!.length) {
                        return _waitingListView();  
                      } else {
                        return _card(state.pokemons![index]);
                      }
                    }),
            )
            : Scaffold(body: _emptyListView()),
    );
  }
}