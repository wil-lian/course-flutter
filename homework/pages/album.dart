import 'package:flutter/material.dart';

class Album extends StatelessWidget {
  const Album({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Album"),
      ),
      body: Center(child: Text("Aqui van albunes")),
    );
  }
}
