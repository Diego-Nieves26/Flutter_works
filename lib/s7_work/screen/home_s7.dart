import 'package:flutter/material.dart';
import 'package:works_certus/s7_work/screen/profile.dart';

class S7Screen extends StatelessWidget {
  const S7Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            width: double.infinity,
            height: 550,
            child: Image.network(
              'https://cdn.pixabay.com/photo/2020/07/24/03/12/gengar-5432819__340.png',
              fit: BoxFit.fill,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Explora el mundo pokemon",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w900,
                      color: Color.fromRGBO(139, 140, 142, 1)),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Conoce tu pokemon preferido, lee sobre el, y empieza a armar tu equipo pokemon",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Color.fromRGBO(180, 180, 190, 1)),
                ),
                const SizedBox(
                  height: 40,
                ),
                MaterialButton(
                  height: 60,
                  minWidth: 200,
                  color: const Color.fromRGBO(108, 91, 155, 1),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: const Text(
                    "EMPEZAR",
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
                            builder: (context) => const ProfileScreen()));
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
