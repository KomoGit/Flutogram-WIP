import 'package:flutter/material.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';
import 'package:instaui/Data/dat_story.dart';

Widget storyButton(StoryData data, BuildContext context) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Column(
      children: [
        InkWell(
          borderRadius: BorderRadius.circular(50),
          onTap: () {
            debugPrint("Gay Sex");
          },
          child: Container(
            width: 70,
            height: 70.0,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                border: const GradientBoxBorder(
                  gradient: LinearGradient(colors: [
                    Color.fromARGB(254, 218, 117, 255),
                    Color.fromARGB(250, 126, 30, 255),
                    Color.fromARGB(214, 41, 118, 255),
                    Color.fromARGB(150, 47, 191, 255),
                    Color.fromARGB(79, 91, 213, 255),
                  ]),
                  width: 2,
                ) //Border.all(color: Colors.red, width: 2.0),
                ),
            child: Padding(
              padding: const EdgeInsets.all(3.0),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50.0),
                    image: DecorationImage(
                        image: NetworkImage(data.avatarURL),
                        fit: BoxFit.cover)),
              ),
            ),
          ),
        ),
        const SizedBox(height: 6.0),
        Text(
          data.userName,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.center,
        ),
      ],
    ),
  );
}
