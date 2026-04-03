import 'package:flutter/material.dart';
import '../generator_page.dart';
import '../history_page.dart';

class AppDrawer extends StatelessWidget {
  final List<String> history;
  final String currentPage;

  const AppDrawer({super.key, required this.history, required this.currentPage});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          // Home
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text("Home"),
            selected: currentPage == 'home',
            onTap: () {
              Navigator.pop(context);
              if (currentPage != 'home') {
                Navigator.popUntil(context, (route) => route.isFirst);
              }
            },
          ),
          // Generator
          ListTile(
            leading: const Icon(Icons.flash_on),
            title: const Text("Generator"),
            selected: currentPage == 'generator',
            onTap: () {
              Navigator.pop(context);
              if (currentPage != 'generator') {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => GeneratorPage(history: history),
                  ),
                );
              }
            },
          ),

          // History
          ListTile(
            leading: const Icon(Icons.history),
            title: const Text("History"),
            selected: currentPage == 'history',
            onTap: () {
              Navigator.pop(context);
              if (currentPage != 'history') {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => HistoryPage(history: history),
                  ),
                );
              }
            },
          ),
        ],
      ),
    );
  }
}