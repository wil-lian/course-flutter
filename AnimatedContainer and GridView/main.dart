import 'package:flutter/material.dart';
import 'package:practica/grids_views.dart';
import 'package:practica/my_home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: GridsViews(),
    );
  }
}
