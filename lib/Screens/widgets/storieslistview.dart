import 'package:facebook_ui/Models/story_model.dart';
import 'package:flutter/material.dart';

class storiesListView extends StatelessWidget {
  storiesListView({
    super.key,
    required this.profilePic,
  });

  final String profilePic;
  final List<StoryModel> stories = [
    StoryModel("story", "userId", "userImage", "userName"),
    StoryModel(
        "https://burst.shopifycdn.com/photos/hand-holding-in-love.jpg?width=1000&format=pjpg&exif=0&iptc=0",
        "100",
        "https://w7.pngwing.com/pngs/184/113/png-transparent-user-profile-computer-icons-profile-heroes-black-silhouette-thumbnail.png",
        "Pasindu Weerasinghe"),
    StoryModel(
        "https://fyf.tac-cdn.net/images/products/small/FYF-116.jpg?auto=webp&quality=60&width=650",
        "101",
        "https://e7.pngegg.com/pngimages/168/827/png-clipart-computer-icons-user-profile-avatar-profile-woman-desktop-wallpaper-thumbnail.png",
        "Ayesha Nirmani"),
    StoryModel(
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQSN5kyGXRsJTnCvfM371Ycg8u7k9viw1gW-g&s",
        "102",
        "https://e7.pngegg.com/pngimages/168/827/png-clipart-computer-icons-user-profile-avatar-profile-woman-desktop-wallpaper-thumbnail.png",
        "Yasuni Bagya"),
    StoryModel(
        "https://www.bhmpics.com/downloads/little-girl-cute-baby-girl-Wallpapers/27.cute-little-baby-girl-325x485.jpg",
        "103",
        "https://e7.pngegg.com/pngimages/168/827/png-clipart-computer-icons-user-profile-avatar-profile-woman-desktop-wallpaper-thumbnail.png",
        "Sunethra Deepani"),
    StoryModel(
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ0sEzj5xjMrzhFtT8w1rUkXGAd5Q3r2bw1Og&s",
        "104",
        "https://e7.pngegg.com/pngimages/168/827/png-clipart-computer-icons-user-profile-avatar-profile-woman-desktop-wallpaper-thumbnail.png",
        "Prabodha Ranasinghe")
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 176,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: stories.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 8),
                child: Container(
                  width: 100,
                  height: 160,
                  decoration: BoxDecoration(
                      color: Colors.grey.shade800,
                      borderRadius: BorderRadius.circular(15)),
                  child: index == 0
                      ? Stack(
                          children: [
                            Container(
                              width: 100,
                              height: 100,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(15),
                                      topRight: Radius.circular(15)),
                                  image: DecorationImage(
                                      image: AssetImage(profilePic),
                                      fit: BoxFit.cover)),
                            ),
                            Positioned(
                              bottom: 45,
                              left: 1,
                              right: 1,
                              child: Container(
                                width: 30,
                                height: 30,
                                decoration: BoxDecoration(
                                  color: Colors.blue.shade600,
                                  shape: BoxShape.circle,
                                ),
                                child: Icon(
                                  Icons.add,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            Align(
                                alignment: Alignment.bottomCenter,
                                child: Padding(
                                  padding: const EdgeInsets.only(bottom: 5),
                                  child: Text(
                                    "Create \nStory",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ))
                          ],
                        )
                      : Stack(
                          children: [
                            Container(
                              width: 100,
                              height: 160,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  image: DecorationImage(
                                      fit: BoxFit.cover,
                                      colorFilter: ColorFilter.mode(
                                          Colors.black.withOpacity(0.2),
                                          BlendMode.darken),
                                      image:
                                          NetworkImage(stories[index].story))),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Container(
                                width: 35,
                                height: 35,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                        color: Colors.blue, width: 2)),
                                child: CircleAvatar(
                                  backgroundImage:
                                      NetworkImage(stories[index].userImage),
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.bottomLeft,
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(left: 5, bottom: 5),
                                child: Text(
                                  stories[index].userName,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                            ),
                          ],
                        ),
                ),
              );
            }));
  }
}
