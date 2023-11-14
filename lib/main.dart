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
import 'package:trysomethingnew/Animation/AdvanceAnimation.dart';
import 'package:trysomethingnew/Animation/FadeAnimation.dart';
import 'package:trysomethingnew/compass.dart';
import 'package:trysomethingnew/tictactoe/tictac.dart';

Future<void> main()   async {
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

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Color.fromARGB(500, 100, 203, 203)),
        useMaterial3: true,
      ),
      home: const AdvancesAnimation(),
      debugShowCheckedModeBanner: false,
    );
  }
}