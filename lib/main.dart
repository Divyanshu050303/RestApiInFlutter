// import 'package:flutter/material.dart';
// import 'package:trysomethingnew/HomePaage.dart';
// import 'package:trysomethingnew/Provider/ProviderClass.dart';
// import 'package:trysomethingnew/pokemon/PokemonPhotoAndName.dart';
// import 'package:provider/provider.dart' ;
// void main() {
//   runApp(const MyApp());
// }
// class MyApp extends StatefulWidget {
//   const MyApp({super.key});
//
//   @override
//   State<MyApp> createState() => _MyAppState();
// }
//
// class _MyAppState extends State<MyApp> {
//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//   }
//   @override
//   Widget build(BuildContext context) {
//     return ChangeNotifierProvider(
//       create: (BuildContext context) { CatConv(); },
//       child: MaterialApp(
//         title: 'Flutter Demo',
//         theme: ThemeData(
//           colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//           useMaterial3: true,
//         ),
//         home: const HomePage(),
//         debugShowCheckedModeBanner: false,
//       ),
//     );
//   }
// }
//
// Copyright 2019 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:trysomethingnew/Animation/AdvanceAnimation.dart';
import 'package:trysomethingnew/Animation/FadeAnimation.dart';
import 'package:trysomethingnew/compass.dart';
import 'package:trysomethingnew/getx/InternationalizationClass.dart';
import 'package:trysomethingnew/getx/ReactiveStateManager.dart';
import 'package:trysomethingnew/getx/Statemanagement.dart';
import 'package:trysomethingnew/getx/api/productListView.dart';
import 'package:trysomethingnew/getx/getXservices.dart';
import 'package:trysomethingnew/getx/named_route.dart';
import 'package:trysomethingnew/getx/showdilogbox.dart';
import 'package:trysomethingnew/getx/snackbar.dart';
import 'package:trysomethingnew/tictactoe/tictac.dart';
import 'package:trysomethingnew/video/video.dart';

import 'bottomsheet/bottomsheet.dart';
import 'getx/GetXServicesClass.dart';
import 'getx/Internationalization.dart';
import 'getx/getXContoller.dart';

Future<void> main()   async {
  await initServices();
  runApp(MyApp());
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent, // Make status bar translucent
      systemNavigationBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.light,
      systemNavigationBarIconBrightness: Brightness.light,// Make navigation bar translucent
    ),
  );
}
Future<void> initServices() async{
  print("Starting services");
  await Get.putAsync<Services>(() async => await Services());
  print("All the services started...");
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    GetXControllers controller=Get.put(GetXControllers());
    return GetMaterialApp(
      translations: Internationalizations(),
      locale: const Locale('en','US'),
      fallbackLocale: const Locale('en','US'),
      title: 'Flutter Demo',
      initialRoute: '/',
      defaultTransition: Transition.zoom,
      getPages: [
        GetPage(name: '/', page: () => ReactiveStateManger()),
        GetPage(name: "/home", page: () => ShowDiaLogBox(),transition: Transition.downToUp),
        GetPage(name: "/showdialog'", page: () => ShowDiaLogBox(), )
      ],
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(500, 100, 203, 203)),
        useMaterial3: true,
      ),
      // home: const Internationalization(),
      // home: BottomSheeta(),
      debugShowCheckedModeBanner: false,
      // home: Scaffold(
      //   body:  Center(
      //     child: Column(
      //       mainAxisAlignment: MainAxisAlignment.center,
      //       crossAxisAlignment: CrossAxisAlignment.center,
      //       children: [
      //         Text("hello".tr,style: const TextStyle(
      //             color: Colors.black, fontSize: 25, decoration: TextDecoration.none
      //         ),),
      //         const SizedBox(height: 20),
      //         ElevatedButton(onPressed: (){
      //           controller.ChangeLanguage('en', 'US');
      //
      //         }, child:const Text("English")),
      //
      //         const  SizedBox(height: 20),
      //         ElevatedButton(onPressed: (){
      //           controller.ChangeLanguage('hi', 'IN');
      //         }, child:const Text("Hindi")),
      //         const SizedBox(height: 20),
      //         ElevatedButton(onPressed: (){
      //
      //           controller.ChangeLanguage('fr', 'FR');
      //         }, child:const Text("Franch")),
      //       ],
      //     ),
      //   ),
      // ),
      home: ProductListView(),

    );
  }
}