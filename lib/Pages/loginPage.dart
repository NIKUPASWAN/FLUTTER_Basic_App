
//import 'package:APK/Pages/homePages.dart';
import 'package:APK/bgImage.dart';
import 'package:APK/utlis/constant.dart';
import 'package:flutter/material.dart';
class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final userNameController=TextEditingController();
  final paswordNameController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text('Login pages'),
        
      ),
      body: Stack(
        fit: StackFit.expand,
        children :<Widget>[
BgImage(),
Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child:Center(
            child: Card(child: 
            Column(children: <Widget>[
 Form(child:Padding(
   padding: const EdgeInsets.all(8.0),
   child: Column(children: <Widget>[
   
     TextFormField(
   
       decoration:InputDecoration(
   
      hintText:'Enter name',labelText:'Name' ),
   
     ),
   
     SizedBox(height: 16,),
   
     TextFormField(
   obscureText: true,
       decoration:InputDecoration(
   
      hintText:'Enter pasword',labelText:'pasword' ),
   
     ),
   
   ]
   
   
   
   ),
 ),
 ),
 SizedBox(height: 16,),
 RaisedButton(onPressed: () {
   Constants.pref.setBool("LoggedIn", true);
   Navigator.pushReplacementNamed(context, "/home");
 },
 child: Text('sign In'),
 color: Colors.orange,
 textColor: Colors.white,
 )
              ]
              ,),
            ),
          )
        ),
      ),
      ],)
    );
  }
}