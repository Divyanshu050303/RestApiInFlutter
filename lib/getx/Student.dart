import 'package:get/get.dart';

class Student{
  // make the individual variable observable
  // var name="Divyanshu".obs;
  // var lastname="singh".obs;

  // Make the whole class observable
  var name;
  var lastname;
  Student({this.name, this.lastname});
}