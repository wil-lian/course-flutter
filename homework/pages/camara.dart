import 'package:flutter/material.dart';

class Camara extends StatelessWidget {
  const Camara({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Camara"),
      ),
      body: Center(child: Text("Imagenes")),
    );
  }
}
