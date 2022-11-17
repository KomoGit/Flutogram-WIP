import 'package:flutter/material.dart';
import 'package:instaui/UI/db_icons.dart';
import 'package:instaui/UI/ui_bar.dart';
import 'package:instaui/UI/ui_post.dart';
import 'package:instaui/UI/ui_profile.dart';
import 'package:instaui/UI/ui_story.dart';
import 'package:instaui/Data/dat_story.dart';

//TEST DATA
List<StoryData> stories = [
  StoryData(
    "Your Story",
    "https://randomuser.me/api/portraits/men/18.jpg",
    "storyURL",
  ),
  StoryData(
    "Ken Walter",
    "https://randomuser.me/api/portraits/men/51.jpg",
    "https://wallpaper.dog/large/20521642.jpg",
  ),
  StoryData(
    "Amanda Simons",
    "https://randomuser.me/api/portraits/women/73.jpg",
    "https://wallpaper.dog/large/20521639.jpg",
  ),
  StoryData(
    "Henry Welfam",
    "https://randomuser.me/api/portraits/men/24.jpg",
    "https://wallpaper.dog/large/20521643.jpg",
  ),
  StoryData(
    "Troy Cole",
    "https://randomuser.me/api/portraits/men/6.jpg",
    "https://wallpaper.dog/large/20521645.jpg",
  ),
  StoryData(
    "Ricardo Martin",
    "https://randomuser.me/api/portraits/men/26.jpg",
    "https://wallpaper.dog/large/20521652.jpg",
  ),
  StoryData(
    "Beverly Ward",
    "https://randomuser.me/api/portraits/women/67.jpg",
    "https://wallpaper.dog/large/5530554.jpg",
  ),
];

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
          SizedBox(
            width: double.infinity,
            height: 110,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                storyButton(stories[0], context),
                storyButton(stories[1], context),
                storyButton(stories[2], context),
                storyButton(stories[3], context),
                storyButton(stories[4], context),
                storyButton(stories[5], context),
                storyButton(stories[6], context),
              ],
            ),
          ),
          SizedBox(
            width: double.maxFinite,
            height: 500,
            child: Scaffold(
              appBar: AppBar(
                  leading: profileCircle(stories[1], context),
                  actions: const [
                    Icon(
                      Icons.more_vert,
                      color: Colors.black,
                      size: 34,
                    )
                  ],
                  backgroundColor: Colors.white),
              //Should be wrapped in ListView and list view should be given PostCard as children
              body: const PostCard(),
              backgroundColor: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
