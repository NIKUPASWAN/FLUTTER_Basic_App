import 'package:flutter/material.dart';
import 'bgImage.dart';
class Changewidgets extends StatelessWidget {
  const Changewidgets({
    Key key,
    @required this.myText,
    @required TextEditingController nameController,
  }) : _nameController = nameController, super(key: key);

  final String myText;
  final TextEditingController _nameController;

  @override
  Widget build(BuildContext context) {
    return Column
    (children: <Widget>[
     BgImage(),
      SizedBox(height: 20,),
      Text(myText, style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
      SizedBox(height: 20,),
       Padding(
         padding: const EdgeInsets.all(16.0),
         child: TextField(
           controller: _nameController,
           keyboardType:TextInputType.text ,
           decoration: InputDecoration(
          border: OutlineInputBorder(),
           hintText: "Enter somthing  "
         ,labelText: ' Name',
          ),
          ),
       )  , 
      
          ],
          );
  }
}