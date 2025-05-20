import 'package:flutter/material.dart';

class ThemeBlancNoir extends StatefulWidget {
  const ThemeBlancNoir({super.key});

  @override
  State<ThemeBlancNoir> createState() => _ThemeBlancNoirState();
}

class _ThemeBlancNoirState extends State<ThemeBlancNoir> {
  int currentIndex = 0;
  var themes = "Background Blanc";
  var color_back = Brightness.dark;
  var icon = Icons.brightness_3_sharp;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal,
            brightness: color_back)
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Flutter Mapp"),
          centerTitle: true,
          leading: IconButton(onPressed: (){
            setState(() {
              if (color_back == Brightness.light){
              color_back = Brightness.dark;
              icon = Icons.brightness_3;
              themes = "Background Noir";
              }

              else{
                color_back = Brightness.light;
                icon = Icons.sunny;
                themes = "Background Blanc";
              }
            });
          }, icon: Icon(icon)),
        ),
        body: Column(
          children: [
            Text(themes),
            currentIndex == 0 ? Center(child: Text("Index 0"),) : Center(child: Text("Index 1"),) ,

          ],
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
          ],
          onDestinationSelected: (int value){
            setState(() {
              currentIndex = value;
            });},
          selectedIndex: currentIndex,
        ),
      ),
    );
  }
}