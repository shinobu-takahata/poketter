import 'package:flutter/material.dart';
import 'package:poke_app/notifier/pokemon_notifier.dart';
import 'package:poke_app/screen/my_home_page.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:poke_app/screen/pokemon_list.dart';
import 'package:poke_app/state/pokemons.dart';


void main() {
  runApp(const ProviderScope(child:MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),

      home: const PokemonList(),
    );
  }
}

