
import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

class Alert extends StatelessWidget {
  final Widget title;
  final Widget content;
  final Icon icon;
  final Color color;
  final List<Widget> actions;

  const Alert({
    required this.title,
    required this.content,
    required this.icon,
    required this.color,
    required this.actions,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: title,
      content: content,
      icon: icon,
      iconColor: color,
      actions: actions,
    );
  }
}

  /*AlertDialog simple_alert = AlertDialog(
      title: Text("Simple Alert"),
      content: Text("This is a simple alert of a simple ListTile"),
      icon: Icon(Icons.notification_add),
      actions: [
        TextButton(
          onPressed: (){},
          child: Text("OK"),
        ),
      ],
    );
    AlertDialog alert1 = AlertDialog(
      title: Text("ListTile of Notification"),
      content: Text("This is a ListTile of Notification"),
      
      icon: Icon(Icons.notifications
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
    );*/