import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

class S6Screen extends StatefulWidget {
  const S6Screen({super.key});

  @override
  State<S6Screen> createState() => _S6ScreenState();
}

class _S6ScreenState extends State<S6Screen> {
  int number = 0;

  // ignore: non_constant_identifier_names
  void PushNumber() {
    setState(() {
      number++;
    });
  }

  // ignore: non_constant_identifier_names
  void PopNumber() {
    setState(() {
      number--;
    });
  }

  // ignore: non_constant_identifier_names
  void ResetNumber() {
    setState(() {
      number = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromRGBO(19, 19, 19, 1),
        appBar: AppBar(
          title: Text("Sesion 6", style: GoogleFonts.dancingScript()),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network(
                "https://avatars.githubusercontent.com/u/107327145?v=4",
                width: 150,
              ),
              const SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  const Text(
                    "Nombres: ",
                    style: TextStyle(color: Colors.white),
                  ),
                  const Text(
                    " Diego Armando",
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  const Text(
                    "Apellidos: ",
                    style: TextStyle(color: Colors.white),
                  ),
                  const Text(
                    " Nieves de la Cruz",
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Contador",
                style: TextStyle(color: Colors.white),
              ),
              Text(
                '$number',
                style: const TextStyle(color: Colors.white, fontSize: 30),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  MaterialButton(
                    height: 50,
                    minWidth: 40,
                    color: const Color.fromARGB(255, 9, 165, 74),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    child: const Icon(Icons.add_circle_outline),
                    onPressed: () => PushNumber(),
                  ),
                  MaterialButton(
                    height: 50,
                    minWidth: 40,
                    color: const Color.fromARGB(255, 9, 165, 74),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    child: const Icon(Icons.restart_alt_outlined),
                    onPressed: () => ResetNumber(),
                  ),
                  MaterialButton(
                    height: 50,
                    minWidth: 40,
                    color: const Color.fromARGB(255, 9, 165, 74),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    child: const Icon(Icons.remove_circle_outline),
                    onPressed: () => PopNumber(),
                  ),
                ],
              )
            ],
          ),
        ));
  }
}
