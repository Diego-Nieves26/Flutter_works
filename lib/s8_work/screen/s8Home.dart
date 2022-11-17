import 'package:flutter/material.dart';
import '../widget/publicacion.dart';

class S8HomeScreen extends StatelessWidget {
  const S8HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController();
    final List<dynamic> data = [
      {
        "img":
            "https://ep00.epimg.net/elpais/imagenes/2014/11/28/album/1417210275_213796_1417212692_album_normal.jpg",
        "username": "El chavo",
        "music": "Yo perreo sola",
        "comment": "Aca de chill en mi jato",
        "perfil": "https://i.pinimg.com/280x280_RS/c3/73/f7/c373f7270ad4c748a2f453778bda6ce5.jpg"
      },
      {
        "img":
            "https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fstatic.onecms.io%2Fwp-content%2Fuploads%2Fsites%2F21%2F2018%2F11%2Fkikonuevodia1-1.jpg",
        "username": "Kiko",
        "music": "Neverita",
        "comment": "Mi pelota nuevecita pess 😇",
        "perfil": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQqMlhyFMWdgL0Y60M1945KXSCoGAIBXHvNH7QCGl9xaVpVRLLQozaGlSWpANubbG08nj8&usqp=CAU"
      },
      {
        "img":
            "https://s.yimg.com/ny/api/res/1.2/t0Kc_NJFS5zPoOJmXbQl9g--/YXBwaWQ9aGlnaGxhbmRlcjt3PTY0MDtoPTk2MA--/https://s.yimg.com/os/es-ES/News/mediosymedia.com/mediosymedia-ultimo-show-de-la-chilindrina_30042016_22.jpg",
        "username": "La chili",
        "music": "Con tu mujer",
        "comment": "Ayer don barriga casi me atropella 🤕",
        "perfil": "https://www.infobae.com/new-resizer/JxMkECBemgNM1EKsDvPkp-NjAek=/1200x900/filters:format(webp):quality(85)//cloudfront-us-east-1.images.arcpublishing.com/infobae/4SXMZOF2YZCZTJSUMCTBWHJNPU.jpg"
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
            itemBuilder: (context, index) {
              final datos = data[index];
              return PublicacionWidget(
                img: datos['img'],
                username: datos['username'],
                comment: datos['comment'],
                music: datos['music'],
                perfil: datos['perfil']
              );
            },
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  "Reels",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
                ),
                Icon(Icons.camera_alt_outlined)
              ],
            ),
          ),
        ],
      )),
    );
  }
}
