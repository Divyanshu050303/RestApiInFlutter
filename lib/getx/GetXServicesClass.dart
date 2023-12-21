import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
class Services extends GetxService{
  Future<void> incrementCounter() async{
    SharedPreferences preferences=await SharedPreferences.getInstance();
    int counter=(preferences.getInt('counter')?? 0)+1;
    print("Pressed $counter time");
    await preferences.setInt('counter', counter);
  }
}