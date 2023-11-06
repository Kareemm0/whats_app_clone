import 'package:flutter/material.dart';
import 'package:whats_app_clone/core/utils/app_color.dart';

Widget storyButton(String imageUrl, String userName) {
  return Padding(
    padding: const EdgeInsets.only(right: 10),
    child: Column(
      children: [
        CircleAvatar(
          backgroundImage: NetworkImage(imageUrl),
          radius: 26,
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          userName,
          style: const TextStyle(
            color: AppColor.white,
          ),
        )
      ],
    ),
  );
}
