import 'package:flutter/material.dart';

class AmigosScreen extends StatelessWidget {
  const AmigosScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Table(
        border: TableBorder.all(color: Colors.white),
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          const TableRow(children: [
            Text("tema1"),
            Text("tema1"),
            Text("tema1"),
            Text("tema1"),
          ]),
          const TableRow(children: [
            Text("tema1"),
            Text("tema1"),
            Text("tema1"),
            Text("tema1"),
          ]),
          const TableRow(children: [
            Text("tema1"),
            Text("tema1"),
            Text("tema1"),
            Text("tema1"),
          ]),
          const TableRow(children: [
            Text("tema1"),
            Text("tema1"),
            Text("tema1"),
            Text("tema1"),
          ]),
        ],
      ),
    );
  }
}
