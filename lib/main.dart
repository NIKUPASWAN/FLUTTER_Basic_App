

import 'package:APK/Pages/homePages.dart';
import 'package:APK/Pages/loginPage.dart';
import 'package:APK/utlis/constant.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future main() async{
  WidgetsFlutterBinding.ensureInitialized();
  Constants.pref=await SharedPreferences.getInstance();
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'AuweSome App',
    home:Constants.pref.getBool("LoggedIn")==true?HomePage():LoginPage(),
    theme: ThemeData(
      primarySwatch:Colors.purple
    ),
    routes: {
      "/Longin":(context)=>LoginPage(),
      "/home":(context)=>HomePage()
    },
  ),);
}


