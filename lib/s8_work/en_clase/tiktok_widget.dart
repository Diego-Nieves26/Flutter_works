import 'package:flutter/material.dart';

class TiktokWidget extends StatelessWidget {
  final String? img;
  final String? username;

  const TiktokWidget({super.key, this.img, this.username});
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
                  Row(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Text(
                        '$username',
                        style: TextStyle(fontSize: 18),
                      ),
                      const Icon(
                        Icons.verified,
                        color: Colors.lightBlue,
                      ),
                    ],
                  ),
                  Text("#Humor #Naruto #Boruto")
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://yt3.ggpht.com/ytc/AMLnZu9tBVuzay5LAvsf-dQz4uHepY7NfnXARBbVXBeibg=s900-c-k-c0x00ffffff-no-rj"),
                  ),
                  Column(
                    children: const [Icon(Icons.favorite), Text("infinity")],
                  ),
                  Column(
                    children: const [Icon(Icons.comment), Text("100900")],
                  ),
                  Column(
                    children: const [Icon(Icons.bookmark), Text("1000000")],
                  ),
                  Column(
                    children: const [Icon(Icons.share), Text("10000")],
                  )
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
