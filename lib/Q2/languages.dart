import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LanguagesPage extends StatelessWidget {
  const LanguagesPage({super.key});

  Future<List<String>> getLanguages() async {
    const String filePath = "assets/lottie/languages.json";
    final String jsonString = await rootBundle.loadString(filePath);
    final List<dynamic> jsonList = json.decode(jsonString);
    return jsonList.map((language) => language.toString()).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Languages'),
      ),
      body: FutureBuilder<List<String>>(
        future: getLanguages(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return const Center(child: Text('No languages found.'));
          } else {
            final languages = snapshot.data!;
            return ListView.builder(
              itemCount: languages.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(languages[index]),
                );
              },
            );
          }
        },
      ),
    );
  }
}
