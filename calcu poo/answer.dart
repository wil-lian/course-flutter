import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String texto;
  final Color color;
  const Answer({
    super.key,
    required this.texto,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 32),
      child: Text(
        texto,
        style: const TextStyle(fontSize: 50),
      ),
    );
  }
}
