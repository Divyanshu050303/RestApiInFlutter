import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trysomethingnew/getx/showdilogbox.dart';
import 'package:trysomethingnew/getx/snackbar.dart';
class NamedRoute extends StatelessWidget {
  const NamedRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        body: Center(
          child: ElevatedButton(
            onPressed: (){
              Get.toNamed("/home");
            },
            child: Text(
              "Go to snack bar"
            ),
          ),
        ),

    );
  }
}
