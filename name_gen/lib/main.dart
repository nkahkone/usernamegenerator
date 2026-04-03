import 'package:flutter/material.dart';
import 'home_page.dart';

void main() {
  runApp(const NameGenApp());
}

// Yhteinen historia kaikille sivuille
List<String> history = [];

class NameGenApp extends StatelessWidget {
  const NameGenApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'NameGen',
      theme: ThemeData.dark(),
      home: HomePage(history: history),
    );
  }
}