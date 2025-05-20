import 'package:flutter/material.dart';

class StateWidget extends StatefulWidget {
  const StateWidget({super.key});

  @override
  State<StateWidget> createState() => _StateWidgetState();
}

class _StateWidgetState extends State<StateWidget> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Flutter Mapp"),
          centerTitle: true,
        ),
        body: currentIndex == 0 // Si currentIndex est égale à 0
        ?Center( // alors center 1
          child: Text("1"),
        )
        : Center( // Sinon alors center 2
          child: Text("2"),
        ),
        bottomNavigationBar: NavigationBar(
          destinations: [
            NavigationDestination(
                icon: Icon(Icons.home),
                label: "Home"),
            NavigationDestination(
              icon: Icon(Icons.person),
              label: "Profile",
            ),
            NavigationDestination(
              icon: Icon(Icons.message),
              label: "Message",
            ),
            NavigationDestination(
              icon: Icon(Icons.account_balance),
              label: "Messages",
            )
          ],
          onDestinationSelected: (int value){
            setState(() {
              currentIndex == value;
            });
          },
          selectedIndex: 1,
        ),
    );
  }
}


/*1. StatelessWidget 🏗️
C'est un widget immuable, ce qui signifie qu'il ne peut pas changer après avoir été construit. Si un StatelessWidget est affiché, il ne peut pas modifier son état interne ou être mis à jour dynamiquement.
- 🔹 Idéal pour les interfaces fixes (boutons statiques, icônes, textes qui ne changent pas).
- 🔹 Lorsque Flutter doit redessiner un StatelessWidget, il recrée entièrement l'objet du widget.
- 🔹 Pas besoin de gérer le cycle de vie ou les changements internes.
Exemple :
class MyStatelessWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text("Je suis un StatelessWidget !");
  }
}



2. StatefulWidget 🔄
Contrairement à StatelessWidget, un StatefulWidget peut changer son état au cours du temps. Il est utilisé pour des interfaces interactives qui peuvent être mises à jour dynamiquement.
- 🔹 Possède une classe State associée qui gère les modifications internes.
- 🔹 Permet de mettre à jour l'interface utilisateur en appelant setState.
- 🔹 Idéal pour des composants dynamiques comme les compteurs, les formulaires ou les animations.
Exemple :
class MyStatefulWidget extends StatefulWidget {
  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int counter = 0;

  void increment() {
    setState(() {
      counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("Compteur : $counter"),
        ElevatedButton(onPressed: increment, child: Text("Ajouter 1")),
      ],
    );
  }
}



3. setState 🔄
setState est une méthode utilisée dans un StatefulWidget pour informer Flutter que l'état interne du widget a changé et que l'interface utilisateur doit être redessinée.
- 🔹 setState ne redessine pas tout le widget, seulement la partie affectée.
- 🔹 Il rafraîchit uniquement les éléments qui ont été modifiés.
- 🔹 Essentiel pour gérer des mises à jour en temps réel.
💡 En bref :
✔ StatelessWidget ➝ Ne change jamais après son initialisation.
✔ StatefulWidget ➝ Peut modifier son état via setState.
✔ setState ➝ Permet de redessiner une partie d'un StatefulWidget.
Si tu veux plus d'explications ou un exemple spécifique, n'hésite pas ! 🚀
*/