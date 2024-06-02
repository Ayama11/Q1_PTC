import 'package:darttest/Q2/get_items.dart';
import 'package:flutter/material.dart';
// Import your data functions here

class CategoriesPage extends StatelessWidget {
  const CategoriesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Categories')),
      body: FutureBuilder(
        future: Future.delayed(const Duration(seconds: 1), getCategories),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else {
            return ListView.builder(
              itemCount: snapshot.data?.length ?? 0,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(snapshot.data![index]),
                );
              },
            );
          }
        },
      ),
    );
  }
}

class VenuesPage extends StatelessWidget {
  const VenuesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Venues')),
      body: FutureBuilder(
        future: Future.delayed(const Duration(seconds: 1), getVenues),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else {
            return ListView.builder(
              itemCount: snapshot.data?.length ?? 0,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(snapshot.data![index]),
                );
              },
            );
          }
        },
      ),
    );
  }
}

// class LanguagesPage extends StatelessWidget {
//   const LanguagesPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text('Languages')),
//       body: FutureBuilder(
//         future: getLanguages(),
//         builder: (context, snapshot) {
//           if (snapshot.connectionState == ConnectionState.waiting) {
//             return const Center(child: CircularProgressIndicator());
//           } else if (snapshot.hasError) {
//             return Center(child: Text('Error: ${snapshot.error}'));
//           } else {
//             return ListView.builder(
//               itemCount: snapshot.data?.length ?? 0,
//               itemBuilder: (context, index) {
//                 return ListTile(
//                   title: Text(snapshot.data![index]),
//                 );
//               },
//             );
//           }
//         },
//       ),
//     );
//   }
// }
