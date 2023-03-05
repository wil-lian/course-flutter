import 'package:flutter/material.dart';

class GridsViews extends StatelessWidget {
  const GridsViews({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: GridView.builder(
          itemCount: menus.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
          itemBuilder: (BuildContext context, int index) {
            return InkWell(
              onTap: () {
                print("crear la vista para que me lleve a algun lugar");
              },
              child: Card(
                child: Column(
                  children: [
                    Icon(
                      menus[index].icon,
                      size: 100,
                      color: Colors.green,
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

const List<Menu> menus = const <Menu>[
  const Menu(title: 'Home', icon: Icons.home),
  const Menu(title: 'Contact', icon: Icons.contacts),
  const Menu(title: 'Map', icon: Icons.map),
  const Menu(title: 'Phone', icon: Icons.phone),
  const Menu(title: 'Camera', icon: Icons.camera_alt),
  const Menu(title: 'Setting', icon: Icons.settings),
  const Menu(title: 'Album', icon: Icons.photo_album),
  const Menu(title: 'WiFi', icon: Icons.wifi),
];
