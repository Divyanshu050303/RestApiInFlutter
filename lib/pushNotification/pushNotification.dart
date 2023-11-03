import 'package:firebase_messaging/firebase_messaging.dart';

class FirebaseApi{
  final _firabaseMessaging=FirebaseMessaging.instance;
  Future<void> initNotification()async{
    await _firabaseMessaging.requestPermission();
    final fcmToken=await _firabaseMessaging.getToken();
    print("Token: $fcmToken");
  }
}