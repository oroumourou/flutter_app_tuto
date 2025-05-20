import 'package:flutter/material.dart';

class FloatingActionButton extends StatelessWidget {
  const FloatingActionButton({super.key, required Null Function() onPressed, required Icon child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
          FloatingActionButton(onPressed: (){} ,
          child: Icon(Icons.home),
          ),
          FloatingActionButton(onPressed: (){},
          child: Icon(Icons.add),)
          ],
        ),
      ) ,
      floatingActionButton: FloatingActionButton(onPressed: (){},
      child: Icon(Icons.add)
      ),
      //Pour avoir deux bouttons flottant l'on peut les mettres dans un row ou un column commz suit

    );
  }
}
