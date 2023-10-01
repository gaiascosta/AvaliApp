import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:projeto/ui/dados.dart';
import 'package:projeto/ui/perfil.dart';
import 'package:projeto/ui/perguntas.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  final tabs = [
    Perguntas(),
    Dados(),
    Perfil()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabs[_currentIndex],
      bottomNavigationBar: Container(
        color: Colors.black,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
          child: GNav(
            selectedIndex: _currentIndex,
            backgroundColor: Colors.black,
            color: Colors.white,
            activeColor: Colors.white,
            tabBackgroundColor: Colors.grey.shade800,
            gap: 8,
            padding: const EdgeInsets.all(16),
            tabs: const [
              GButton(icon: Icons.home,
                  text: 'Perguntas'),
              GButton(icon: Icons.bar_chart,
                  text: 'Dados'),
              GButton(icon: Icons.person,
                  text: 'Perfil'),
            ],
            onTabChange: (index){
              setState(() {
                _currentIndex = index;
              });
            },
          ),
        ),
      )
    );
  }
}

