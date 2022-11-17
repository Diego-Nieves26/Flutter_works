import 'package:flutter/material.dart';
import 'package:works_certus/s8_work/en_clase/tiktok_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController();
    final List<dynamic> data = [
      {
        "img":
            "https://w0.peakpx.com/wallpaper/798/1008/HD-wallpaper-naruto-equipo-7-naruto-equipo-7.jpg",
        "username": "Purba 1",
      },
      {
        "img":
            "https://w0.peakpx.com/wallpaper/649/553/HD-wallpaper-naruto-anime-anime-art-naruto-naruto-art-naruto-fan-naruto-mobile-naruto.jpg",
        "username": "Purba 2",
      },{
        "img":
            "https://www.xtrafondos.com/wallpapers/vertical/naruto-fortnite-8944.jpg",
        "username": "Purba 3",
      }
    ];
    return Scaffold(
      body: SafeArea(
          child: Stack(
        children: [
          PageView.builder(
            scrollDirection: Axis.vertical,
            itemCount: data.length,
            controller: controller,
            itemBuilder: (context, index){
              final datos = data[index];
              return TiktokWidget(
                img: datos['img'],
                username: datos['username'],
              );
            },
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(onPressed: () {}, icon: const Icon(Icons.live_tv)),
              SizedBox(
                width: 140,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text("Siguiendo"),
                      Text("Para ti"),
                    ]),
              ),
              IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
            ],
          )
        ],
      )),
    );
  }
}

