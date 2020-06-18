import 'package:APK/Changewidgers.dart';
import 'package:APK/drawer.dart';
import 'package:flutter/material.dart';



class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController _nameController=TextEditingController();
  var myText ='';
  @override
  void initState() {
    
    super.initState();
  }
  @override
  
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Auwesome App'),
      ),
      body:SingleChildScrollView (
        child: Card(
        child:
        Changewidgets(myText: myText, nameController: _nameController),
      ),
      
          
    ),
      drawer: MyDrawer(),
      floatingActionButton:
      FloatingActionButton(child: Icon(Icons.refresh),
        onPressed: () {
      myText=_nameController.text;
      setState(() {
        
      });
      
      },)
     ) ;
      
   
  }
}

