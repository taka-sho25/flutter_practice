class User {
  User({
    required this.id,
    required this.profileImageUrl,
  });

  final String id;
  final String profileImageUrl;

  factory User.fromJson(dynamic data) {
    return User(
      id: data["id"] as String,
      profileImageUrl: data["profile_image_url"] as String,
    );
  }
}
