import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trysomethingnew/getx/getXContoller.dart';
class Internationalization extends StatelessWidget {
  const Internationalization({super.key});

  @override
  Widget build(BuildContext context) {
    GetXControllers controller=Get.put(GetXControllers());
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("hello".tr,style: const TextStyle(
          color: Colors.white, fontSize: 25, decoration: TextDecoration.none
        ),),
        const SizedBox(height: 20),
        ElevatedButton(onPressed: (){
          controller.ChangeLanguage('en', 'US');

        }, child:const Text("English")),

       const  SizedBox(height: 20),
        ElevatedButton(onPressed: (){
          controller.ChangeLanguage('hi', 'IN');
        }, child:const Text("Hindi")),
        const SizedBox(height: 20),
        ElevatedButton(onPressed: (){

          controller.ChangeLanguage('fr', 'FR');
        }, child:const Text("Franch")),
      ],
    );
  }
}
