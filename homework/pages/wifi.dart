import 'package:flutter/material.dart';

class Wifi extends StatelessWidget {
  const Wifi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Wifi"),
      ),
      body: Center(child: Text("Aqui van las conexiones")),
    );
  }
}
