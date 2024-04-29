import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ehem_foundation_project/classes/comment.dart';

class Post {
  late String text;
  late Timestamp timestamp;
  late String name;
  late String imageUrl;
  late int likes;
  bool isHidden;

  // late List<Comment> comments;

  Post({
    required this.text,
    required this.timestamp,
    required this.name,
    required this.imageUrl,
    required this.likes,
    this.isHidden = false

    // required this.comments,
  });

  Map<String, dynamic> toMap() {
    return {
      'text': text,
      'timestamp': timestamp,
      'name': name,
      'imageUrl': imageUrl,
      'likes': likes,
      'isHidden': isHidden,
      // 'comments': comments.map((comment) => comment.toMap()).toList(),
    };
  }

  factory Post.fromMap(Map<String, dynamic> map) {
    return Post(
      text: map['text'],
      timestamp: map['timestamp'],
      name: map['name'],
      imageUrl: map['imageUrl'],
      likes: map['likes'],
      isHidden: map['isHidden'] ?? false,
      // comments: List<Comment>.from(
      //     (map['comments'] as List).map((comment) => Comment.fromMap(comment))),
    );
  }
}
