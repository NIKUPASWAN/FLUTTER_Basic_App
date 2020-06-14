

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
      body: Container(child:   Center(child: Text('Hi flutter'))),
    );
  }
}