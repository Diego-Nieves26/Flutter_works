import 'package:flutter/material.dart';
import 'package:works_certus/s8_work/screen/s8Home.dart';

class S8Home extends StatefulWidget {
  const S8Home({super.key});

  @override
  State<S8Home> createState() => _S8HomeState();
}

class _S8HomeState extends State<S8Home> {
  int selectedIndex = 0;

  static const List<Widget> _widgetsOptions = <Widget>[S8HomeScreen()];

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
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: ""),
          BottomNavigationBarItem(
              icon: Icon(Icons.video_collection_outlined), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.card_travel), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.person_outlined), label: "")
        ],
        currentIndex: selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
