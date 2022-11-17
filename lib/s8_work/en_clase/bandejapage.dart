import 'package:flutter/material.dart';

class BandejaScreen extends StatelessWidget {
  const BandejaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<dynamic> products = [
      {
        "name": "Coca cola",
        "description": "Gaesosa de la buena",
        "price": "2.5",
      },
      {
        "name": "Inka cola",
        "description": "Gaesosa de la buena",
        "price": "2.5",
      },
      {
        "name": "Pepsi",
        "description": "Gaesosa de la buena",
        "price": "2.5",
      },
      {
        "name": "Kola real",
        "description": "Gaesosa de la buena",
        "price": "2.5",
      },
      {
        "name": "Sprite",
        "description": "Gaesosa de la buena",
        "price": "2.5",
      }
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text("Bandeja"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: DataTable(
            border: TableBorder.all(color: Colors.white),
            columns: const [
              DataColumn(label: Text("Name")),
              DataColumn(label: Text("Description")),
              DataColumn(label: Text("Price")),
            ],
            rows: products.map(
              (e) => DataRow(
                cells: [
                  DataCell(Text(e['name'])),
                  DataCell(Text(e['description'])),
                  DataCell(Text(e['price']))
                ],
              ),
            ).toList(),
          ),
        ),
      ),
    );
  }
}
