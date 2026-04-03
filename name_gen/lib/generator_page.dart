import 'package:flutter/material.dart';
import 'services/username_generator.dart';

class GeneratorPage extends StatefulWidget {
  final List<String> history;

  const GeneratorPage({super.key, required this.history});

  @override
  State<GeneratorPage> createState() => _GeneratorPageState();
}

class _GeneratorPageState extends State<GeneratorPage> {
  final generator = UsernameGenerator();
  String username = "Press the button to generate yourself a username";

  void generateName() {
    setState(() {
      username = generator.generate();
      widget.history.add(username);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Generator"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              username,
              style: const TextStyle(fontSize: 28),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: generateName,
              child: const Text("Generate Username"),
            ),
          ],
        ),
      ),
    );
  }
}