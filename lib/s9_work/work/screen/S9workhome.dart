import 'package:flutter/material.dart';
import 'package:works_certus/s9_work/work/preferences/preferences.dart';
import 'package:works_certus/s9_work/work/widget/index.dart';

class S9HomeWork extends StatefulWidget {
  const S9HomeWork({super.key});

  @override
  State<S9HomeWork> createState() => _S9HomeWorkState();
}

class _S9HomeWorkState extends State<S9HomeWork> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("S9 work"),
        centerTitle: true,
      ),
      drawer: const DrawerWidgetWork(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(children: [
          InputWidget(
            initialValue: Preferences.img,
            keyboardType: TextInputType.text,
            hintText: 'Imagen',
            prefixIcon: const Icon(Icons.photo),
            onChanged: (value) {
              Preferences.img = value;
              setState(() {});
            },
          ),
          InputWidget(
            initialValue: Preferences.nombre,
            keyboardType: TextInputType.name,
            hintText: 'Nombre',
            prefixIcon: const Icon(Icons.person),
            onChanged: (value) {
              Preferences.nombre = value;
              setState(() {});
            },
          ),
          InputWidget(
            initialValue: Preferences.apellido,
            keyboardType: TextInputType.name,
            hintText: 'Apellido',
            prefixIcon: const Icon(Icons.person),
            onChanged: (value) {
              Preferences.apellido = value;
              setState(() {});
            },
          ),
          InputWidget(
            initialValue: Preferences.gmail,
            keyboardType: TextInputType.emailAddress,
            hintText: 'Correo electronico',
            prefixIcon: const Icon(Icons.email),
            onChanged: (value) {
              Preferences.gmail = value;
              setState(() {});
            },
          ),
          InputWidget(
            initialValue: Preferences.telefono,
            keyboardType: TextInputType.phone,
            hintText: 'Telefono',
            prefixIcon: const Icon(Icons.phone),
            onChanged: (value) {
              Preferences.telefono = value;
              setState(() {});
            },
          ),
          InputWidget(
            initialValue: Preferences.twitter,
            keyboardType: TextInputType.text,
            hintText: 'Twitter',
            prefixIcon: const Icon(Icons.near_me_outlined),
            onChanged: (value) {
              Preferences.twitter = value;
              setState(() {});
            },
          ),
          InputWidget(
            initialValue: Preferences.behance,
            keyboardType: TextInputType.text,
            hintText: 'Behance',
            prefixIcon: const Icon(Icons.near_me_outlined),
            onChanged: (value) {
              Preferences.behance = value;
              setState(() {});
            },
          ),
          InputWidget(
            initialValue: Preferences.facebook,
            keyboardType: TextInputType.text,
            hintText: 'Facebook',
            prefixIcon: const Icon(Icons.facebook),
            onChanged: (value) {
              Preferences.facebook = value;
              setState(() {});
            },
          ),
        ]),
      ),
    );
  }
}
