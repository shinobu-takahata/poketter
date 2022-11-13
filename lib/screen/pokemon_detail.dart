import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:poke_app/main.dart';
import 'package:poke_app/state/pokemon.dart';
import 'package:cached_network_image/cached_network_image.dart';



class PokemonDetail extends ConsumerWidget {
  const PokemonDetail({Key? key}) : super(key: key);



  // 画像表示部分
  Widget imageArea(Pokemon pokemon) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: Container(
            color: pokemon.getTypeColor()[0],
            padding: const EdgeInsets.only(top: 50,),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Text(
                          pokemon.name,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                            color: Colors.black.withOpacity(0.5)
                          ),
                        )
                    ),
                    Row(
                      children: [
                        type(pokemon, 0),
                        type(pokemon, 1)
                      ],
                    )

                  ],
                ),
                const SizedBox(height: 50),
                CachedNetworkImage(
                        height: 100,
                        width: 200,
                        imageUrl: pokemon.sprites!['front_default']
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  // imageArea中のタイプ表示部
  Widget type(Pokemon pokemon, int typeIndex) {
    return Container(
              alignment: Alignment.center,
              width: 70,
              height: 30,
              margin: const EdgeInsets.all(5.0),
              padding: const EdgeInsets.all(5.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(
                  color: Colors.white
                ),
                // withOpacity ... 背景色の透過
                color: pokemon.getTypeColor()[typeIndex]
              ),
              child: Text(
                pokemon.types[typeIndex]["type"]["name"],
                style:  TextStyle(
                  fontWeight: FontWeight.normal,
                  color: Colors.white.withOpacity(0.8)
                ),
              ),
            );
  }

  Widget detailArea() {
    return Container();
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(targetPokemonProvider);

    return Scaffold(
              body: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        imageArea(state.targetPokemon!),
                        const Divider(
                          color: Colors.grey,
                          thickness: 3,
                          // height: 50,
                          indent: 20,
                          endIndent: 20,
                        ),
                        detailArea(),
                      ],
                    )
            );
  }
}

