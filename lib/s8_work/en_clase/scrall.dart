import 'package:flutter/material.dart';
import 'package:works_certus/s8_work/en_clase/amigospage.dart';
import 'package:works_certus/s8_work/en_clase/bandejapage.dart';
import 'package:works_certus/s8_work/en_clase/homepage.dart';

class ScrollSreen extends StatefulWidget {
  const ScrollSreen({super.key});

  @override
  State<ScrollSreen> createState() => _ScrollSreenState();
}

class _ScrollSreenState extends State<ScrollSreen> {
  int selectedIndex = 0;

  static const List<Widget> _widgetsOptions = <Widget>[
    HomePage(),
    AmigosScreen(),
    Text("data"),
    BandejaScreen()
  ];

  void _onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetsOptions.elementAt(selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.black,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.white,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Inicio"),
          BottomNavigationBarItem(
              icon: Icon(Icons.people_outline), label: "Amigos"),
          BottomNavigationBarItem(icon: Icon(Icons.add), label: ""),
          BottomNavigationBarItem(
              icon: Icon(Icons.message_outlined), label: "Bandeja de entrada"),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_outlined), label: "Perfil")
        ],
        currentIndex: selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
