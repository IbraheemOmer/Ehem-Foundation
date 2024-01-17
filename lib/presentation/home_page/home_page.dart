import 'package:cloud_firestore/cloud_firestore.dart';

import '../home_page/widgets/userprofile_item_widget.dart';
import 'package:ehem_foundation_project/core/app_export.dart';
import 'package:ehem_foundation_project/widgets/app_bar/appbar_subtitle.dart';
import 'package:ehem_foundation_project/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:ehem_foundation_project/widgets/app_bar/appbar_trailing_image.dart';
import 'package:ehem_foundation_project/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:ehem_foundation_project/classes/post.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final CollectionReference posts =
      FirebaseFirestore.instance.collection('posts');

  List<Post> postList = [];

  Future<void> fetchAllPosts() async {
    QuerySnapshot querySnapshot = await posts.get();
    setState(() {
      postList = querySnapshot.docs
          .map((doc) => Post.fromMap(doc.data() as Map<String, dynamic>))
          .toList();
    });
  }

  @override
  void initState() {
    super.initState();
    fetchAllPosts();
  }

  void clearScreen() {
    setState(() {
      postList.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Padding(
          padding: EdgeInsets.only(top: 15.v),
          child: ListView.builder(
            physics: BouncingScrollPhysics(),
            itemCount: postList.length,
            itemBuilder: (context, index) {
              return UserprofileItemWidget(
                text: postList[index].text,
                timestamp: postList[index].timestamp,
                likes: postList[index].likes,
                imageUrl: postList[index].imageUrl, 
                name: postList[index].name,
                // user: postList[index].user,
                onTapUserProfile: () {
                  onTapUserProfile(context);
                },
              );
            },
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        title:
            AppbarSubtitle(text: "Home", margin: EdgeInsets.only(left: 17.h)),
        actions: [
          AppbarSubtitleOne(
              text: "Recent",
              margin: EdgeInsets.only(left: 25.h, top: 18.v, right: 18.h)),
          AppbarTrailingImage(
              imagePath: ImageConstant.imgArrowDownOnprimary,
              margin: EdgeInsets.fromLTRB(15.h, 18.v, 43.h, 2.v))
        ]);
  }

  /// Navigates to the postPageOneScreen when the action is triggered.
  onTapUserProfile(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.postPageOneScreen);
  }
}
