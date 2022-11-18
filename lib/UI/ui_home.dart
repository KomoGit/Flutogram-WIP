import 'package:flutter/material.dart';
import 'package:instaui/UI/db_icons.dart';
import 'package:instaui/UI/ui_bar.dart';
import 'package:instaui/UI/ui_post.dart';
//import 'package:instaui/UI/ui_profile.dart';
import 'package:instaui/UI/ui_story.dart';
import 'package:instaui/Data/dat_mock.dart';

//TEST DATA

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
          const SizedBox(
            width: double.maxFinite,
            height: 500,
            child: Scaffold(
              // appBar: AppBar(
              //     leading: profileCircle(stories[1], context),
              //     title: Text(
              //       stories[1].userName,
              //       style: const TextStyle(
              //         color: Colors.black,
              //         fontWeight: FontWeight.w500,
              //         fontSize: 12,
              //       ),
              //     ),
              //     actions: const [
              //       Icon(
              //         Icons.more_vert,
              //         color: Colors.black,
              //         size: 34,
              //       ),
              //     ],
              //     backgroundColor: Colors.white),
              //Should be wrapped in ListView and list view should be given PostCard as children
              body: PostCard(),
              backgroundColor: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
