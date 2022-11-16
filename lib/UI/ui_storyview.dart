import 'dart:async';

import 'package:flutter/material.dart';
import 'package:instaui/Data/dat_story.dart';

class StoryView extends StatefulWidget {
  final StoryData storyData;

  const StoryView({super.key, required this.storyData});

  @override
  State<StoryView> createState() => _StoryViewState();
}

class _StoryViewState extends State<StoryView> {
  double percent = 0.0;
  Timer? _timer;

  void startTimer() {
    _timer = Timer.periodic(const Duration(microseconds: 1000), (timer) {
      setState(() {
        percent += 0.001;
      });
      if (percent > 1) {
        _timer?.cancel();
        Navigator.pop(context);
      }
    });
  }

  @override
  void initState() {
    startTimer();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(widget.storyData.storyURL),
                  fit: BoxFit.cover),
            ),
          ),
          Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 36.0, horizontal: 8.0),
              child: Column(
                children: [
                  LinearProgressIndicator(
                    value: percent,
                  ),
                  const SizedBox(
                    height: 8.0,
                  ),
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundImage:
                            NetworkImage(widget.storyData.avatarURL),
                        radius: 15,
                      ),
                      const SizedBox(width: 8.0),
                      Text(
                        widget.storyData.userName,
                        style: const TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ],
              )),
        ],
      ),
    );
  }
}
