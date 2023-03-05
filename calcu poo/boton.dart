import 'package:flutter/material.dart';

class Boton extends StatelessWidget {
  final String text;
  final Color color;
  final void Function(String) cb;

  const Boton(
      {super.key, required this.text, required this.color, required this.cb});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        shadowColor: MaterialStateProperty.all(Colors.yellow),
          shape: MaterialStateProperty.all(const CircleBorder()),
          backgroundColor: MaterialStateProperty.all(color),
          padding: MaterialStateProperty.all(const EdgeInsets.all(2)),
          minimumSize: MaterialStateProperty.all(const Size(80, 80))),
      onPressed: () {
        cb(text);
      },
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 45,
          color: Colors.white,
        ),
      ),
    );
  }
}
