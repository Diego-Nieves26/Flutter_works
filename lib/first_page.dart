import 'package:flutter/material.dart';
import 'package:works_certus/s7_work/screen/home_s7.dart';
import 'package:works_certus/s8_work/screen/s8_work.dart';

import 's4_work/home.dart';
import 's5_work/s5.dart';
import 's6_work/screen/s6.dart';

class FirstPageWidget extends StatelessWidget {
  const FirstPageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tareas asincronas"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            MaterialButton(
              height: 40,
              minWidth: double.infinity,
              color: const Color.fromARGB(255, 9, 165, 74),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              child: const Text(
                "Sesion 4",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.w800,
                ),
              ),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const HomeWidget()));
              },
            ),
            MaterialButton(
              height: 40,
              minWidth: double.infinity,
              color: const Color.fromARGB(255, 9, 165, 74),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              child: const Text(
                "Sesion 5",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.w800,
                ),
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const S5Widget()));
              },
            ),
            MaterialButton(
              height: 40,
              minWidth: double.infinity,
              color: const Color.fromARGB(255, 9, 165, 74),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              child: const Text(
                "Sesion 6",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.w800,
                ),
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const S6Screen()));
              },
            ),
            MaterialButton(
              height: 40,
              minWidth: double.infinity,
              color: const Color.fromARGB(255, 9, 165, 74),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              child: const Text(
                "Sesion 7",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.w800,
                ),
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const S7Screen()));
              },
            ),
            MaterialButton(
              height: 40,
              minWidth: double.infinity,
              color: const Color.fromARGB(255, 9, 165, 74),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              child: const Text(
                "Sesion 8",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.w800,
                ),
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const S8Home()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
