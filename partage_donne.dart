
/*

Pour pouvoir partager des donner entre diver fichier on peut:
  -crée un fichier où l'on va mettre:
      ValueNotifier <type_donnée> nom_donnée = ValueNotifier(valeur_donnée);
      ValueNotifier <type_donnée> nom_donnée = ValueNotifier(valeur_donnée);
  Cela permet de crée une donnée exploitable dans plusieurs fichier sans problème majeur
  Pour appeler la donnée crée ici il faut ecrire:
      ValueListenableBuilder(valueListenable: nom_donnée,
     builder: (context,surnom_donné,child){
      return Scaffold(
        appBar: AppBar(
          title: Text("Flutter Mapp"),
          centerTitle: true,
          actions: [
            IconButton(onPressed: (){
              isDarkModNotifier.value = !isDarkModNotifier.value;
            }, 
            icon: ValueListenableBuilder(
              valueListenable: isDarkModNotifier, 
              builder: (context, isDarkMode, child) {
              return Icon(
                isDarkMode ?  Icons.light_mode : Icons.dark_mode);
            })),
          ],
        ),

La donnée peut être appelé même dans un Icon
*/