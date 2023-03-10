import 'package:flutter/material.dart';
import 'package:practicas/pages/album.dart';
import 'package:practicas/pages/camara.dart';
import 'package:practicas/pages/contact.dart';
import 'package:practicas/pages/home.dart';
import 'package:practicas/pages/mapa.dart';
import 'package:practicas/pages/phone.dart';
import 'package:practicas/pages/setting.dart';
import 'package:practicas/pages/wifi.dart';

class GridsViews extends StatelessWidget {
  const GridsViews({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Mi App"),
        backgroundColor: Colors.blueAccent,
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: GridView.builder(
          itemCount: menus.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
          itemBuilder: (BuildContext context, int index) {
            return InkWell(
              onTap: () {
                if (menus[index].title == "Home") {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (index) => Home(),
                    ),
                  );
                }
                if (menus[index].title == "Contact") {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (index) => Contact(),
                    ),
                  );
                }
                if (menus[index].title == "Map") {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (index) => Mapa(),
                    ),
                  );
                }
                if (menus[index].title == "Phone") {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (index) => Phone(),
                    ),
                  );
                }
                if (menus[index].title == "Camera") {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (index) => Camara(),
                    ),
                  );
                }
                if (menus[index].title == "Setting") {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (index) => Setting(),
                    ),
                  );
                }
                if (menus[index].title == "Album") {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (index) => Album(),
                    ),
                  );
                }
                if (menus[index].title == "WiFi") {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (index) => Wifi(),
                    ),
                  );
                }
              },
              child: Card(
                child: Column(
                  children: [
                    Icon(
                      menus[index].icon,
                      size: 100,
                      color: Colors.blueGrey,
                    ),
                    Text(menus[index].title),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

class Menu {
  const Menu({required this.title, required this.icon});
  final String title;
  final IconData icon;
}

const List<Menu> menus = <Menu>[
  Menu(title: 'Home', icon: Icons.home),
  Menu(title: 'Contact', icon: Icons.contacts),
  Menu(title: 'Map', icon: Icons.map),
  Menu(title: 'Phone', icon: Icons.phone),
  Menu(title: 'Camera', icon: Icons.camera_alt),
  Menu(title: 'Setting', icon: Icons.settings),
  Menu(title: 'Album', icon: Icons.photo_album),
  Menu(title: 'WiFi', icon: Icons.wifi),
];
