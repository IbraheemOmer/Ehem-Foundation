import 'package:cloud_firestore/cloud_firestore.dart';

class Comment {
  late String text;
  late Timestamp timestamp;
  late String name;
  late String imageUrl;
  late int likes;

  Comment({
    required this.text,
    required this.timestamp,
    required this.name,
    required this.imageUrl,
    required this.likes,
  });

  // Convert the Comment object to a Map
  Map<String, dynamic> toMap() {
    return {
      'text': text,
      'timestamp': timestamp,
      'name': name,
      'imageUrl': imageUrl,
      'likes': likes,
    };
  }

  // Create a Comment object from a Map
  factory Comment.fromMap(Map<String, dynamic> map) {
    return Comment(
      text: map['text'],
      timestamp: map['timestamp'],
      name: map['name'],
      imageUrl: map['imageUrl'],
      likes: map['likes'],
    );
  }
}
