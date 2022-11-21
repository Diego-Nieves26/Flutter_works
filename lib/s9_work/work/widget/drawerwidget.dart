import 'package:flutter/material.dart';
import 'package:works_certus/s9_work/work/preferences/preferences.dart';
import 'package:works_certus/s9_work/work/screen/profilescreen.dart';

class DrawerWidgetWork extends StatelessWidget {
  const DrawerWidgetWork({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          DrawerHeader(
            decoration: const BoxDecoration(
              gradient: RadialGradient(
                colors: [Color.fromARGB(255, 159, 189, 255), Color(0xff6ab9f7)],
                center: Alignment.bottomLeft,
                radius: .2,
                tileMode: TileMode.mirror,
              ),
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(30),
                bottomLeft: Radius.circular(30),
              ),
            ),
            child: Row(
              children: [
                (Preferences.img == '')
                    ? Container(
                        height: 100,
                        width: 100,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: NetworkImage(
                              "https://cdn-icons-png.flaticon.com/512/362/362003.png",
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                      )
                    : Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: NetworkImage(Preferences.img),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                (Preferences.nombre == '' || Preferences.apellido == '')
                    ? const Text("Porfavor registrate",
                        style: TextStyle(fontSize: 15))
                    : Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            Preferences.nombre,
                            style: TextStyle(fontSize: 15, color: Colors.white),
                          ),
                          Text(
                            Preferences.apellido,
                            style: TextStyle(fontSize: 10, color: Colors.white),
                          )
                        ],
                      )
              ],
            ),
          ),
          ListTile(
            leading: const Icon(Icons.person),
            title: const Text("Profile"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ProfileScreen()),
              );
            },
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Container(
              height: 2,
              width: 270,
              decoration: const BoxDecoration(color: Colors.grey),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.email),
            title: const Text("Primary"),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.people),
            title: const Text("Social"),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.local_offer_rounded),
            title: const Text("Proomotions"),
            onTap: () {},
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Container(
              height: 2,
              width: 270,
              decoration: const BoxDecoration(color: Colors.grey),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(
              "All labels",
              textAlign: TextAlign.start,
              style: TextStyle(fontWeight: FontWeight.w700),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.star),
            title: const Text("Starred"),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.double_arrow_outlined),
            title: const Text("Important"),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.send),
            title: const Text("Sent"),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.outbox),
            title: const Text("Outbox"),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.drafts),
            title: const Text("Drafts"),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.drive_folder_upload_outlined),
            title: const Text("All emails"),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
