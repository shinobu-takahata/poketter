import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:poke_app/main.dart';
import 'package:poke_app/state/pokemons.dart';
import 'package:cached_network_image/cached_network_image.dart';

class PokemonList extends ConsumerWidget {
  const PokemonList({Key? key}) : super(key: key);
static const _threshold = 0.9;

  Widget _cardItem(String imageUrl) {
    var result = Container();

    return Row(
      children: [
        CachedNetworkImage(
          height: 150,
          width: 100,
          imageUrl: imageUrl
        ),
        Column(
          children: [
            Text('TEST'),
          ],
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
    return Container();
  }

  Widget _card(String imageUrl) {
    return Card(
      color: Colors.green, // Card自体の色
      margin: const EdgeInsets.all(10),
      elevation: 8, // 影の離れ具合
      shadowColor: Colors.black ,// 影の色
      shape: RoundedRectangleBorder( // 枠線を変更できる
        borderRadius: BorderRadius.circular(10),
      ),
      child: _cardItem(imageUrl),
      // child: ListTile(
      //   title: Text('Card03'),
      //   // title: Image.network(imageUrl),
      //   subtitle: Text('Card SubTitle'),
      //   // trailing:Image.network(imageUrl),
      //   leading: CachedNetworkImage(
      //     height: 150,
      //     width: 100,
      //     imageUrl: imageUrl
      //   ),
      //   trailing: Icon(Icons.add),
      // ),
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

        
        // if (!state.isLoading) {
        // }
        return false;
      },
      child: state.pokemons!.isNotEmpty
            ? ListView.builder(
                itemExtent: 150,
                itemCount: state.pokemons!.length + 1,
                itemBuilder: (BuildContext context, int index){
                  // var test = state.pokemons![index];
                  // if (index >= state.pokemons!.length - 1) {
                  //   ref.watch(pokemonsProvider.notifier)
                  //     .changeOffset();
                  // }
                  if (index >= state.pokemons!.length) {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );  
                  } else {
                    return _card(state.pokemons![index].sprites!['front_default']!);
                  }
                })
            : _emptyListView(),
    );
  }
}