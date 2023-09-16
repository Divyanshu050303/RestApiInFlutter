import 'dart:convert';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:trysomethingnew/pokemon/PokemonDetails.dart';

import '../Models/pokemons.dart';

class PokemonNameAndPhoto extends StatefulWidget {
  const PokemonNameAndPhoto({super.key});

  @override
  State<PokemonNameAndPhoto> createState() => _PokemonNameAndPhotoState();
}

class _PokemonNameAndPhotoState extends State<PokemonNameAndPhoto> {
  Future<List<Pokemon>> fetchPokemonList() async {
    print("Function Called");
    final response = await http.get(
      Uri.parse('https://pokeapi.co/api/v2/pokemon?limit=20&offset=0'),
    );
    print("Url");
    if (response.statusCode == 200) {
      final Map<String, dynamic> data = json.decode(response.body);
      final List<dynamic> results = data['results'];
      List<Pokemon> pokemonList = [];
      for (Map result in results) {
        final pokemonResponse = await http.get(Uri.parse(result['url']));
        if (pokemonResponse.statusCode == 200) {
          final Map<String, dynamic> pokemonData =
              json.decode(pokemonResponse.body);
          pokemonList.add(Pokemon.fromJson(pokemonData));
        }
      }
      print(pokemonList.length);
      return pokemonList;
    } else {
      throw Exception('Failed to load Pokémon');
    }
  }

  List<Pokemon> pokemonList = [];

  @override
  void initState() {
    super.initState();
    fetchPokemonList().then((list) {
      setState(() {
        pokemonList = list;
        pokemonList.shuffle();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Pokémon List'),
        ),
        body: GridView.builder(
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
            itemCount: pokemonList.length,
            itemBuilder: (context, index) {
              return Hero(
                tag:pokemonList[index].imageUrl ,
                child: GridTile(child: GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>PokemonDetails(pokemon: pokemonList, index: index,)));
                  },
                  child: Card(
                    child:Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                       children: [
                         Image.network(pokemonList[index].imageUrl,height: 100,width: 120,),
                         Text(pokemonList[index].name, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),)
                       ],

                    )
                  ),
                )),
              );
            }));
  }
}
