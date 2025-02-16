import 'package:flutter/material.dart';
import 'package:practica_figma/screens/first_screen.dart';
import 'package:practica_figma/screens/home_screen.dart';
import 'package:practica_figma/screens/splash_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      title: 'Material App',
      home: HomeScreen(),
    );
  }
}
