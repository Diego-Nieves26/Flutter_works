import 'package:flutter/material.dart';
import 'package:works_certus/s9_work/work/preferences/preferences.dart';
import 'package:works_certus/s9_work/work/widget/index.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text('Profile'),
        centerTitle: true,
      ),
      extendBodyBehindAppBar: true,
      drawer: const DrawerWidgetWork(),
      body: Center(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 300,
              decoration: const BoxDecoration(
                gradient: RadialGradient(
                  colors: [
                    Color.fromARGB(255, 159, 189, 255),
                    Color(0xff6ab9f7)
                  ],
                  center: Alignment.bottomLeft,
                  radius: .2,
                  tileMode: TileMode.mirror,
                ),
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(30),
                  bottomLeft: Radius.circular(30),
                ),
              ),
              child: Column(
                children: [
                  (Preferences.img == '')
                      ? const Padding(
                          padding: EdgeInsets.only(top: 90.0, bottom: 10.0),
                          child: CircleAvatar(
                            radius: 60,
                            child: Icon(Icons.photo, size: 80),
                          ),
                        )
                      : Padding(
                          padding:
                              const EdgeInsets.only(top: 90.0, bottom: 10.0),
                          child: CircleAvatar(
                            radius: 60,
                            backgroundImage: NetworkImage(Preferences.img),
                          ),
                        ),
                  Text(Preferences.nombre),
                  Text(Preferences.apellido),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(40.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Icon(Icons.email),
                      const SizedBox(
                        width: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [Text("Email"), Text(Preferences.gmail)],
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Container(
                      height: 2,
                      width: 330,
                      decoration: const BoxDecoration(color: Colors.grey),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Icon(Icons.email),
                      const SizedBox(
                        width: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [Text("Telefono"), Text(Preferences.telefono)],
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Container(
                      height: 2,
                      width: 330,
                      decoration: const BoxDecoration(color: Colors.grey),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Icon(Icons.email),
                      const SizedBox(
                        width: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [Text("Twitter"), Text(Preferences.twitter)],
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Container(
                      height: 2,
                      width: 330,
                      decoration: const BoxDecoration(color: Colors.grey),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Icon(Icons.email),
                      const SizedBox(
                        width: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [Text("Behance"), Text(Preferences.behance)],
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Container(
                      height: 2,
                      width: 330,
                      decoration: const BoxDecoration(color: Colors.grey),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Icon(Icons.email),
                      const SizedBox(
                        width: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [Text("Facebook"), Text(Preferences.facebook)],
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Container(
                      height: 2,
                      width: 330,
                      decoration: const BoxDecoration(color: Colors.grey),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
