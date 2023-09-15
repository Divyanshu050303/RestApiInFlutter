import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart'as http;
import 'package:trysomethingnew/Models/pokehub.dart';

import '../Models/pokehub.dart';
class PokemonNameAndPhoto extends StatefulWidget {
  const PokemonNameAndPhoto({super.key});

  @override
  State<PokemonNameAndPhoto> createState() => _PokemonNameAndPhotoState();
}

class _PokemonNameAndPhotoState extends State<PokemonNameAndPhoto> {
 var url="https://raw.githubusercontent.com/Biuni/PokemonGO-Pokedex/master/pokedex.json";
     late Pokehub pokehub;
@override
  void initState() {
    // TODO: implement initState
    super.initState();
    fetctData();
  }
  fetctData() async{
  var res=await http.get(Uri.parse(url));
  var decoded=jsonDecode(res.body);
  pokehub=Pokehub.fromJson(decoded);
  setState(() {

  });
  }
 @override
 Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       title: const Text("Poke App"),
       backgroundColor: Colors.cyan,
     ),
     body: pokehub == null
         ? const Center(
       child: CircularProgressIndicator(),
     )
         : GridView.count(
       crossAxisCount: 2,
       children: pokehub.pokemon
           !.map((poke) => Padding(
         padding: const EdgeInsets.all(2.0),
         child: InkWell(
           onTap: () {
             // Navigator.push(
             //     context,
             //     MaterialPageRoute(
             //         builder: (context) => PokeDetail(
             //           pokemon: poke,
             //         )));
           },
           child: Hero(
             tag: poke.img.toString(),
             child: Card(
               child: Column(
                 mainAxisSize: MainAxisSize.max,
                 mainAxisAlignment:
                 MainAxisAlignment.spaceEvenly,
                 children: <Widget>[
                   Container(
                     height: MediaQuery.of(context).size.height *
                         0.4,
                     width:
                     MediaQuery.of(context).size.width * 0.2,
                     decoration: BoxDecoration(
                         image: DecorationImage(
                             fit: BoxFit.cover,
                             image: NetworkImage(poke.img.toString()))),
                   ),
                   Text(
                     poke.name.toString(),
                     style: const TextStyle(
                       fontSize: 20.0,
                       fontWeight: FontWeight.bold,
                     ),
                   )
                 ],
               ),
             ),
           ),
         ),
       ))
           .toList(),
     ),

   );
 }
}
