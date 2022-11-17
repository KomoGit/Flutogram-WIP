import 'package:flutter/material.dart';
import 'package:instaui/Data/dat_story.dart';

Widget profileCircle(StoryData data, BuildContext context) {
  return Column(
    children: [
      Container(
        padding: const EdgeInsets.symmetric(
          vertical: 8,
          horizontal: 8,
        ).copyWith(right: 0),
        //ROW
        child: Row(
          children: [
            CircleAvatar(
              radius: 20,
              backgroundImage: NetworkImage(data.avatarURL),
            ),
            // Expanded(
            //     child: Padding(
            //   padding: const EdgeInsets.only(left: 8),
            //   child: Column(
            //     mainAxisSize: MainAxisSize.min,
            //     crossAxisAlignment: CrossAxisAlignment.start,
            //     children: [Text(data.userName)],
            //   ),
            // )),
          ],
        ),
      ),
    ],
  );
}
