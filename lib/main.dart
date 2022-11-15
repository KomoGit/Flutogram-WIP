import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:instaui/UI/db_icons.dart';
import 'package:instaui/UI/ui_bar.dart';
import 'package:instaui/UI/ui_story.dart';
import 'Data/dat_story.dart';

void main() {
  runApp(const MyApp());
}

List<StoryData> stories = [
  StoryData(
    "Kenneth Walter",
    "https://randomuser.me/api/portraits/men/51.jpg",
  ),
  StoryData(
    "Amanda Simons",
    "https://randomuser.me/api/portraits/women/73.jpg",
  ),
  StoryData(
    "Henry Welfam",
    "https://randomuser.me/api/portraits/men/24.jpg",
  ),
  StoryData(
    "Troy Cole",
    "https://randomuser.me/api/portraits/men/6.jpg",
  ),
  StoryData(
    "Ricardo Martin",
    "https://randomuser.me/api/portraits/men/26.jpg",
  ),
  StoryData(
    "Beverly Ward",
    "https://randomuser.me/api/portraits/women/67.jpg",
  ),
];

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
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
      bottomNavigationBar: const NavBar(),
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
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 150,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                storyButton(stories[0], context),
                storyButton(stories[1], context),
                storyButton(stories[2], context),
                storyButton(stories[3], context),
                storyButton(stories[4], context),
              ],
            ),
          )
        ],
      ),
    );
  }
}
