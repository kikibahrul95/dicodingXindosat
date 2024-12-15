import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:presensi_1/finger.dart';
import 'package:presensi_1/homepage.dart';
import 'package:presensi_1/loginpage.dart';
import 'package:presensi_1/profil.dart';

class Bottomnav extends StatefulWidget {
  const Bottomnav({super.key});

  @override
  State<Bottomnav> createState() => _BottomnavState();
}

class _BottomnavState extends State<Bottomnav> {
  List pages = [
    HomePage(),
    finger(),
    profil(),
  ];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      backgroundColor: Colors.red,
      bottomNavigationBar: CurvedNavigationBar(
        index: selectedIndex,
        items: <Widget>[
          Icon(Icons.home, size: 30),
          Icon(Icons.fingerprint, size: 30),
          Icon(Icons.person, size: 30),
        ],
        onTap: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
      ),
      body: pages[selectedIndex],
    );
  }
}
