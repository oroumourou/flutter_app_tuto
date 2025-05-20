import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/data/notifiers.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  TextEditingController controller = TextEditingController();
  bool isSwitched = false;
  bool? isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          TextField(
            controller: controller,
            decoration: InputDecoration(
              border: OutlineInputBorder()
            ),
            onEditingComplete: () {
              setState(() {
                
              });
            },
          ),
          Text(controller.text,style: TextStyle(color: Colors.white),),
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
            ),
            Switch(value: isSwitched, 
            onChanged: (bool value){
              isSwitched = value;
            }),
            SwitchListTile(value: isSwitched, 
            title: Text("Switch"),
            onChanged: (bool value) {
              setState(() {
                isSwitched = value;
              });
            })
        ],
      ),
    );
  }
}