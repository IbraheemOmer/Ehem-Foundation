import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ehem_foundation_project/classes/comment.dart';
import 'package:ehem_foundation_project/classes/post.dart';
import 'package:ehem_foundation_project/core/app_export.dart';
import 'package:flutter/material.dart';

class UserprofileItemWidget extends StatelessWidget {
  final String text;
  final Timestamp timestamp;
  final int likes;
  final String imageUrl;
  final String name;
  // final List<Comment> comments;

  UserprofileItemWidget({
    required this.text,
    required this.timestamp,
    required this.likes,
    required this.imageUrl,
    required this.name,
    // required this.comments,
    Key? key,
    this.onTapUserProfile,
  }) : super(key: key);

  VoidCallback? onTapUserProfile;

  String calculateTimeDifference(Timestamp timestamp) {
    DateTime now = DateTime.now();
    DateTime dateTime = timestamp.toDate();
    Duration difference = now.difference(dateTime);

    if (difference.inDays >= 1) {
      if (difference.inDays >= 7) {
        int weeks = difference.inDays ~/ 7;
        return '$weeks ${weeks == 1 ? 'w' : 'w'}';
      } else {
        return '${difference.inDays} ${difference.inDays == 1 ? 'd' : 'd'}';
      }
    } else {
      return '${difference.inHours} ${difference.inHours == 1 ? 'h' : 'h'}';
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => FullPostPage(
              post: Post(
                text: text,
                timestamp: timestamp,
                likes: likes,
                imageUrl: imageUrl,
                name: name,
                // comments: [],
              ),
            ),
          ),
        );
      },
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 15.h,
          vertical: 14.v,
        ),
        decoration: AppDecoration.outlineOnPrimary,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 73.h,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CachedNetworkImage(
                        imageUrl: imageUrl,
                        imageBuilder: (context, imageProvider) => Container(
                          width: 32.adaptSize,
                          height: 32.adaptSize,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: imageProvider,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            name,
                            style: theme.textTheme.labelLarge,
                          ),
                          SizedBox(height: 4.v),
                          Opacity(
                            opacity: 0.7,
                            child: Text(
                              calculateTimeDifference(timestamp),
                              style: CustomTextStyles.bodySmallOnPrimary8,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgTablerDots,
                  height: 16.adaptSize,
                  width: 16.adaptSize,
                  margin: EdgeInsets.only(bottom: 18.v),
                ),
              ],
            ),
            SizedBox(height: 15.v),
            Container(
              width: 321.h,
              margin: EdgeInsets.only(right: 6.h),
              child: Text(
                text,
                maxLines: 4,
                overflow: TextOverflow.ellipsis,
                style: theme.textTheme.bodyMedium,
              ),
            ),
            SizedBox(height: 16.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Row(
                children: [
                  Row(
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgLetsIconsCommentLight,
                        height: 24.adaptSize,
                        width: 24.adaptSize,
                      ),
                      SizedBox(width: 8.h),
                      Text(
                        likes.toString(),
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                  SizedBox(width: 8.h),
                  Row(
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgSolarLikeBroken,
                        height: 24.adaptSize,
                        width: 24.adaptSize,
                      ),
                      SizedBox(width: 8.h),
                      Text(
                        likes.toString(),
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class FullPostPage extends StatelessWidget {
  final Post post;

  FullPostPage({required this.post});

  String calculateTimeDifference(Timestamp timestamp) {
    DateTime now = DateTime.now();
    DateTime dateTime = timestamp.toDate();
    Duration difference = now.difference(dateTime);

    if (difference.inDays >= 1) {
      if (difference.inDays >= 7) {
        int weeks = difference.inDays ~/ 7;
        return '$weeks ${weeks == 1 ? 'w' : 'w'}';
      } else {
        return '${difference.inDays} ${difference.inDays == 1 ? 'd' : 'd'}';
      }
    } else {
      return '${difference.inHours} ${difference.inHours == 1 ? 'h' : 'h'}';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Full Post'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 73.h,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CachedNetworkImage(
                        imageUrl: post.imageUrl,
                        imageBuilder: (context, imageProvider) => Container(
                          width: 32.adaptSize,
                          height: 32.adaptSize,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: imageProvider,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            post.name,
                            style: Theme.of(context).textTheme.labelLarge,
                          ),
                          SizedBox(height: 4.v),
                          Opacity(
                            opacity: 0.7,
                            child: Text(
                              calculateTimeDifference(post.timestamp),
                              style: CustomTextStyles.bodySmallOnPrimary8,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgTablerDots,
                  height: 16.adaptSize,
                  width: 16.adaptSize,
                  margin: EdgeInsets.only(bottom: 18.v),
                ),
              ],
            ),
            SizedBox(height: 15.v),
            Container(
              width: 321.h,
              margin: EdgeInsets.only(right: 6.h),
              child: Text(
                post.text,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ),
            SizedBox(height: 16.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Row(
                children: [
                  Row(
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgLetsIconsCommentLight,
                        height: 24.adaptSize,
                        width: 24.adaptSize,
                      ),
                      SizedBox(width: 8.h),
                      Text(
                        post.likes.toString(),
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                  SizedBox(width: 8.h),
                  Row(
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgSolarLikeBroken,
                        height: 24.adaptSize,
                        width: 24.adaptSize,
                      ),
                      SizedBox(width: 8.h),
                      Text(
                        post.likes.toString(),
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
