import 'package:flutter/material.dart';

class Mapa extends StatelessWidget {
  const Mapa({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Mapa"),
      ),
      body: Center(child: Text("Aqui van las ubicaciones")),
    );
  }
}
