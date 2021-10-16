import 'package:flutter/material.dart';
import 'package:pokedex_fluter/pokemon_details.dart';
import 'package:pokedex_fluter/pokemon_list.dart';
import 'package:pokedex_fluter/pokemon_service.dart';

class PokemonListing extends StatefulWidget {
  const PokemonListing({Key? key}) : super(key: key);

  @override
  _PokemonListingState createState() => _PokemonListingState();
}

class _PokemonListingState extends State<PokemonListing> {
  String? pokemonName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: FutureBuilder<PokemonList>(
      future: PokemonService.fetchPokemons(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return PokeDetails(pokemonList: snapshot.data!);
        } else {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    ));
  }
}
