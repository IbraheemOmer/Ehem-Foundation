import 'package:ehem_foundation_project/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Fileviewer1ItemWidget extends StatelessWidget {
  const Fileviewer1ItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: 0.4,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 7.h,
          vertical: 1.v,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadiusStyle.roundedBorder12,
          image: DecorationImage(
            image: AssetImage(
              ImageConstant.imgFrame92046,
            ),
            fit: BoxFit.cover,
          ),
        ),
        foregroundDecoration: AppDecoration
            .gradientOnErrorContainerToOnPrimaryContainer1
            .copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder12,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SizedBox(height: 6.v),
            Align(
              alignment: Alignment.centerRight,
              child: Container(
                height: 16.adaptSize,
                width: 16.adaptSize,
                padding: EdgeInsets.all(1.h),
                decoration: AppDecoration.fillGray100.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder4,
                ),
                child: CustomImageView(
                  imagePath: ImageConstant.imgThumbsUp,
                  height: 13.v,
                  width: 12.h,
                  alignment: Alignment.center,
                ),
              ),
            ),
            SizedBox(height: 52.v),
            Text(
              "File name",
              style: CustomTextStyles.bodySmallGray10012,
            ),
          ],
        ),
      ),
    );
  }
}
