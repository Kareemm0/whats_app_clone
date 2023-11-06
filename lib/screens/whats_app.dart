import 'package:flutter/material.dart';
import 'package:whats_app_clone/core/utils/app_color.dart';
import 'package:whats_app_clone/core/widget/chat_tile.dart';
import 'package:whats_app_clone/core/widget/story_button.dart';
import 'package:whats_app_clone/data/image_list.dart';
import 'package:whats_app_clone/screens/story_view.dart';

class WhatsAppScreen extends StatefulWidget {
  const WhatsAppScreen({super.key});

  @override
  State<WhatsAppScreen> createState() => _WhatsAppScreenState();
}

class _WhatsAppScreenState extends State<WhatsAppScreen> {
  var conatinerRaduis = const Radius.circular(30);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.primaryColor,
      appBar: AppBar(
        title: const Text("WhatsApp Clone"),
        backgroundColor: AppColor.primaryColor,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_horiz),
          )
        ],
      ),
      body: Column(children: [
        SizedBox(
          height: 100,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            child: InkWell(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const StoryViewScreen(),
                ));
              },
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  storyButton(AppImageList.imageUrl[0], "Aya"),
                  storyButton(AppImageList.imageUrl[1], "kareem"),
                  storyButton(AppImageList.imageUrl[2], "Nada"),
                  storyButton(AppImageList.imageUrl[3], "Ali"),
                  storyButton(AppImageList.imageUrl[4], "Marwa"),
                  storyButton(AppImageList.imageUrl[5], "Eman"),
                  storyButton(AppImageList.imageUrl[6], "Marwa"),
                ],
              ),
            ),
          ),
        ),
        Expanded(
            child: Container(
          decoration: BoxDecoration(
              color: AppColor.white,
              borderRadius: BorderRadius.only(
                topLeft: conatinerRaduis,
                topRight: conatinerRaduis,
              )),
          child: Padding(
            padding: const EdgeInsets.only(
              left: 12,
              right: 12,
              top: 10,
            ),
            child: ListView(
              children: [
                chatTile(
                  AppImageList.imageUrl[0],
                  "userName",
                  "message",
                  "date",
                  false,
                ),
                chatTile(
                  AppImageList.imageUrl[1],
                  "userName",
                  "message",
                  "date",
                  false,
                ),
                chatTile(
                  AppImageList.imageUrl[2],
                  "userName",
                  "message",
                  "date",
                  false,
                ),
                chatTile(
                  AppImageList.imageUrl[3],
                  "userName",
                  "message",
                  "date",
                  false,
                ),
                chatTile(
                  AppImageList.imageUrl[4],
                  "userName",
                  "message",
                  "date",
                  false,
                ),
                chatTile(
                  AppImageList.imageUrl[5],
                  "userName",
                  "message",
                  "date",
                  false,
                ),
                chatTile(
                  AppImageList.imageUrl[6],
                  "userName",
                  "message",
                  "date",
                  false,
                ),
              ],
            ),
          ),
        ))
      ]),
    );
  }
}
