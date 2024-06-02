import 'package:darttest/Q2/pages.dart';
import 'package:darttest/Q2/languages.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Lazy Loading Lists')),
      body: ListView(
        children: [
          ListTile(
            title: const Text('Categories'),
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const CategoriesPage()),
            ),
          ),
          ListTile(
            title: const Text('Venues'),
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const VenuesPage()),
            ),
          ),
          ListTile(
            title: const Text('Languages'),
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const LanguagesPage(),
                // const VenuesPage()
              ),
            ),
          ),
        ],
      ),
    );
  }
}
