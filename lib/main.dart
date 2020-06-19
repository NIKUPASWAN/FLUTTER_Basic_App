

import 'package:APK/Pages/homePages.dart';
import 'package:APK/Pages/loginPage.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    title: 'AuweSome App',
    home:LoginPage(),
    theme: ThemeData(
      primarySwatch:Colors.purple
    ),
    routes: {
      "/Longin":(context)=>LoginPage(),
      "/home":(context)=>HomePage()
    },
  ),);
}


