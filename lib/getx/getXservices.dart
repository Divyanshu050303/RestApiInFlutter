import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trysomethingnew/getx/GetXServicesClass.dart';

class GetXServices extends StatelessWidget {
  const GetXServices({super.key});



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("GetX Services"),),
      body: Center(
        child:ElevatedButton(
          onPressed: (){
            Get.find<Services>().incrementCounter();
          },
          child: Text("Click"),
        ),
      ),
    );
  }
}
