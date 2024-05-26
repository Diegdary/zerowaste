import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:gestion_final/screens/MainContent.dart';
import 'package:gestion_final/screens/Scan.dart';
import 'package:gestion_final/screens/profile.dart';
import 'package:gestion_final/screens/support.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentIndex = 0;
  final screens = [
    MainContent(),
    Suport(),
    Scancam(),
    ProfScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Color(0xff101b42),
          currentIndex: currentIndex,
          type: BottomNavigationBarType.fixed,
          unselectedItemColor: Color(0xFFFFFFFF),
          selectedItemColor: Color(0xFF3bb5dc),
          onTap: (index) => setState(() {
                currentIndex = index;
              }),
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: "Soporte",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.camera_alt),
              label: "Escanear",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.support_agent),
              label: "Perfil",
            ),
          ]),
    );
  }
}
