import "package:flutter_qiita/models/user.dart";

class Article {
  Article({
    required this.title,
    required this.user,
    this.likesCount = 0,
    this.tags = const [],
    required this.createdAt,
    required this.url,
  });

  final String title;
  final User user;
  final int likesCount;
  final List<String> tags;
  final DateTime createdAt;
  final String url;

  factory Article.fromJson(dynamic data) {
    return Article(
      title: data["title"] as String,
      user: User.fromJson(data["user"]),
      url: data["url"] as String,
      createdAt: DateTime.parse(data["created_at"] as String),
      likesCount: data["likes_count"] as int,
      tags: List<String>.from(data["tags"].map((tag) => tag["name"])),
    );
  }
}
