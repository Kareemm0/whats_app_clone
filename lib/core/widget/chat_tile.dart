import 'package:flutter/material.dart';

Widget chatTile(
  String imageUrl,
  String userName,
  String message,
  String date,
  bool seen,
) {
  return InkWell(
    onTap: () {},
    child: Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            backgroundImage: NetworkImage(imageUrl),
            radius: 28,
          ),
          const SizedBox(
            width: 8,
          ),
          Expanded(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(
                      child: Text(
                    userName,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  )),
                  Text(date),
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  Expanded(child: Text(userName)),
                  seen
                      ? const Icon(
                          Icons.check_circle,
                          size: 16,
                          color: Colors.green,
                        )
                      : const Icon(
                          Icons.check_circle_outline,
                          color: Colors.grey,
                          size: 16,
                        )
                ],
              ),
            ],
          ))
        ],
      ),
    ),
  );
}
