import 'package:flutter/cupertino.dart';

class CatConv extends ChangeNotifier{
  String _name ='wild cat🐱🐱';
  String get name=>_name;
  set name (String newName){
    _name=newName;
    notifyListeners();
  }

}