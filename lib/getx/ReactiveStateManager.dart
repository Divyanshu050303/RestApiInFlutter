import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trysomethingnew/getx/getXContoller.dart';
class ReactiveStateManger extends StatelessWidget {
  const ReactiveStateManger({super.key});

  @override
  Widget build(BuildContext context) {
    // var count=0.obs;
    //
    // void Increment(){
    //   count++;
    // }
    return Scaffold(
      backgroundColor: Colors.white,
        body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Obx(() => Text("Here the count value is increased by one $count", style: TextStyle(decoration:TextDecoration.none, ),)),
            // ElevatedButton(onPressed: (){Increment();}, child: const Text("Increase",style: TextStyle(decoration:TextDecoration.none, )))
            // separate the ui and business logic
            GetX<GetXControllers>(
              init: GetXControllers(),
              builder: (controller){
                return Text("Here the count value is increased by one ${controller.count}", style: TextStyle(decoration:TextDecoration.none, ));
              },
            ),
             ElevatedButton(onPressed: (){
               Get.find<GetXControllers>().increment();

             }, child: const Text("Increase",style: TextStyle(decoration:TextDecoration.none, )))
          ],
        ),
      ),
    );
  }
}
