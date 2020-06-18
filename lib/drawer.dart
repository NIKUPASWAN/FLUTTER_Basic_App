import 'package:flutter/material.dart';
class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            
            UserAccountsDrawerHeader(
              
            
              accountName: Text('NIKU PASWAN'
            ),
            accountEmail: Text('nikkupaswan@gmail.com'),
           currentAccountPicture
           :CircleAvatar(backgroundImage:
           NetworkImage('https://th.bing.com/th/id/OIP.SACxN8TAnVIK4VvdijqRkwHaHd?w=179&h=181&c=7&o=5&pid=1.7') ,)),

            
      
            ListTile(
            leading: Icon(Icons.person
            ),
            title: Text('Account'),
            subtitle: Text("Niku paswan"),
            trailing: Icon(Icons.edit),  
            ),
             ListTile(
            leading: Icon(Icons.email
            ),
            title: Text('Email'),
            subtitle: Text("niku paswan@gmail.com"),
            trailing: Icon(Icons.send),  
            ),
          ],
          
          ),
          );

      
    
  }
}
        