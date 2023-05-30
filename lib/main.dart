import 'package:flutter/material.dart';
import 'package:yoga_app/screens/congratulations.dart';
import 'package:yoga_app/screens/home.dart';
import 'package:yoga_app/screens/homepage.dart';
import 'package:yoga_app/screens/rUready.dart';
import 'package:yoga_app/screens/startup.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),

    );
  }
}