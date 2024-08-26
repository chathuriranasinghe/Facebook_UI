import 'package:facebook_ui/Models/post_model.dart';
import 'package:flutter/material.dart';

class PostListView extends StatelessWidget {
  PostListView({
    super.key,
    required this.profilePic,
  });

  final String profilePic;
  List<PostModel> posts = [
    PostModel(
        post: "assets/CoverPhoto.jpg",
        caption: "Every step feels lighter when we're holding hands.",
        time: "2h",
        type: "Updated his cover photo.",
        userId: "100",
        userImage: "assets/Pasindu.jpg",
        userName: "Pasindu Weerasinghe"),
    PostModel(
        post: "assets/Mahinda.jpg",
        caption:
            "I loved you then, I love you still, always have, always will.",
        time: "2m",
        type: "Updated his profile picture.",
        userId: "101",
        userImage: "assets/Bhasura.jpg",
        userName: "Bhasura Praneeth")
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: List.generate(posts.length, (index) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.blue, width: 2)),
                      child: CircleAvatar(
                        backgroundImage: AssetImage(posts[index].userImage),
                      ),
                    ),
                    SizedBox(
                      width: 7,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          posts[index].userName,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              height: 0.9),
                        ),
                        Row(
                          children: [
                            Text(
                              posts[index].type,
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 14),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              posts[index].time,
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 14),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Icon(
                              Icons.public,
                              size: 18,
                              color: Colors.grey,
                            )
                          ],
                        ),
                      ],
                    ),
                    Spacer(
                      flex: 1,
                    ),
                    Icon(
                      Icons.more_horiz,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Icon(
                      Icons.close,
                      color: Colors.white,
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 4, bottom: 8),
                child: Text(
                  posts[index].caption,
                  style:
                      TextStyle(color: Colors.white, fontSize: 15, height: 0.9),
                ),
              ),
              Image.asset(
                posts[index].post,
                fit: BoxFit.cover,
              ),
              SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Row(
                  children: [
                    Text(
                      "50 likes",
                      style: TextStyle(color: Colors.blue),
                    ),
                    Spacer(
                      flex: 1,
                    ),
                    Text(
                      "15 comments",
                      style: TextStyle(color: Colors.grey),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      "2 shares",
                      style: TextStyle(color: Colors.grey),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ActionButton(
                      icon: Icons.thumb_up_alt_outlined,
                      iconColor: Colors.blue,
                      text: "Like",
                      textColor: Colors.blue,
                    ),
                    ActionButton(
                      icon: Icons.comment,
                      text: "Comment",
                    ),
                    ActionButton(
                      icon: Icons.offline_share,
                      text: "Send",
                    ),
                    ActionButton(
                      icon: Icons.reply,
                      text: "Share",
                    ),
                  ],
                ),
              ),
              Divider(
                color: Colors.black38,
                thickness: 5,
                height: 20,
              ),
            ],
          );
        }),
      ),
    );
  }
}

class ActionButton extends StatelessWidget {
  const ActionButton(
      {super.key,
      required this.icon,
      required this.text,
      this.iconColor = Colors.grey,
      this.textColor = Colors.grey});

  final IconData icon;
  final String text;
  final Color iconColor;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Row(
          children: [
            Icon(
              icon,
              color: iconColor,
            ),
            SizedBox(
              width: 3,
            ),
            Text(
              text,
              style: TextStyle(
                  color: textColor, fontSize: 14, fontWeight: FontWeight.bold),
            )
          ],
        ),
      ],
    );
  }
}
