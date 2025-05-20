import 'package:flutter/material.dart';
import 'package:flutter_app/notions/alert_dialog.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Navigator.of(context).pushReplacementNamed('/');
        }, icon: Icon(Icons.arrow_back)),
        title: const Text('ListTile Example'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          ListTile(
            title: const Text('Simple ListTile'),
            subtitle: const Text('This is a simple ListTile'),
            onTap: (){
              showDialog(context: context, 
              builder: (BuildContext context){
                return Alert(
                  title: Text("Information"),
                  content: Text("This is a simple ListTile"),
                  icon: Icon(Icons.notification_add),
                  color: Colors.blue,
                  actions: [
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: Text("OK"),
                    ),
                  ],
                );
              });
            },
          ),
          ListTile(
            hoverColor: Color.fromARGB(255, 213, 184, 184),
              leading: const Icon(Icons.notification_add, color: Colors.amber),
              title: const Text('List Tile with leading icon'),
              subtitle: const Text('This is a ListTile with leading icon'),
              onTap: () {
                showDialog(
                  context: context, 
                  builder: (BuildContext context) {
                    return Alert(
                      title: Text("Information"),
                      content: Text("Vous avez clicker sur une liste title avec une icone"),
                      icon: Icon(Icons.notifications_active),
                      color: Colors.blue,
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: Text("OK"),
                        ),
                      ],
                  );
                  }
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.account_circle,color: Colors.blue,),
              title: Text("ListTile avec leading icon et trailing icon"),
              subtitle: Text("This is a ListTile with leading icon and trailing icon"), 
              trailing: Icon(Icons.handshake),
              onTap: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return Alert(title: Text("Information"), 
                    content: Text("Vous avez clicker sur une liste title avec leading icon et trailing icon"), 
                    icon: Icon(Icons.notifications_active), 
                    color: Colors.blue, 
                    actions: [
                      TextButton(onPressed: (){
                        Navigator.of(context).pop();
                      }, 
                      child: Text("Ok"))
                    ]) ;
                  },
                );
              },
            ),
          ListTile(
            leading: Icon(Icons.money),
            tileColor: Colors.grey,
            title: Text("ListTile et trailing text"),
            subtitle: Text("ListsTile avec un trailing text"),
            trailing: Text("Trailing text"),
            onTap: (){
              showDialog(context: context, builder: (BuildContext context){
                return Alert(title: Text("Information"), 
                    content: Text("Vous avez clicker sur un ListeTile avec un trailing text"), 
                    icon: Icon(Icons.list),
                    actions: [
                      TextButton(onPressed: (){
                        Navigator.of(context).pop();
                      }, child: Text("Ok"))
                    ], color: Colors.transparent,);
              });
            },
          )
        ],
      ),
    );
  }
}