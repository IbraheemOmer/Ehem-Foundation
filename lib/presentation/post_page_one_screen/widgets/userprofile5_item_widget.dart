import 'package:ehem_foundation_project/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Userprofile5ItemWidget extends StatelessWidget {
  const Userprofile5ItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgFrame9202232x32,
          height: 32.adaptSize,
          width: 32.adaptSize,
          radius: BorderRadius.circular(
            4.h,
          ),
          margin: EdgeInsets.only(
            top: 1.v,
            bottom: 36.v,
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(left: 8.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Name",
                  style: theme.textTheme.titleSmall,
                ),
                SizedBox(height: 5.v),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 1.v),
                      child: Text(
                        "sit amet dui auctor dictum eget a elit. ",
                        style: theme.textTheme.bodyMedium,
                      ),
                    ),
                    Opacity(
                      opacity: 0.7,
                      child: CustomImageView(
                        imagePath: ImageConstant.imgSolarLikeBroken,
                        height: 16.adaptSize,
                        width: 16.adaptSize,
                        margin: EdgeInsets.only(
                          left: 46.h,
                          bottom: 5.v,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 7.v),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Opacity(
                      opacity: 0.7,
                      child: Padding(
                        padding: EdgeInsets.only(bottom: 1.v),
                        child: Text(
                          "1h",
                          style: CustomTextStyles.bodySmallOnPrimary_1,
                        ),
                      ),
                    ),
                    Opacity(
                      opacity: 0.7,
                      child: Padding(
                        padding: EdgeInsets.only(left: 16.h),
                        child: Text(
                          "Reply",
                          style: CustomTextStyles.bodySmallOnPrimary_1,
                        ),
                      ),
                    ),
                    Opacity(
                      opacity: 0.7,
                      child: CustomImageView(
                        imagePath: ImageConstant.imgTablerDotsOnprimary8x10,
                        height: 8.v,
                        width: 10.h,
                        margin: EdgeInsets.only(
                          left: 16.h,
                          top: 2.v,
                          bottom: 4.v,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
