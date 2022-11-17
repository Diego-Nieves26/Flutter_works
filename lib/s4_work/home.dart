import 'dart:math';

import 'package:flutter/material.dart';

import 'logn.dart';

class HomeWidget extends StatelessWidget {
  const HomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Scaffold(
      backgroundColor: const Color.fromRGBO(19, 19, 19, 1),
      body: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: SizedBox(
                width: 100,
                child: Image.asset("assets/xbox_logo.png"),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Center(
              child: SizedBox(
                width: 300,
                child: Image.asset("assets/img_home.jpeg"),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            // ignore: prefer_const_constructors
            Center(
              child: const SizedBox(
                width: 220,
                child: Text(
                  "Administra tu consola y conectate con tus amigos en un solo lugar",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            const SizedBox(
              height: 160,
            ),
            MaterialButton(
              height: 40,
              minWidth: double.infinity,
              color: const Color.fromARGB(255, 9, 165, 74),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              child: const Text(
                "INICIAR SECION",
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
                        builder: (context) => const LoginWidget()));
              },
            ),
            MaterialButton(
              height: 40,
              minWidth: double.infinity,
              color: const Color.fromARGB(255, 45, 48, 46),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              child: const Text(
                "CONFIGURAR CONSOLA",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.w800,
                ),
              ),
              onPressed: () {},
            )
          ],
        ),
      ),
    );
  }
}
