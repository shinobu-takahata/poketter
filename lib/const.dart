// const int pokeMax
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

const String pokeApiRoute = "https://pokeapi.co/api/v2";
const String apiPokemonRoute = '${pokeApiRoute}/pokemon';
// const String pokeApiRoute = "https://pokeapi.co/api/v2";
// const String pokeApiRoute = "https://pokeapi.co/api/v2";
// const String pokeApiRoute = "https://pokeapi.co/api/v2";
const limit = 20;

const Map<String, Color> typeColors = {
  "normal": Color(0xFFaea886),
  "fighting": Color(0xFF9a3d3e),
  "flying": Color(0xFF7e9ecf),
  "poison": Color(0xFF8f5b98),
  "ground": Color(0xFF916d3c),
  "rock": Color(0xFF878052),
  "bug": Color(0xFF989001),
  "ghost": Color(0xFF555fa4),
  "steel": Color(0xFF9b9b9b),
  "fire": Color(0xFFf45c19),
  "water": Color(0xFF4a96d6),
  "grass": Color(0xFF28b25c),
  "electric": Color(0xFFeaa317),
  "psychic": Color(0xFFd56d8b),
  "ice": Color(0xFF45a9c0),
  "dragon": Color(0xFF454ba6),
  "dark": Color(0xFF7a0049),
  "fairy": Color(0xFFffbbff),
  "unknown": Color.fromARGB(188, 255, 255, 255),
  "shadow": Color.fromARGB(188, 255, 255, 255),
};