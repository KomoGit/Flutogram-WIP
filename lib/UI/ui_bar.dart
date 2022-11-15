import 'package:flutter/material.dart';
import 'package:instaui/UI/db_icons.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        IconButton(onPressed: () {}, icon: const Icon(DBIcons.home)),
        IconButton(onPressed: () {}, icon: const Icon(DBIcons.search)),
        IconButton(onPressed: () {}, icon: const Icon(DBIcons.add)),
        IconButton(onPressed: () {}, icon: const Icon(DBIcons.heart)),
        IconButton(onPressed: () {}, icon: const Icon(DBIcons.profile)),
      ],
    );
  }
}
