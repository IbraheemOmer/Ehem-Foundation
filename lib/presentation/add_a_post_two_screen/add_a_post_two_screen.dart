import 'package:ehem_foundation_project/core/app_export.dart';
import 'package:flutter/material.dart';

class AddAPostTwoScreen extends StatelessWidget {
  const AddAPostTwoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 16.v),
                child: Column(children: [
                  _buildWritePostRow(context),
                  Spacer(flex: 41),
                  _buildViewRow(context),
                  Spacer(flex: 58)
                ]))));
  }

  /// Section Widget
  Widget _buildWritePostRow(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 11.v),
        decoration: AppDecoration.outlineOnPrimary3,
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
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
          SizedBox(height: 20.v),
          Text("sit amet dui auctor dictum eget",
              style: theme.textTheme.bodyLarge),
          SizedBox(height: 20.v)
        ]));
  }

  /// Section Widget
  Widget _buildViewRow(BuildContext context) {
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
              width: 24.adaptSize,
              onTap: () {
                onTapImgImage1(context);
              }),
          CustomImageView(
              imagePath: ImageConstant.imgFaSend,
              height: 24.adaptSize,
              width: 24.adaptSize,
              margin: EdgeInsets.only(left: 16.h))
        ]));
  }

  /// Navigates to the homeContainerScreen when the action is triggered.
  onTapImgImage(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homeContainerScreen);
  }

  /// Navigates to the addAPostThreeScreen when the action is triggered.
  onTapImgImage1(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.addAPostThreeScreen);
  }
}
