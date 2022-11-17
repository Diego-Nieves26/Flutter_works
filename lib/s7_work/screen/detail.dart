import 'package:flutter/material.dart';

class DetailScreen extends StatefulWidget {
  final pokeDetail;

  const DetailScreen({super.key, required this.pokeDetail});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Container(
            width: double.infinity,
            height: 370,
            decoration: BoxDecoration(
                color: const Color.fromRGBO(108, 91, 155, 1),
                borderRadius: BorderRadius.circular(20)),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 5),
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            IconButton(
                              icon: const Icon(
                                Icons.arrow_back,
                                color: Colors.white,
                                size: 30,
                              ),
                              onPressed: () {
                                Navigator.pop(context);
                              },
                            ),
                          ],
                        ),
                      ),
                      IconButton(
                        icon: const Icon(
                          Icons.add,
                          color: Colors.white,
                          size: 30,
                        ),
                        onPressed: () {},
                      )
                    ],
                  ),
                  Expanded(
                    child: Container(
                      width: 200,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(
                            widget.pokeDetail['img'],
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Row(
                children: [
                  const Text("Pokemon tipo: "),
                  Text(widget.pokeDetail['type'][0])
                ],
              ),
              Row(
                children: [
                  Text(
                    widget.pokeDetail['name'],
                    style: const TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w900,
                        color: Color.fromRGBO(139, 140, 142, 1)),
                  )
                ],
              ),
              Row(
                children: [
                  const Icon(
                    Icons.numbers,
                    size: 30,
                    color: Color.fromRGBO(180, 180, 190, 1),
                  ),
                  Text(widget.pokeDetail['num'],
                      style: const TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w900,
                        color: Color.fromRGBO(180, 180, 190, 1),
                      ))
                ],
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
                child: Row(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text("Altura: ",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w900,
                                  color: Color.fromRGBO(180, 180, 190, 1),
                                )),
                            Text(widget.pokeDetail['height'],
                                style: const TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w900,
                                  color: Color.fromRGBO(180, 180, 190, 1),
                                )),
                          ],
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text("Peso: ",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w900,
                                  color: Color.fromRGBO(180, 180, 190, 1),
                                )),
                            Text(widget.pokeDetail['weight'],
                                style: const TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w900,
                                  color: Color.fromRGBO(180, 180, 190, 1),
                                ))
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 130,
              ),
              MaterialButton(
                height: 60,
                minWidth: 230,
                color: const Color.fromRGBO(108, 91, 155, 1),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: const Text(
                  "Agregalo a tu equipo",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                onPressed: () {},
              ),
            ],
          ),
        )
      ]),
    );
  }
}
