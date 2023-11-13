import 'package:flutter/material.dart';

class TicTac extends StatefulWidget {
  const TicTac({super.key});

  @override
  State<TicTac> createState() => _TicTacState();
}

class _TicTacState extends State<TicTac> {
  bool turn = true;
  List display = [
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
  ];
  int _oScore = 0;
  int _xScore = 0;
  int filledd=0;
  var _TextStyele = TextStyle(color: Colors.black, fontSize: 30);

  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQueryData=MediaQuery.of(context);
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      body: Column(
        children: [
          Expanded(
              child: Container(
                width: mediaQueryData.size.width,
            height: mediaQueryData.size.height*0.22,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20) ),
                color: Colors.white,
              boxShadow: [
                BoxShadow(
                  blurRadius: 1,
                  spreadRadius: 1,
                  color: Colors.grey,
                  offset: Offset(1,3)
                )
              ]

            ),
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Player x",
                        style: _TextStyele,
                      ),
                      Text(
                        _xScore.toString(),
                        style: _TextStyele,
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Player o",
                        style: _TextStyele,
                      ),
                      Text(
                        _oScore.toString(),
                        style: _TextStyele,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )),
          Expanded(
            flex: 3,
            child: GridView.builder(
                itemCount: 9,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3),
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    onTap: () {
                      _tapped(index);
                    },
                    child: Container(

                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black)),
                      child: Center(
                        child: Text(
                          display[index].toString(),
                          style: TextStyle(fontSize: 40, color: Colors.black),
                        ),
                      ),
                    ),
                  );
                }),
          ),
          Expanded(child: Container(
            child: Center(
              child: ElevatedButton(
                onPressed: (){
                  _clearBoard();
                },
                child: Text("Play Again", style: TextStyle(color: Colors.black),),
              ),
            ),
          )),
        ],
      ),
    );
  }

  void _tapped(int index) {
    filledd++;
    setState(() {
      if (turn && display[index] == '') {
        display[index] = 'o';
      } else if (!turn && display[index] == '') {
        display[index] = 'x';
      }
      turn = !turn;
      _checkWinner();
    });
  }

  void _checkWinner() {
    if (display[0] == display[1] &&
        display[0] == display[2] &&
        display[0] != '') {
      _showDialog(display[0]);
    }
    if (display[3] == display[4] &&
        display[3] == display[5] &&
        display[3] != '') {
      _showDialog(display[3]);
    }
    if (display[6] == display[3] &&
        display[6] == display[6] &&
        display[6] != '') {
      _showDialog(display[6]);
    }
    if (display[1] == display[4] &&
        display[1] == display[7] &&
        display[1] != '') {
      _showDialog(display[1]);
    }
    if (display[2] == display[5] &&
        display[2] == display[8] &&
        display[2] != '') {
      _showDialog(display[2]);
    }
    if (display[6] == display[4] &&
        display[6] == display[2] &&
        display[6] != '') {
      _showDialog(display[6]);
    }
    if (display[0] == display[4] &&
        display[0] == display[8] &&
        display[0] != '') {
      _showDialog(display[0]);
    }
    else if(filledd==9){
      _showDrawDialog();
    }
  }
void _showDrawDialog(){
  showDialog(
      barrierDismissible: false,
      context: context,
      builder: (BuildContext contex) {
        return AlertDialog(
          title: Text("Match Draw"),
          actions: [
            OutlinedButton(
                onPressed: () {
                  _clearBoard();
                  Navigator.of(context).pop();
                },
                child: Text("Play Again"))
          ],
        );
      });
}
  void _showDialog(String winner) {
    showDialog(
        barrierDismissible: false,
        context: context,
        builder: (BuildContext contex) {
          return AlertDialog(
            title: Text("Winner is $winner"),
            actions: [
              OutlinedButton(
                  onPressed: () {
                    _clearBoard();
                    Navigator.of(context).pop();
                  },
                  child: Text("Play Again"))
            ],
          );
        });
    setState(() {
      if (winner == 'o') {
        _oScore++;
      } else {
        _xScore++;
      }
    });
  }

  void _clearBoard() {
    setState(() {
      for (int i = 0; i < 9; i++) {
        display[i] = '';
      }
    });
    filledd=0;
  }
}
