import 'package:flutter/material.dart';
import 'package:trysomethingnew/getx/getXContoller.dart';
import 'package:get/get.dart';

class ManagementSate extends StatelessWidget {
  const ManagementSate({super.key});

  @override
  Widget build(BuildContext context) {
    GetXControllers myController=Get.put(GetXControllers());
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() => Text("Here the count value is increased by one ${myController.student.value.name}", style: TextStyle(decoration:TextDecoration.none, ),)),
            ElevatedButton(onPressed: (){myController.changeToUpperCase();}, child: const Text("Increase",style: TextStyle(decoration:TextDecoration.none, )))
          ],
        ),
      ),
    );;
  }
}
