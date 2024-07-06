import 'package:flutter/material.dart';

class iconBar extends StatelessWidget {
  const iconBar({
    super.key,
    required this.profilePic,
  });

  final String profilePic;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        tabIcon(
          icon: Icons.home,
        ),
        tabIcon(
          icon: Icons.people,
        ),
        tabIcon(
          icon: Icons.ondemand_video_outlined,
        ),
        tabIcon(
          icon: Icons.notifications,
        ),
        Container(
          height: 30,
          width: 30,
          decoration:
              BoxDecoration(shape: BoxShape.circle, color: Colors.blueGrey),
          child: Padding(
            padding: const EdgeInsets.all(2.0),
            child: Stack(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage(profilePic),
                ),
                Positioned(
                  bottom: 0.1,
                  right: 0.1,
                  child: CircleAvatar(
                    backgroundColor: Colors.grey.shade700,
                    radius: 5,
                    child: Icon(
                      Icons.menu,
                      size: 10,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class tabIcon extends StatelessWidget {
  const tabIcon({super.key, required this.icon});

  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Icon(
      icon,
      color: Colors.white,
      size: 25,
    );
  }
}
