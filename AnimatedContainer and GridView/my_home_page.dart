import 'package:flutter/material.dart';


class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double _width = 100;
  double _height = 100;
  Color _color = Colors.yellow;

  void _start() {
    setState(() {
      _width = 300;
      _height = 300;
      _color = Colors.red;
    });
  }

  void _stop() {
    _width = 300;
    _height = 300;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          alignment: Alignment.center,
          color: Colors.black87,
          child: AnimatedContainer(
            duration: Duration(seconds: 5),
            width: _width,
            height: _height,
            decoration: BoxDecoration(shape: BoxShape.circle, color: _color),
            curve: Curves.decelerate,
            onEnd: () {
              setState(() {
                _width = _width == 100 ? 300 : 100;
                _height = _height == 100 ? 300 : 100;
                _color = _color == Colors.yellow ? Colors.red : Colors.yellow;
              });
            },
          ),
        ),
        floatingActionButton: ElevatedButton.icon(
          onPressed: _start,
          icon: Icon(Icons.run_circle),
          label: Text('Start'),
        ),
      ),
    );
  }
}
