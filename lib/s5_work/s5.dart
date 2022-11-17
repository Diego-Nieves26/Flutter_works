import 'package:flutter/material.dart';

class S5Widget extends StatelessWidget {
  const S5Widget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 146, 22, 13),
        title: const Text('Sesion 5'),
        centerTitle: true,
      ),
      body: Row(
        children: [
          Expanded(
            child: Container(
                height: double.infinity,
                color: const Color.fromARGB(255, 146, 22, 13),
                child: Center(
                  child: Column(mainAxisAlignment: MainAxisAlignment.center,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        const Text(
                          "EDAD: 18",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ]),
                )),
          ),
          Expanded(
            flex: 2,
            child: Container(
                height: double.infinity,
                color: const Color.fromARGB(255, 24, 22, 22),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Image.network(
                          "https://avatars.githubusercontent.com/u/107327145?v=4",width: 150, ),
                      const SizedBox(
                        height: 50,
                      ),
                      const Text(
                        "Diego Armando",
                        style: TextStyle(color: Colors.white),
                      ),
                      const Text(
                        "Nieves de la Cruz",
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                )),
          )
        ],
      ),
    );
  }
}
