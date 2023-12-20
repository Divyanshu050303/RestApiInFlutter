import 'package:flutter/material.dart';
import 'package:get/get.dart';
class ShowDiaLogBox extends StatelessWidget {
  const ShowDiaLogBox({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
          title: Text("Show Dialog Box in getx"),
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: (){
              Get.defaultDialog(
                title: "Dialog box ",
                middleText: "This is the getx dialog box",
                onCancel: (){
                  print("object");
                  Get.snackbar(
                    "title",
                    "dialog box in canceled now "
                  );
                }
              );
            },
            child: Text("Show Dialog Box"),
          ),
        ),

    );
  }
}
