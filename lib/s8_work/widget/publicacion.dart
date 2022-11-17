import 'package:flutter/material.dart';

class PublicacionWidget extends StatelessWidget {
  final String? img;
  final String? username;
  final String? comment;
  final String? music;
  final String? perfil;

  const PublicacionWidget({super.key, this.img, this.username, this.comment, this.music, this.perfil});
  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        Image.network(fit: BoxFit.fill, width: double.infinity, '$img'),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 27, 27, 27),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: Row(
                        children: const [
                          Icon(Icons.repeat, size: 15),
                          Text(
                            " Probar remix",
                            style: TextStyle(fontSize: 10),
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Container(
                        height: 35,
                        width: 30,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          image:  DecorationImage(
                            image: NetworkImage(
                              '$perfil',
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        '$username',
                        style: TextStyle(fontSize: 18),
                      ),
                      const Icon(
                        Icons.verified,
                        color: Colors.lightBlue,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      MaterialButton(
                        height: 35,
                        minWidth: 80,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                            side: const BorderSide(color: Colors.white)),
                        child: const Text(
                          "Seguir",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                          ),
                        ),
                        onPressed: () {},
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text('$comment'),
                  const SizedBox(
                    height: 20,
                  ),
                  Text('$music')
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Column(
                    children: const [Icon(Icons.favorite_border), Text("160")],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Column(
                    children: const [
                      Icon(Icons.mode_comment_outlined),
                      Text("160")
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Icon(Icons.reply_sharp),
                  const SizedBox(
                    height: 20,
                  ),
                  const Icon(Icons.control_point_sharp),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      image: const DecorationImage(
                        image: NetworkImage(
                          "https://upload.wikimedia.org/wikipedia/commons/4/4d/Bad_Bunny_-_Las_Que_No_Iban_a_Salir.png",
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
