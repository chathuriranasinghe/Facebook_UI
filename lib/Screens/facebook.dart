import 'package:facebook_ui/Screens/widgets/iconbar.dart';
import 'package:facebook_ui/Screens/widgets/newpostbar.dart';
import 'package:facebook_ui/Screens/widgets/postListView.dart';
import 'package:facebook_ui/Screens/widgets/storieslistview.dart';
import 'package:facebook_ui/Screens/widgets/toolbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FacebookHome extends StatefulWidget {
  const FacebookHome({super.key});

  @override
  State<FacebookHome> createState() => _FacebookHomeState();
}

class _FacebookHomeState extends State<FacebookHome> {
  final profilePic = "assets/ProfilePic.jpg";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      body: SingleChildScrollView(
        child: Column(
          children: [
            toolbar(),
            SizedBox(
              height: 10,
            ),
            iconBar(profilePic: profilePic),
            Divider(
              thickness: 0.5,
            ),
            newPostBar(profilePic: profilePic),
            Divider(
              color: Colors.black38,
              thickness: 5,
              height: 20,
            ),
            storiesListView(profilePic: profilePic),
            Divider(
              color: Colors.black38,
              thickness: 5,
              height: 20,
            ),
            PostListView(
              profilePic: profilePic,
            )
          ],
        ),
      ),
    );
  }
}
