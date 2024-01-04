import 'package:ehem_foundation_project/core/app_export.dart';
import 'package:ehem_foundation_project/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class WtiteACommentScreen extends StatelessWidget {
  WtiteACommentScreen({Key? key}) : super(key: key);

  TextEditingController commentController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 16.v),
                child: Column(children: [
                  _buildFrame(context),
                  Spacer(flex: 40),
                  _buildWriteAComment(context),
                  Spacer(flex: 59)
                ]))));
  }

  /// Section Widget
  Widget _buildFrame(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 11.v),
        decoration: AppDecoration.outlineOnPrimary2,
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomImageView(
                    imagePath: ImageConstant.imgFrame92021,
                    height: 48.adaptSize,
                    width: 48.adaptSize,
                    radius: BorderRadius.circular(4.h),
                    margin: EdgeInsets.only(top: 4.v)),
                Padding(
                    padding: EdgeInsets.only(left: 16.h),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Name", style: theme.textTheme.titleMedium),
                          SizedBox(height: 9.v),
                          Opacity(
                              opacity: 0.7,
                              child: Text("1h",
                                  style: CustomTextStyles.bodySmallOnPrimary12))
                        ])),
                Spacer(),
                CustomImageView(
                    imagePath: ImageConstant.imgTablerDots,
                    height: 16.adaptSize,
                    width: 16.adaptSize,
                    margin: EdgeInsets.only(top: 4.v, bottom: 32.v))
              ]),
          SizedBox(height: 16.v),
          Container(
              width: 321.h,
              margin: EdgeInsets.only(right: 6.h),
              child: Text(
                  "sit amet dui auctor dictum eget a elit. Pellentesque varius diam risus, ut condimentum lorem volutpat vel. Nam vel orci pharetra eros pulvinar cursus nec quis tellus. sit amet dui auctor dictum egelus. ",
                  maxLines: 4,
                  overflow: TextOverflow.ellipsis,
                  style: theme.textTheme.bodyMedium)),
          SizedBox(height: 16.v),
          Align(
              alignment: Alignment.centerLeft,
              child: Row(children: [
                CustomImageView(
                    imagePath: ImageConstant.imgLetsIconsCommentLight,
                    height: 24.adaptSize,
                    width: 24.adaptSize),
                CustomImageView(
                    imagePath: ImageConstant.imgSolarLikeBrokenPrimary,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                    margin: EdgeInsets.only(left: 16.h)),
                Padding(
                    padding: EdgeInsets.only(top: 10.v),
                    child: Text("3",
                        style: CustomTextStyles.bodySmallOnPrimaryContainer))
              ])),
          SizedBox(height: 3.v)
        ]));
  }

  /// Section Widget
  Widget _buildWriteAComment(BuildContext context) {
    return Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(vertical: 16.v),
        decoration: AppDecoration.background
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          CustomImageView(
              imagePath: ImageConstant.imgArrowLeft,
              height: 24.adaptSize,
              width: 24.adaptSize,
              margin: EdgeInsets.symmetric(vertical: 8.v),
              onTap: () {
                onTapImgArrowLeft(context);
              }),
          CustomTextFormField(
              width: 248.h,
              controller: commentController,
              hintText: "Write a comment",
              hintStyle: CustomTextStyles.bodyMediumOnPrimary13,
              textInputAction: TextInputAction.done),
          CustomImageView(
              imagePath: ImageConstant.imgFaSend,
              height: 24.adaptSize,
              width: 24.adaptSize,
              margin: EdgeInsets.symmetric(vertical: 8.v))
        ]));
  }

  /// Navigates to the homeContainerScreen when the action is triggered.
  onTapImgArrowLeft(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homeContainerScreen);
  }
}
