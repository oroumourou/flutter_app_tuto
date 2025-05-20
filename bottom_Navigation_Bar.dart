import 'package:flutter/material.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: currentIndex == 0 ? Center(child: Text("Index $currentIndex"),) : Center(child: Text("Index $currentIndex"),)  ,
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
              currentIndex = value;
            });
                    },
          selectedIndex: currentIndex,
        ),
    );
  }
}
