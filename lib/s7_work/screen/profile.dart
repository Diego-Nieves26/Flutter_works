import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

import 'package:http/http.dart' as http;

import 'detail.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  List<dynamic> pokemons = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fetchPokemons();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 5),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: Row(
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      image: const DecorationImage(
                        image: NetworkImage(
                          "https://cdn-icons-png.flaticon.com/512/362/362003.png",
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Bienvenido',
                          style: TextStyle(fontSize: 10),
                        ),
                        Text(
                          'Entrenador ✌',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 30,
                    child: Image.network(
                        "https://images.wikidexcdn.net/mwuploads/wikidex/1/13/latest/20170713001621/Sello_prueba_de_Akala.png"),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Un verdadero entrenador',
                          style: TextStyle(
                              fontSize: 20,
                              color: Color.fromRGBO(139, 140, 142, 1)),
                        ),
                        Text(
                          'NUNCA SE RINDE',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Color.fromRGBO(139, 140, 142, 1)),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 20),
              child: TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                        width: 2, color: Color.fromARGB(255, 238, 238, 238)),
                    borderRadius: BorderRadius.circular(40),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                        width: 2, color: Color.fromARGB(255, 238, 238, 238)),
                    borderRadius: BorderRadius.circular(40),
                  ),
                  filled: true,
                  fillColor: const Color.fromARGB(255, 238, 238, 238),
                  hintText: 'Buscar pokemon',
                  hintStyle: const TextStyle(color: Colors.grey),
                  suffixIcon: const Icon(
                    Icons.search,
                  ),
                  contentPadding: const EdgeInsets.all(10),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Seeleccione una categoria',
                          style: TextStyle(),
                        ),
                      ],
                    ),
                  ),
                  const Text(
                    "Ver todas",
                    style: TextStyle(
                        color: Color.fromRGBO(108, 91, 155, 1),
                        fontWeight: FontWeight.w600),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(2.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton(
                    icon: Row(
                      children: [
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            image: const DecorationImage(
                              image: NetworkImage(
                                "https://cdn.pixabay.com/photo/2018/05/20/01/40/pokemon-3414807_640.png",
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const Text(
                          'Fuego',
                          style: TextStyle(
                              color: Color.fromRGBO(139, 140, 142, 1)),
                        )
                      ],
                    ),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: Row(
                      children: [
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            image: const DecorationImage(
                              image: NetworkImage(
                                "https://cdn.pixabay.com/photo/2018/05/21/13/06/pokemon-3418257_1280.png",
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const Text(
                          'Agua',
                          style: TextStyle(
                              color: Color.fromRGBO(139, 140, 142, 1)),
                        )
                      ],
                    ),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: Row(
                      children: [
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            image: const DecorationImage(
                              image: NetworkImage(
                                "https://cdn.pixabay.com/photo/2018/05/20/01/41/pokemon-3414810_1280.png",
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const Text(
                          'Planta',
                          style: TextStyle(
                              color: Color.fromRGBO(139, 140, 142, 1)),
                        )
                      ],
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Pokemones favoritos',
                          style: TextStyle(),
                        ),
                      ],
                    ),
                  ),
                  const Text(
                    "Explorar",
                    style: TextStyle(
                        color: Color.fromRGBO(108, 91, 155, 1),
                        fontWeight: FontWeight.w600),
                  )
                ],
              ),
            ),
            CarouselSlider(
              options: CarouselOptions(
                height: 270,
                aspectRatio: 16 / 16,
                viewportFraction: 0.7,
                initialPage: 0,
                enableInfiniteScroll: true,
                reverse: false,
                autoPlay: true,
                autoPlayInterval: const Duration(seconds: 100),
                autoPlayAnimationDuration: const Duration(milliseconds: 1000),
                autoPlayCurve: Curves.fastOutSlowIn,
                enlargeCenterPage: true,
                onPageChanged: (index, reason) => {},
                scrollDirection: Axis.horizontal,
              ),
              items: pokemons.map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return InkWell(
                      child: Container(
                          width: MediaQuery.of(context).size.width,
                          margin: const EdgeInsets.symmetric(horizontal: 5.0),
                          decoration: BoxDecoration(
                              color: const Color.fromRGBO(108, 91, 155, 1),
                              borderRadius: BorderRadius.circular(20)),
                          padding: const EdgeInsets.symmetric(
                              vertical: 20, horizontal: 30),
                          child: Column(
                            children: [
                              Text(
                                i['name'],
                                style: const TextStyle(
                                    fontSize: 20.0, color: Colors.white),
                              ),
                              Image.network(i['img']),
                              Text(i['num'],
                                  style: const TextStyle(
                                      fontWeight: FontWeight.w900,
                                      fontSize: 30,
                                      color: Colors.white))
                            ],
                          )),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    DetailScreen(pokeDetail: i)));
                      },
                    );
                  },
                );
              }).toList(),
            )
          ],
        ),
      ),
      // ignore: prefer_const_literals_to_create_immutables
      bottomNavigationBar: BottomNavigationBar(items: [
        const BottomNavigationBarItem(icon: Icon(Icons.home), label: "Inicio"),
        const BottomNavigationBarItem(icon: Icon(Icons.star), label: "Premium"),
        const BottomNavigationBarItem(
            icon: Icon(Icons.person), label: "Perfil"),
      ]),
    );
  }

  void fetchPokemons() async {
    const url =
        "https://raw.githubusercontent.com/Biuni/PokemonGO-Pokedex/master/pokedex.json";
    final uri = Uri.parse(url);
    final res = await http.get(uri);
    final body = res.body;
    final data = jsonDecode(body);
    final links = data['pokemon'];

    setState(() {
      pokemons = links;
    });
  }
}
