import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ehem_foundation_project/core/app_export.dart';
import 'package:ehem_foundation_project/presentation/home_page/home_page.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class AddAPostOneScreen extends StatefulWidget {
  AddAPostOneScreen({Key? key}) : super(key: key);

  @override
  _AddAPostOneScreenState createState() => _AddAPostOneScreenState();
}

class _AddAPostOneScreenState extends State<AddAPostOneScreen> {
  TextEditingController postTextController = TextEditingController();
  String imageUrl =
      "https://cdn.dribbble.com/users/22157/screenshots/4413334/media/5e5a6a2ce7da758b79a9d91e1a3b7232.jpg?resize=400x0";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 16.v),
              _buildWritePostRow(context),
              Spacer(),
              _buildSubmitButton(imageUrl),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildWritePostRow(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 11.v),
        decoration: AppDecoration.outlineOnPrimary3,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Write Post", style: theme.textTheme.titleMedium),
                CustomImageView(
                  imagePath: ImageConstant.imgMaterialSymbolsClose,
                  height: 16.adaptSize,
                  width: 16.adaptSize,
                  margin: EdgeInsets.only(top: 4.v, bottom: 5.v),
                ),
              ],
            ),
            SizedBox(height: 21.v),
            TextField(
              controller: postTextController,
              decoration: InputDecoration(
                hintText: "What's on your mind?",
              ),
              maxLines: null,
            ),
            SizedBox(height: 21.v),
          ],
        ),
      ),
    );
  }

  Widget _buildSubmitButton(imageUrl) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          if (imageUrl != null)
            Container(
              width: 60,
              height: 60,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.network(
                  imageUrl,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ElevatedButton(
            onPressed: () {
              savePostToFirebase();
            },
            style: ElevatedButton.styleFrom(
              minimumSize: Size(60, 60),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
            ),
            child: Text("Post", style: TextStyle(color: Colors.white)),
          )
        ],
      ),
    );
  }

  void savePostToFirebase() async {
    String text = postTextController.text;
    String name = "John";
    String imageUrl =
        "https://cdn.dribbble.com/users/22157/screenshots/4413334/media/5e5a6a2ce7da758b79a9d91e1a3b7232.jpg?resize=400x0";
    int likes = 0;
    Timestamp timestamp = Timestamp.now();

    // Save post data to Firebase
    await FirebaseFirestore.instance.collection('posts').add({
      'text': text,
      'name': name,
      'imageUrl': imageUrl,
      'likes': likes,
      'timestamp': timestamp,
    });

    // Navigate to the home page or perform any other action
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => HomePage()),
    );
  }
}
