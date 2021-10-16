import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

import 'pokemon_list.dart';

const kBaseUrl = 'https://pokeapi.co/api/v2';

class PokemonService {
  static Future<PokemonList> fetchPokemons() async {
    final String url =
        'https://raw.githubusercontent.com/Biuni/PokemonGO-Pokedex/master/pokedex.json';
    final response = await http.get(Uri.parse(url));

    return compute(pokemonListFromJson, response.body);
  }
}
