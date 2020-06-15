

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
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
              child: Center(child: 
        Column(mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        
          children: <Widget>[
          
          Container (
            padding: EdgeInsets.all(10),
            height: 100,
            width: 100,
            alignment: Alignment.center,
            color: Colors.yellow,
            child: Text('hi flutter',
            )
            ,),
            Container (
            padding: EdgeInsets.all(10),
            height: 100,
            width: 100,
            alignment: Alignment.center,
            color: Colors.red,
            child: Text('red',
            )
            ,),
            Container (
            padding: EdgeInsets.all(10),
            height: 100,
            width: 100,
            alignment: Alignment.center,
            color: Colors.green,
            child: Text('hi flutter',
            )
            ,),
        ]
        
        ,)
        ),
      )
    );
  }
}