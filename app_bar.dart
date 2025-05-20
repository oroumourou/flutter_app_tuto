import 'package:flutter/material.dart';

class AppBar extends StatelessWidget {
  AppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("Flutter Mapp"),
        centerTitle: false,
        leading: Icon(Icons.login),
        action:[
          Text("LogOut"),
          Icon(Icons.logout)
        ]
      ),
    );
  }
}
