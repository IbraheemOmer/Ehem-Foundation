import 'package:cloud_firestore/cloud_firestore.dart';

class user {
  late String name;
  late String imageUrl; // New field for image URL or path

  user({
    required this.name,
    required this.imageUrl,
  });

  // Convert the user object to a Map
  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'imageUrl': imageUrl,
    };
  }

  // Create a user object from a Map
  factory user.fromMap(Map<String, dynamic> map) {
    return user(
      name: map['name'],
      imageUrl: map['imageUrl'],
    );
  }
}
