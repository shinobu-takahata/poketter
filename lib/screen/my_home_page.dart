import 'package:flutter/material.dart';
import 'package:poke_app/screen/pokemon_list.dart';
import 'package:poke_app/utils/connection/connection.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:poke_app/state/pokemon_old.dart';

List<dynamic> pageList = [
  PokemonList(),
  PokemonList(),
  PokemonList(),
];

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  List<Pokemon> _pokemons = [];
  late Future<bool> _initStatus;
  int _offset = 1;
  int _limit = 20;
  bool _loading = false;

  @override
  void initState() {
    // TODO: implement initState
    _initStatus = _fetch();
    super.initState();

  }

  Future<bool> _fetch() async {
    // var pokemon = await fetchPokemon(1);
    List<Pokemon> resPokemons = await fetchPokemonOffset(_limit, _offset);

    setState(() {
      _pokemons.addAll(resPokemons);
      // 再度フェッチする際に、次のオフセットから取得する
      _offset += _limit;
      _loading = true;
    });

    return true;
  }


  Widget _card(String imageUrl) {
    return Card(
      child: Column(
        children:  [
          ListTile(
            leading: Icon(Icons.add),
            title: Text('Card03'),
            // title: Image.network(imageUrl),
            subtitle: Text('Card SubTitle'),
            trailing:Image.network(imageUrl),
          ),
        ],
      ),
      color: Colors.green, // Card自体の色
      margin: const EdgeInsets.all(10),
      elevation: 8, // 影の離れ具合
      shadowColor: Colors.black ,// 影の色
      shape: RoundedRectangleBorder( // 枠線を変更できる
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _initStatus,
      builder: (context, AsyncSnapshot snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }

        // 通信が失敗した場合
        if (snapshot.hasError) {
          return Center(
            child: Text(snapshot.error.toString()),
          );
        }

        if (snapshot.hasData) {
          return Scaffold(
            appBar: AppBar(
              title: Text(widget.title),
            ),
            body: Center(
            
              child: ListView.builder(
                itemCount: _pokemons.length,
                itemBuilder: (BuildContext context, int index) {
                  if (index < _pokemons.length) {
                    // return Text(items[index]);
                    return _card(_pokemons[index].sprites!.frontDefault!);
                  }
                  _fetch();
                  return const LinearProgressIndicator();
                })
            
            ),
            bottomNavigationBar: ConvexAppBar(
              color: Colors.black,
              backgroundColor: Color.fromARGB(255, 255, 94, 0),
              style: TabStyle.react,
              items: [
                TabItem(icon: Icons.list),
                TabItem(icon: Icons.calendar_today),
                TabItem(icon: Icons.assessment),
              ],
              initialActiveIndex: 1,
              onTap: (int i) => Navigator.of(context).push(
                MaterialPageRoute(builder: (context){
                  return pageList[i];
                })),
            ),
          );
        }

        return Container();
      }
    );
  }
}
