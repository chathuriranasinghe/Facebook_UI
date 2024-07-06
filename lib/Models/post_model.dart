class PostModel {
  String post;
  String time;
  String caption;
  String userImage;
  String userId;
  String userName;
  String type;

  PostModel({
    required this.post,
    required this.caption,
    required this.time,
    required this.type,
    required this.userId,
    required this.userImage,
    required this.userName,
  });
}
