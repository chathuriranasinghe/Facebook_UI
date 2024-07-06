import 'package:flutter/material.dart';

class newPostBar extends StatelessWidget {
  const newPostBar({
    super.key,
    required this.profilePic,
  });

  final String profilePic;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CircleAvatar(
            backgroundImage: AssetImage(profilePic),
          ),
          SizedBox(
            width: 10,
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(color: Colors.grey.shade500)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "   What's on your mind?",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Icon(
            Icons.photo_album,
            color: Colors.green,
          ),
        ],
      ),
    );
  }
}
