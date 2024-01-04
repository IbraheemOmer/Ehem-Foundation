import 'package:ehem_foundation_project/core/app_export.dart';
import 'package:flutter/material.dart';

class AddAPostThreeScreen extends StatelessWidget {
  const AddAPostThreeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 16.v),
                child: Column(children: [
                  _buildWritePostRow(context),
                  Spacer(flex: 36),
                  _buildNinetySevenRow(context),
                  Spacer(flex: 63)
                ]))));
  }

  /// Section Widget
  Widget _buildWritePostRow(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 11.v),
        decoration: AppDecoration.outlineOnPrimary3,
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
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
                    onTap: () {
                      onTapImgImage(context);
                    })
              ]),
          SizedBox(height: 10.v),
          CustomImageView(
              imagePath: ImageConstant.imgFrame92030,
              height: 120.v,
              width: 328.h),
          SizedBox(height: 27.v),
          Align(
              alignment: Alignment.centerLeft,
              child: Container(
                  width: 296.h,
                  margin: EdgeInsets.only(right: 31.h),
                  child: Text(
                      "sit amet dui auctor dictum egetsit amet dui auctor dictum eget",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: theme.textTheme.bodyLarge))),
          SizedBox(height: 3.v)
        ]));
  }

  /// Section Widget
  Widget _buildNinetySevenRow(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.h),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Container(
              height: 24.adaptSize,
              width: 24.adaptSize,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4.h),
                  border:
                      Border.all(color: theme.colorScheme.primary, width: 1.h),
                  image: DecorationImage(
                      image: AssetImage(ImageConstant.imgFrame9202124x24),
                      fit: BoxFit.cover))),
          Spacer(),
          CustomImageView(
              imagePath: ImageConstant.imgTeenyiconsAttachOutline,
              height: 24.adaptSize,
              width: 24.adaptSize),
          CustomImageView(
              imagePath: ImageConstant.imgFaSend,
              height: 24.adaptSize,
              width: 24.adaptSize,
              margin: EdgeInsets.only(left: 16.h),
              onTap: () {
                onTapImgFaSend(context);
              })
        ]));
  }

  /// Navigates to the homeContainerScreen when the action is triggered.
  onTapImgImage(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homeContainerScreen);
  }

  /// Navigates to the homeContainerScreen when the action is triggered.
  onTapImgFaSend(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homeContainerScreen);
  }
}
