import 'package:flutter/material.dart';

//! BottomNavigationBar

class Pantallasiete extends StatefulWidget {
  const Pantallasiete({Key? key}) : super(key: key);

  @override
  State<Pantallasiete> createState() => _PantallasieteState();
}

class _PantallasieteState extends State<Pantallasiete> {
  int _currentIndex = 0;

  final List<Widget> body = const [
    Icon(Icons.home, size: 100),
    Icon(Icons.menu, size: 100),
    Icon(Icons.person, size: 100),
  ];

  final List<String> titles = [
    'Inicio',
    'Menú',
    'Perfil',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(titles[_currentIndex]),
        backgroundColor: Colors.indigo,
      ),
      body: Center(
        child: body[_currentIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (int newIndex) {
          setState(() {
            _currentIndex = newIndex;
          });
        },
        items: const [
          BottomNavigationBarItem(
            label: 'Home',
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: 'Menu',
            icon: Icon(Icons.menu),
          ),
          BottomNavigationBarItem(
            label: 'Profile',
            icon: Icon(Icons.person),
          )
        ],
      ),
    );
  }
}
