import 'package:ehem_foundation_project/core/app_export.dart';
import 'package:ehem_foundation_project/widgets/app_bar/appbar_leading_image.dart';
import 'package:ehem_foundation_project/widgets/app_bar/appbar_subtitle.dart';
import 'package:ehem_foundation_project/widgets/app_bar/appbar_trailing_image.dart';
import 'package:ehem_foundation_project/widgets/app_bar/custom_app_bar.dart';
import 'package:ehem_foundation_project/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class SendingAMessageScreen extends StatelessWidget {
  SendingAMessageScreen({Key? key}) : super(key: key);

  TextEditingController messageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 8.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                              margin: EdgeInsets.only(left: 16.h, right: 80.h),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 8.h, vertical: 5.v),
                              decoration: AppDecoration.fillOnErrorContainer
                                  .copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.customBorderTL16),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SizedBox(height: 2.v),
                                    Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          CustomImageView(
                                              imagePath: ImageConstant
                                                  .imgImagePlaceholder152x248,
                                              height: 152.v,
                                              width: 248.h,
                                              radius:
                                                  BorderRadius.circular(8.h)),
                                          SizedBox(height: 11.v),
                                          Text(
                                              "Can you take a look at this please",
                                              style: theme.textTheme.bodyMedium)
                                        ]),
                                    SizedBox(height: 5.v),
                                    Opacity(
                                        opacity: 0.5,
                                        child: Text("16.46",
                                            style: CustomTextStyles
                                                .bodySmallOnPrimary9))
                                  ]))),
                      SizedBox(height: 16.v),
                      Container(
                          margin: EdgeInsets.only(left: 178.h, right: 16.h),
                          padding: EdgeInsets.all(8.h),
                          decoration: AppDecoration.fillPrimary.copyWith(
                              borderRadius:
                                  BorderRadiusStyle.customBorderTL161),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(height: 2.v),
                                Text("Sure, Give me a minute",
                                    style: CustomTextStyles.bodyMediumGray100),
                                SizedBox(height: 8.v),
                                Text("16.50 · Read",
                                    style: CustomTextStyles.bodySmallGray100_1)
                              ])),
                      SizedBox(height: 16.v),
                      _buildMessageFrame(context),
                      SizedBox(height: 16.v),
                      Padding(
                          padding: EdgeInsets.only(left: 116.h, right: 16.h),
                          child: _buildPersonalChatBubble(context,
                              thankYouText: "Thank you so much for your help",
                              readText: "17:03 · Read")),
                      SizedBox(height: 5.v)
                    ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 64.v,
        leadingWidth: 40.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 16.h, top: 24.v, bottom: 16.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        title:
            AppbarSubtitle(text: "Name ", margin: EdgeInsets.only(left: 16.h)),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgTablerDotsOnprimary,
              margin: EdgeInsets.fromLTRB(16.h, 24.v, 16.h, 16.v))
        ]);
  }

  /// Section Widget
  Widget _buildMessageFrame(BuildContext context) {
    return SizedBox(
        height: 144.v,
        width: double.maxFinite,
        child: Stack(alignment: Alignment.topCenter, children: [
          Align(
              alignment: Alignment.center,
              child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.h),
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                            padding: EdgeInsets.only(left: 100.h),
                            child: _buildPersonalChatBubble(context,
                                thankYouText:
                                    "I guess this is really helpful to me",
                                readText: "17:00 · Read")),
                        SizedBox(height: 16.v),
                        Container(
                            margin: EdgeInsets.only(right: 64.h),
                            padding: EdgeInsets.symmetric(
                                horizontal: 8.h, vertical: 5.v),
                            decoration: AppDecoration.fillOnErrorContainer
                                .copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.customBorderTL16),
                            child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                      width: 243.h,
                                      child: Text(
                                          "But don’t worry cause we are all learning here",
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                          style: theme.textTheme.bodyMedium!
                                              .copyWith(height: 1.25))),
                                  SizedBox(height: 4.v),
                                  Opacity(
                                      opacity: 0.5,
                                      child: Text("17:01",
                                          style: CustomTextStyles
                                              .bodySmallLatoOnPrimary))
                                ]))
                      ]))),
          Align(
              alignment: Alignment.topCenter,
              child: Container(
                  width: double.maxFinite,
                  margin: EdgeInsets.only(top: 26.v, bottom: 46.v),
                  padding: EdgeInsets.symmetric(vertical: 16.v),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadiusStyle.roundedBorder8),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgFluentAttach16Regular,
                            height: 24.adaptSize,
                            width: 24.adaptSize,
                            margin: EdgeInsets.symmetric(vertical: 8.v),
                            onTap: () {
                              onTapImgImage(context);
                            }),
                        CustomTextFormField(
                            width: 248.h,
                            controller: messageController,
                            hintText: "Write a message",
                            hintStyle: CustomTextStyles.bodyMediumOnPrimary13,
                            textInputAction: TextInputAction.done),
                        CustomImageView(
                            imagePath: ImageConstant.imgFaSend,
                            height: 24.adaptSize,
                            width: 24.adaptSize,
                            margin: EdgeInsets.symmetric(vertical: 8.v))
                      ])))
        ]));
  }

  /// Common widget
  Widget _buildPersonalChatBubble(
    BuildContext context, {
    required String thankYouText,
    required String readText,
  }) {
    return Container(
        padding: EdgeInsets.all(8.h),
        decoration: AppDecoration.fillPrimary
            .copyWith(borderRadius: BorderRadiusStyle.customBorderTL161),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 3.v),
              Text(thankYouText,
                  style: CustomTextStyles.bodyMediumGray100
                      .copyWith(color: appTheme.gray100)),
              SizedBox(height: 8.v),
              Text(readText,
                  style: CustomTextStyles.bodySmallGray100_1
                      .copyWith(color: appTheme.gray100))
            ]));
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }

  /// Navigates to the sendingAttachmentsOneScreen when the action is triggered.
  onTapImgImage(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.sendingAttachmentsOneScreen);
  }
}
