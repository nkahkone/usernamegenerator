import 'package:flutter/material.dart';
import 'services/username_generator.dart';
import 'history_page.dart';

void main() {
  runApp(const NameGenApp());
}


class NameGenApp extends StatelessWidget {
  const NameGenApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'NameGen',
      theme: ThemeData.dark(),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final generator = UsernameGenerator();
  List<String> history = [];
  String username = "Press the button to generate yourself a username";

  void generateName() {
  setState(() {
    username = generator.generate();
    history.add(username);
  });
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("NameGen"),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            const DrawerHeader(
              child: Text("Menu"),
              ),
              ListTile(
                title: const Text("History"),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HistoryPage(history: history),
                      ),
                  );
                }
              )
          ],
        )
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