import 'package:flutter/material.dart';
import 'package:navegacion/pages/secon_page.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Page'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            _showSecondPage(context);
          },
          child: const Text('Abre la segunda pantalla'),
        ),
      ),
    );
  }
}

void _showSecondPage(BuildContext context) {
  Navigator.of(context).pushNamed(
    '/second',
    arguments: SecondPageArguments(
      name: 'william',
      lastName: 'vargas',
    ),
  );
}
