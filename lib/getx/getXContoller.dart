import 'dart:ui';

import 'package:get/get.dart';
import 'package:trysomethingnew/getx/Student.dart';

class GetXControllers extends GetxController{
  // var student=Student();
  // void changeToUpperCase(){
  //   student.name.value=student.name.value.toUpperCase();
  // }

  var student=Student(name: "Divyanshu", lastname: "singh").obs;
  void changeToUpperCase(){
    student.update((student) {
      student?.name=student.name .toString().toUpperCase();

    });
  }

  var count=0.obs;
  void increment(){
    count++;
  }

  void ChangeLanguage(var param1, var param2){
    var locale=Locale(param1, param2);
    Get.updateLocale(locale);
  }

}