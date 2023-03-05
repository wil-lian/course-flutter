import 'package:flutter/material.dart';

class Botones extends StatelessWidget {
  final Function incremetFn;
  final Function decrementFn;
  final Function resetFn;
  const Botones({
    Key? key,
    required this.incremetFn,
    required this.decrementFn,
    required this.resetFn,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
      FloatingActionButton(
        onPressed: () => incremetFn(),
        child: const Icon(Icons.add),
      ),
      FloatingActionButton(
        onPressed: () => decrementFn(),
        child: const Icon(Icons.remove),
      ),
      FloatingActionButton(
        onPressed: () => resetFn(),
        child: const Icon(Icons.settings_backup_restore_outlined),
      )
    ]);
  }
}
