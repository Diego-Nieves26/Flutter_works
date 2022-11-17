import 'package:flutter/material.dart';

import 'future.dart';
import 'home.dart';

class LoginWidget extends StatelessWidget {
  const LoginWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(25, 25, 25, 1),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(
                height: 50,
              ),
              Center(
                child: SizedBox(
                  width: 60,
                  child: Image.asset("assets/xbox-icon-white.webp"),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                  alignment: Alignment.centerRight,
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 19, 18, 18),
                      border: Border.all(color: Colors.grey, width: .1)),
                  width: double.infinity,
                  child: Column(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            width: 100,
                            child: Image.asset("assets/microsoft_logo.png"),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          const Text(
                            "Iniciar sesión",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          const Text(
                            "Continuar en Xbox",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const TextField(
                        style: TextStyle(color: Colors.grey),
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                            hintText: "Correo electrónico, teléfono o Skype",
                            hintStyle:
                                TextStyle(color: Colors.grey, fontSize: 15),
                            disabledBorder: InputBorder.none,
                            focusedBorder: UnderlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.grey, width: .5),
                            ),
                            errorBorder: InputBorder.none,
                            enabledBorder: UnderlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.blue, width: .5),
                            )),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          const Text(
                            "¿No tiene una cuenta?",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          const Text(
                            " Cree una",
                            style: TextStyle(
                              color: Colors.blue,
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          MaterialButton(
                            height: 30,
                            color: const Color.fromARGB(255, 0, 0, 0),
                            child: const Text(
                              "Atrás",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const HomeWidget()));
                            },
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          MaterialButton(
                            height: 30,
                            color: Colors.blue,
                            child: const Text(
                              "Siguiente",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const FutureWidget()));
                            },
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                    ],
                  )),
              const SizedBox(
                height: 20,
              ),
              Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 19, 18, 18),
                      border: Border.all(color: Colors.grey, width: .1)),
                  width: double.infinity,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      const Icon(Icons.vpn_key_outlined, color: Colors.white),
                      const SizedBox(
                        width: 20,
                      ),
                      const Text("Opciones de inicio de sesión",
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white)),
                    ],
                  )),
            ]),
      ),
    );
  }
}
