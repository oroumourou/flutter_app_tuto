import 'package:flutter/material.dart';

class Wrap extends StatelessWidget {
   Wrap({super.key, required List children});
  var txt1;
  var txt2;
  var txt3;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Wrap(
        children:[
          Text(txt1),
          Text(txt2),
          Text(txt3)
        ]
      ),
    );
  }
}
