// import 'package:flutter/material.dart';


import 'package:flutter/material.dart';

class Navbar extends StatelessWidget {
  const Navbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar:NavigationBar(
        height: 80,
        elevation: 0,
        selectedIndex:0 ,
        
        destinations: [
        NavigationDestination(icon: Icon(Icons.home_outlined), label: 'Home'),
        NavigationDestination(icon: Icon(Icons.person_outline), label: 'Profile')
      ],),
      ///body: Container(),
      
    );
}
}