//import 'package:APK/Changewidgers.dart';
import 'package:APK/drawer.dart';
import 'package:APK/utlis/constant.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';



class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController _nameController=TextEditingController();
  var myText ='';
  var url='https://jsonplaceholder.typicode.com/photos';
  var data;
  @override
  void initState() {
    
    super.initState();
    getData();
  }
  getData() async{
    var res=await http.get(url);
   // print(res.body);
   data=jsonDecode(res.body);
   print(data);
   setState(() {
     
   });
    
  }
  @override
  
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Auwesome App'),
        actions: <Widget>[
         IconButton(icon:Icon (Icons.exit_to_app),onPressed: () {
           Constants.pref.setBool("LoggedIn", false);
           Navigator.pushNamed(context, "/Login");
           
         },)
        ],
      ),
      body: Padding(padding: const EdgeInsets.all(10),
      child: data!=null?
     ListView.builder(itemBuilder:(context,index){
       return ListTile(
         title:Text (data[index]['title'],),
         leading: Text(data[index][ "url"],),
       //  subtitle: Text('{$data[index][" id"]}'),
         
         
       );






       
     } ):Center
      (child: CircularProgressIndicator(),),),
        
   
      
          
    
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

