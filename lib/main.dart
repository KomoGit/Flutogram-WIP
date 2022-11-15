import 'package:flutter/material.dart';
import 'package:instaui/UI/db_icons.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(destinations: [
        NavigationDestination(
            icon: Icon(
              Icons.settings,
              color: Colors.white,
            ),
            label: ""), //Go to a entirely new page.
        NavigationDestination(
            icon: Icon(Icons.settings, color: Colors.white), label: ""),
      ]),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Icon(
          DBIcons.igIco,
          color: Colors.black,
          size: 42,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(DBIcons.msgIco),
            color: Colors.black,
          )
        ],
      ),
    );
  }
}
