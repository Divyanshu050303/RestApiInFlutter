import 'dart:math';

import 'package:flutter/material.dart';

class AdvancesAnimation extends StatefulWidget {
  const AdvancesAnimation({super.key});

  @override
  State<AdvancesAnimation> createState() => _AdvancesAnimationState();
}

class _AdvancesAnimationState extends State<AdvancesAnimation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xFF15202D),
        child: SizedBox.expand(
          child: VariousDiscs(50),
        ),
      ),
    );
  }
}

class DiscData {
  static final _rng = Random();
  final double size;
  final Color color;
  final Alignment alignment;

  DiscData()
      : size=_rng.nextDouble() * 40 + 10,
        color=Color.fromARGB(
            _rng.nextInt(200), _rng.nextInt(255), _rng.nextInt(255),
            _rng.nextInt(255)),alignment=Alignment(_rng.nextDouble()*2-1, _rng.nextDouble()*2-1);
}
class VariousDiscs extends StatefulWidget{
  final int numberOfDiscs;
  const VariousDiscs(this.numberOfDiscs, {super.key});
  @override
  State<VariousDiscs> createState()=> _VariousDiscsState();
}
class _VariousDiscsState extends State<VariousDiscs>{
  final _discs=<DiscData>[];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _makeDiscs();
  }
  void _makeDiscs(){
    _discs.clear();
    for(int i=0;i<widget.numberOfDiscs;i++){
      _discs.add(DiscData());
    }
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(
      children: [
        const Center(
          child: Text(
            'Click a disc!',
            style: TextStyle(color: Colors.white, fontSize: 50),
          ),
        ),
        GestureDetector(
          onTap: ()=>setState(() {
            _makeDiscs();
          }),
          child: Stack(
            children: [
              for(final disc in _discs)
                Positioned.fill(child: AnimatedAlign(
                  duration: Duration(milliseconds: 500),
                  curve: Curves.easeInOut,
                  alignment: disc.alignment,
                  child: AnimatedContainer(
                    duration: Duration(milliseconds: 500),
                    decoration: BoxDecoration(
                      color: disc.color,
                      shape: BoxShape.circle
                    ),
                    height: disc.size,
                    width: disc.size,
                  ),
                ))
            ],
          ),
        )
      ],
    );
  }
}
