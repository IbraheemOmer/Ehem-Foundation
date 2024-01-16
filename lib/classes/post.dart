import 'package:cloud_firestore/cloud_firestore.dart';

class Post {
  late String text;
  late Timestamp timestamp;
  late int likes; 
  

  Post({
    required this.text,
    required this.timestamp,
    required this.likes, 
  });

  // Convert the Post object to a Map
  Map<String, dynamic> toMap() {
    return {
      'text': text,
      'timestamp': timestamp,
      'likes' : likes, 
    };
  }

  // Create a Post object from a Map
  factory Post.fromMap(Map<String, dynamic> map) {
    return Post(
      text: map['text'],
      timestamp: map['timestamp'],
      likes: map['likes'], 
    );
  }
}
