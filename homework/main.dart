import 'package:flutter/material.dart';
import 'package:practicas/cutom_scroll_view.dart';
import 'package:practicas/draggable_scrollable_sheeet.dart';
import 'package:practicas/grids_views.dart';
import 'package:practicas/notification_listener.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: OpcionSeis(),
      debugShowCheckedModeBanner: false,
    );
  }
}
