import 'package:flutter/material.dart';

import '../Models/pokemons.dart';

class PokemonDetails extends StatefulWidget {
  List<Pokemon> pokemon;
  int index;
    PokemonDetails({super.key, required this.pokemon, required this.index});

  @override
  State<PokemonDetails> createState() => _PokemonDetailsState();
}

class _PokemonDetailsState extends State<PokemonDetails> {
  bodyWidget(BuildContext context) => Stack(
    children: <Widget>[
      Positioned(
        height: MediaQuery.of(context).size.height / 1.5,
        width: MediaQuery.of(context).size.width - 20,
        left: 10.0,
        top: MediaQuery.of(context).size.height * 0.1,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              SizedBox(
                height: 70.0,
              ),
              Text(
                widget.pokemon[widget.index].name,
                style:
                TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
              ),
              Text("Height: ${widget.pokemon[widget.index].height}"),
              Text("Weight: ${widget.pokemon[widget.index].weight}"),
              Text(
                "Types",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children:[
                  for (var i in widget.pokemon[widget.index].type)
                    FilterChip(label: Text(i['type']['name']), onSelected: (b){})
                  // Text(widget.pokemon[widget.index].type[0]['type']['name'])
                ]
              ),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              //   children:[
              //     for (int i=0 ;i<5; widget.pokemon[widget.index].Move.length)
              //       FilterChip(label: Text(widget.pokemon[widget.index].Move[i]['move']['name']), onSelected: (b){})
              //     // Text(widget.pokemon[widget.index].type[0]['type']['name'])
              //   ]
              // ),
            ],
          ),
        ),
      ),
      Align(
        alignment: Alignment.topCenter,
        child: Hero(
            tag: widget.pokemon[widget.index].imageUrl,
            child: Container(
              height: 200.0,
              width: 200.0,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover, image: NetworkImage(widget.pokemon[widget.index].imageUrl))),
            )),
      )
    ],
  );
  @override
  Widget build(BuildContext context) {
    return  bodyWidget(context);
  }
}
