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
          currentIndex: currentIndex,
          type: BottomNavigationBarType.fixed,
          unselectedItemColor: Color(0xFF000000),
          selectedItemColor: Color(0xFF115d3b),
          onTap: (index) => setState(() {
                currentIndex = index;
              }),
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.message_outlined,
              ),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.noise_aware),
              label: "Soporte",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.people_alt_outlined),
              label: "Escanear",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.phone_outlined),
              label: "Perfil",
            ),
          ]),
    );
  }
}
