import 'package:ehem_foundation_project/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class UserprofileItemWidget extends StatelessWidget {
  UserprofileItemWidget({
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
                      CustomImageView(
                        imagePath: ImageConstant.imgFrame92021,
                        height: 32.adaptSize,
                        width: 32.adaptSize,
                        radius: BorderRadius.circular(
                          4.h,
                        ),
                        margin: EdgeInsets.only(
                          top: 1.v,
                          bottom: 2.v,
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Name",
                            style: theme.textTheme.labelLarge,
                          ),
                          SizedBox(height: 4.v),
                          Opacity(
                            opacity: 0.7,
                            child: Text(
                              "1h",
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
                "sit amet dui auctor dictum eget a elit. Pellentesque varius diam risus, ut condimentum lorem volutpat vel. Nam vel orci pharetra eros pulvinar cursus nec quis tellus. sit amet dui auctor dictum egelus. ",
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
                  CustomImageView(
                    imagePath: ImageConstant.imgLetsIconsCommentLight,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgSolarLikeBroken,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                    margin: EdgeInsets.only(left: 16.h),
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
