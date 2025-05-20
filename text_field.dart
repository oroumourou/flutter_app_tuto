import 'package:flutter/material.dart';

class Text_Field extends StatefulWidget {
  const Text_Field ({super.key});

  @override
  State<TextField > createState() => _TextFieldState();
}

class _TextFieldState extends State<TextField > {
  TextEditingController controller = TextEditingController();
  // Le texteditingcontroller permet de récupérer et d'afficher les entrer du textfield dans un autre text
  // à l'aide du controller
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          TextField(
            // inscription et definition du controller
            controller: controller,
            decoration: InputDecoration(
              border: OutlineInputBorder()
            ),
            onEditingComplete: () { // onEditingComplete permet d'editer les entrer du textfield sans rafraîchissement de la page
              setState(() {
                
              });
            },
          ),
          Text(
            controller.text, // appelation du controller
            style: TextStyle(color: Colors.white),)
        ],
      ),
    );
  }
}

// il serait peut être possible de partager les entrer du textfield avec 
// d'autre fichier pa l'utilisation de
ValueNotifier <String> editing_text = ValueNotifier("Editing textfield");

ValueListenableBuilder()
