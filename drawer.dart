import 'package:flutter/material.dart';

class Drawer extends StatelessWidget {
  const Drawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Column(
        children: [
          // L'on pourrais aussi mettre le drawer dans un safearea pour que le drawer ne prenne pas toute la longueur du téléphone
          //Ainsi avec le safearea la longueur du drawer serait reduite et avec une bordure
          // Le drawer header représente le titre ou l'en-tête du drawer
          // Les autres composates du drawer sont représenter avec les list-tile
          DrawerHeader(child: Text("Titre du drawer")),
          ListTile(
            title: Text("Home"),
            subtitle: Text("Premier listtile"),
            leading: Icon(Icons.home),
          ),
          ListTile(
            title: Text("Message"),
            subtitle: Text("Second listtile"),
            leading: Icon(Icons.message),
          ),
          ListTile(
            title: Text("Account"),
            subtitle: Text("Troisième listtile"),
            leading: Icon(Icons.account_box),
          ),
          ListTile(
            title: Text("Settings"),
            subtitle: Text("Quatième listetile"),
            leading: Icon(Icons.settings),
            trailing: Icon(Icons.arrow_circle_right),
          )
        ],
      ),
      body: Center(
        child: Text("Page de drawer"),
      ),
    );
  }
}