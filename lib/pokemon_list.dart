import 'dart:convert';

import 'package:pokedex_fluter/pokemon.dart';

PokemonList pokemonListFromJson(String str) =>
    PokemonList.fromJson(json.decode(str));

class PokemonList {
  PokemonList({
    required this.pokemon,
  });

  List<Pokemon> pokemon;

  factory PokemonList.fromJson(Map<String, dynamic> json) => PokemonList(
        pokemon:
            List<Pokemon>.from(json['pokemon'].map((x) => Pokemon.fromJson(x))),
      );
}
