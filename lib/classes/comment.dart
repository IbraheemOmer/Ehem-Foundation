import 'package:cloud_firestore/cloud_firestore.dart';

class Comment {
  late String name;
  late String text;
  late Timestamp timestamp;
  late int likes; 
  late String imageUrl; // New field for image URL or path

  Comment({
    required this.name,
    required this.text,
    required this.timestamp,
    required this.imageUrl,
    required this.likes, 
  });

  // Convert the Comment object to a Map
  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'text': text,
      'timestamp': timestamp,
      'imageUrl': imageUrl,
      'likes' : likes, 
    };
  }

  // Create a Comment object from a Map
  factory Comment.fromMap(Map<String, dynamic> map) {
    return Comment(
      name: map['name'],
      text: map['text'],
      timestamp: map['timestamp'],
      imageUrl: map['imageUrl'],
      likes: map['likes'], 
    );
  }
}
