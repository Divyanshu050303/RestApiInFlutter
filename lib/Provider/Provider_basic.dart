import 'package:flutter/material.dart';
import 'package:provider/provider.dart' ;

import 'ProviderClass.dart';

 class ProviderClass extends StatelessWidget {
   const ProviderClass({super.key});

   @override
   Widget build(BuildContext context) {
     return ChangeNotifierProvider(create: (context) => CatConv(), child: MaterialApp(
     title: "Provider Demo",

     ),);
   }
 }

