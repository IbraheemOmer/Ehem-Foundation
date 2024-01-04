import 'package:ehem_foundation_project/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Userprofile1ItemWidget extends StatelessWidget {
  Userprofile1ItemWidget({
    Key? key,
    this.onTapUserProfile,
  }) : super(
          key: key,
        );

  VoidCallback? onTapUserProfile;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapUserProfile!.call();
      },
      child: Container(
        padding: EdgeInsets.only(
          top: 8.v,
          bottom: 7.v,
        ),
        decoration: AppDecoration.outlineOnPrimary1,
        child: Row(
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgPlay,
              height: 56.adaptSize,
              width: 56.adaptSize,
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 16.h,
                top: 2.v,
                bottom: 2.v,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Name",
                    style: theme.textTheme.titleSmall,
                  ),
                  SizedBox(height: 14.v),
                  Opacity(
                    opacity: 0.5,
                    child: Text(
                      "Last seen yesterday",
                      style: CustomTextStyles.bodySmallOnPrimary,
                    ),
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
