import 'package:flutter/material.dart';
import 'generator_page.dart';
import 'history_page.dart';
import 'widgets/app_drawer.dart';

class HomePage extends StatelessWidget {
  final List<String> history;

  const HomePage({super.key, required this.history});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("NameGen")),
      drawer: AppDrawer(history: history, currentPage: 'home'),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => GeneratorPage(history: history),
                  ),
                );
              },
              child: const Text("Generate Username"),
            ),

            const SizedBox(height: 20),

            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => HistoryPage(history: history),
                  ),
                );
              },
              child: const Text("View previously generated usernames"),
            ),
          ],
        ),
      ),
    );
  }
}