import 'package:flutter/material.dart';

class BottomSheeta extends StatefulWidget {
  const BottomSheeta({super.key});

  @override
  State<BottomSheeta> createState() => _BottomSheetaState();
}

class _BottomSheetaState extends State<BottomSheeta> {
  bool bottomSheet = false;

  void showSheet() {
    setState(() {
      bottomSheet = !bottomSheet;
    });
  }

  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
                style: ButtonStyle(
                  elevation: MaterialStateProperty.all(5.0),
                ),
                onPressed: () {
                  showModalBottomSheet(
                      context: context,
                      builder: (context) {
                        return Container(
                          width: mediaQueryData.size.width,
                          height: mediaQueryData.size.height * 0.3,
                          color: Colors.tealAccent.shade100,
                          child: const Center(
                            child: Text("Modal Bottom Sheet"),
                          ),
                        );
                      });
                },
                child: Text("Modal Bottom  Sheet ")),
            ElevatedButton(
                style: ButtonStyle(
                  elevation: MaterialStateProperty.all(5.0),
                ),
                onPressed: showSheet,
                child: const Text("Persistence Bottom Sheet"))
          ],
        ),
      ),
      bottomSheet: bottomSheet
          ? Container(
              height: 200.0,
              color: Colors.blue,
              child: Center(
                child: Text(
                  'Persistent Bottom Sheet Content',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            )
          : null,
    );
  }
}
