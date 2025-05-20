import 'package:flutter/material.dart';
import 'package:flutter_app/data/notifiers.dart';
import 'package:flutter_app/views/pages/widget_tree.dart';
import 'package:flutter_app/views/widgets/navbar_widget.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatefulWidget {
   MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int currentIndex = 0;
  
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(valueListenable: selectedPageNotifier, 
    builder: (context,valueNotifier,child){
      return ValueListenableBuilder(valueListenable: isDarkModNotifier, 
      builder: ((context, isDarkMode, child) {
        return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal,
            brightness: isDarkMode ? Brightness.dark : Brightness.light)
      ),
      home: WidgetTree() ,
    );
      })) ;
    }
    );
  }
}

