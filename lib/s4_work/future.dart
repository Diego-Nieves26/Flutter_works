import 'package:flutter/material.dart';

import 'logn.dart';

class FutureWidget extends StatelessWidget {
  const FutureWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(25, 25, 25, 1),
      body: Padding(
        padding: const EdgeInsets.all(60.0),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          SizedBox(
            width: 700,
            child: Image.asset("assets/espera.gif"),
          ),
          const SizedBox(
            height: 70,
          ),
          MaterialButton(
            height: 40,
            minWidth: double.infinity,
            color: const Color.fromARGB(255, 9, 165, 74),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            child: const Text(
              "Regresar",
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
                fontWeight: FontWeight.w800,
              ),
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ]),
      ),
    );
  }
}
