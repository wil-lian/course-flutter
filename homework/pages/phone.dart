import 'package:flutter/material.dart';

class Phone extends StatelessWidget {
  const Phone({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Telefono"),
      ),
      body: Center(child: Text("Aqui van los numeros")),
    );
  }
}
