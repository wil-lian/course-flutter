import 'package:contador/custom_butons.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int contador = 0;

  void incremet() {
    contador++;
    setState(() {});
  }

  void decrement() {
    contador--;
    setState(() {});
  }

  void reset() {
    contador = 0;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contador'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Este es el contador', style: TextStyle(fontSize: 20)),
            Text(
              '$contador',
              style: const TextStyle(fontSize: 50),
            )
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Botones(
        incremetFn: incremet,
        decrementFn: decrement,
        resetFn: reset,
      ),
    );
  }
}
