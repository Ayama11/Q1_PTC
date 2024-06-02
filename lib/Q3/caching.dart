import 'dart:convert';
import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class User {
  final int id;
  final String firstName;
  final String lastName;
  final String about;
  final String image;
  final String email;

  User({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.about,
    required this.image,
    required this.email,
  });

  String get fullName => '$firstName $lastName';
}

class UserService {
  final Map<int, User> _cache = {};

  Future<User> getUserById(int id) async {
    if (_cache.containsKey(id)) {
      return _cache[id]!;
    }

    await Future.delayed(const Duration(seconds: 2));

    final faker = Faker();
    final user = User(
      id: id,
      firstName: faker.person.firstName(),
      lastName: faker.person.lastName(),
      about: faker.lorem.sentence(),
      image: faker.image.image(),
      email: faker.internet.email(),
    );

    _cache[id] = user;
    return user;
  }
}

class UserDetailsPage extends StatelessWidget {
  final int userId;
  final UserService userService;

  const UserDetailsPage(
      {super.key, required this.userId, required this.userService});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('User Details'),
      ),
      body: FutureBuilder<User>(
        future: userService.getUserById(userId),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (!snapshot.hasData) {
            return const Center(child: Text('User not found'));
          }

          final user = snapshot.data!;
          return Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Image.network(user.image),
                const SizedBox(height: 16.0),
                Text(
                  user.fullName,
                  style: const TextStyle(
                      fontSize: 24.0, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8.0),
                Text(user.email),
                const SizedBox(height: 16.0),
                Text(user.about),
              ],
            ),
          );
        },
      ),
    );
  }
}

class UserListPage extends StatelessWidget {
  final List<int> userIds;
  final UserService userService;

  const UserListPage(
      {super.key, required this.userIds, required this.userService});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('User List'),
      ),
      body: ListView.builder(
        itemCount: userIds.length,
        itemBuilder: (context, index) {
          final userId = userIds[index];
          return ListTile(
            title: Text('User $userId'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      UserDetailsPage(userId: userId, userService: userService),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

Future<List<int>> loadUserIds() async {
  final String response = await rootBundle.loadString('assets/usrs.json');
  final List<dynamic> data = json.decode(response);
  return data.map<int>((item) => item['id'] as int).toList();
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final userIds = await loadUserIds();
  final userService = UserService();
  runApp(MyApp(userIds: userIds, userService: userService));
}

class MyApp extends StatelessWidget {
  final List<int> userIds;
  final UserService userService;

  const MyApp({super.key, required this.userIds, required this.userService});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'User List',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: UserListPage(userIds: userIds, userService: userService),
    );
  }
}
