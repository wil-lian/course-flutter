import 'package:flutter/material.dart';

import 'calculadora.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.white,
      ),
      home: Scaffold(
        body: const Calculadora(),
        appBar: AppBar(
          leading: const Icon(
            Icons.calculate_sharp,
            size: 40,
          ),
          title: const Text(
            'SuperCalculadora',
          ),
        ),
      ),
    );
  }
}
