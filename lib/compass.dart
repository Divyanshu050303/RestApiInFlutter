import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_compass/flutter_compass.dart';

class Compass extends StatefulWidget {
  const Compass({super.key});

  @override
  State<Compass> createState() => _CompassState();
}

class _CompassState extends State<Compass> {
  double? heading=0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    FlutterCompass.events!.listen((event) {
      setState(() {
        heading=event.heading;
      });
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.grey.shade800,
        centerTitle: true,
        title: Text("Comapss App"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text("${heading!.ceil()}\u00B0",style: TextStyle(
            color: Colors.white,
            fontSize: 26,
            fontWeight: FontWeight.bold
          ),),
          SizedBox(height: 50,),
          Padding(padding: EdgeInsets.all(18),
          child:Stack(
            alignment: Alignment.center,
            children: [
              Image.asset("assets/cadrant.png"),
              Transform.rotate(angle: ((heading??0)*(pi/180)*-1),
              child: Image.asset("assets/compass.png", scale: 1.1,),
              )
            ],
          ) ,)
        ],
      ),
    );
  }
}
