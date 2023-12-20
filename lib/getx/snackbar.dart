import 'package:flutter/material.dart';
import 'package:get/get.dart' ;

class SnackBars extends StatelessWidget {
  const SnackBars({super.key});

  @override
  Widget build(BuildContext context) {
    return    Center(
          child: ElevatedButton(
            onPressed: (){
              Get.snackbar(
                 "GetX SnackBar",
                "Message for getx snackbar",
                titleText: const Text("Title Text of getx snack bar",style: TextStyle(
                  color:Colors.black
                ),),
                messageText: const Text("Message Text of getx snack bar"),
                snackPosition: SnackPosition.BOTTOM,
                isDismissible: true,
                dismissDirection: DismissDirection.horizontal
              );
            },

            child: Text("Show SnackBar"),
          ),

    );
  }
}
