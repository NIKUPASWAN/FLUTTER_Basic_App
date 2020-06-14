

import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
    title: 'AueSome App',
    home:HomePage()
  ),);
}
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AueSome App'),
      ),
      body: Center(child: Container(
        padding: EdgeInsets.all(10),
        alignment: Alignment.center,
       
        height: 200,
        width: 200,
        child: ( Text('Hi flutter ',
        style: TextStyle(fontWeight: FontWeight.bold,
        fontSize: 30,color: Colors.white),))
        ,decoration: BoxDecoration(
         // shape: BoxShape.circle,
         borderRadius: BorderRadius.circular(20),
         boxShadow:[
           BoxShadow(color: Colors.yellow[100],
           blurRadius: 10,
           offset: Offset(10,12)
           
           
            ) ] ,
          color: Colors.teal,
          gradient:LinearGradient (colors:[
         Colors.orange,Colors.yellow   
          ] ,
          )
        ),
      ) ,)
    );
  }
}