import 'package:flutter/material.dart';
import 'package:pokedex_fluter/pokemon_list.dart';
import 'package:pokedex_fluter/result_screen.dart';

class PokeDetails extends StatefulWidget {
  PokeDetails({required this.pokemonList});

  final PokemonList pokemonList;

  @override
  _PokeDetailsState createState() => _PokeDetailsState();
}

class _PokeDetailsState extends State<PokeDetails> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          child: Padding(
              padding: const EdgeInsets.all(10.00),
              child: ListView.builder(
                  itemCount: widget.pokemonList.pokemon.length,
                  itemBuilder: (BuildContext ctxt, int index) {
                    return ElevatedButton(
                      onPressed: () async {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) {
                            return ResultScreen(
                                pokemon: widget.pokemonList.pokemon[index]);
                          }),
                        );
                      },
                      child: Text(widget.pokemonList.pokemon[index].name),
                    );
                  })),
        ),
      ],
    );
  }
}
