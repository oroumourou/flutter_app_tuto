import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_app/data/notifiers.dart';
import 'package:flutter_app/main.dart';
import 'package:flutter_app/views/pages/home_page.dart';
import 'package:flutter_app/views/pages/profile_page.dart';
import 'package:flutter_app/views/widgets/navbar_widget.dart';

class WidgetTree extends StatelessWidget {
  WidgetTree({super.key});
  var currentIndex = 0;
  List<Widget> pages = [
    HomePage(),
    ProfilePage(),
  ];

  List <bool> isDark = [
    true,
    false,
  ];

  List <Widget> icone = [
    Icon(Icons.light_mode),
    Icon(Icons.brightness_2_rounded)
  ];

  List <Brightness> couleur = [
    Brightness.dark,
    Brightness.light,
  ];

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(valueListenable: isDarkModNotifier,
     builder: (context,valueNotifier,child){
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
        body: ValueListenableBuilder(valueListenable: selectedPageNotifier, 
        builder: ((context, selectedPage, child) {
          return pages.elementAt(selectedPage);
        })),
        bottomNavigationBar: NavbarWidget(),
      );
     });
  }
}