import 'package:flutter/material.dart';

class CheckBox extends StatefulWidget {
  const CheckBox({super.key});

  @override
  State<CheckBox> createState() => _CheckBoxState();
}

class _CheckBoxState extends State<CheckBox> {
  bool ? isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Checkbox(
            tristate: true,
            value: isChecked, onChanged: ((bool ? value) {
            setState(() {
            isChecked = value;
            });
            })),

            CheckboxListTile(
              tristate: true,
              title: Text("List Checkbox"),
              value: isChecked, 
            onChanged: (( bool ? value) {
              setState(() {
                isChecked = value;
              });
            })
            )
        ],
      ),
    );
  }
}