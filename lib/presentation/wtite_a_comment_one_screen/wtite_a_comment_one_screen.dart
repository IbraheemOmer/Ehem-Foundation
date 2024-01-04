import 'package:ehem_foundation_project/core/app_export.dart';
import 'package:ehem_foundation_project/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class WtiteACommentOneScreen extends StatelessWidget {
  WtiteACommentOneScreen({Key? key}) : super(key: key);

  TextEditingController nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  SizedBox(height: 16.v),
                  Expanded(
                      child: SingleChildScrollView(
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                        _buildFrame(context),
                        SizedBox(height: 19.v),
                        Align(
                            alignment: Alignment.centerRight,
                            child: Padding(
                                padding: EdgeInsets.only(right: 24.h),
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Text("Recent",
                                          style: CustomTextStyles.bodyMedium13),
                                      CustomImageView(
                                          imagePath: ImageConstant
                                              .imgArrowDownOnprimary,
                                          height: 16.adaptSize,
                                          width: 16.adaptSize,
                                          margin: EdgeInsets.only(
                                              left: 15.h, bottom: 2.v))
                                    ]))),
                        SizedBox(height: 24.v),
                        _buildNameStack(context),
                        SizedBox(height: 37.v),
                        Padding(
                            padding: EdgeInsets.symmetric(horizontal: 16.h),
                            child: _buildNameRow(context,
                                userImage: ImageConstant.imgFrame9202232x32,
                                nameText: "Name",
                                descriptionText:
                                    "sit amet dui auctor dictum eget a elit. ",
                                p1hText: "1h",
                                replyText: "Reply")),
                        SizedBox(height: 41.v),
                        Padding(
                            padding: EdgeInsets.symmetric(horizontal: 16.h),
                            child: _buildNameRow(context,
                                userImage: ImageConstant.imgFrame920221,
                                nameText: "Name",
                                descriptionText:
                                    "sit amet dui auctor dictum eget a elit. ",
                                p1hText: "1h",
                                replyText: "Reply")),
                        SizedBox(height: 43.v),
                        Padding(
                            padding: EdgeInsets.only(left: 56.h),
                            child: Text("Name",
                                style: theme.textTheme.titleSmall)),
                        SizedBox(height: 8.v),
                        Padding(
                            padding: EdgeInsets.only(left: 56.h, right: 16.h),
                            child: _buildSitAmetDuiAuctorRow(context,
                                dynamicText:
                                    "sit amet dui auctor dictum eget a elit.sit amet dui auctor dictum eget a elit. sit amet dui auctor dictum eget a elit.  ")),
                        SizedBox(height: 16.v),
                        Padding(
                            padding: EdgeInsets.only(left: 56.h),
                            child: _buildH(context,
                                dynamicText: "1h", dynamicText1: "Reply"))
                      ])))
                ]))));
  }

  /// Section Widget
  Widget _buildFrame(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 11.v),
        decoration: AppDecoration.outlineOnPrimary2,
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            CustomImageView(
                imagePath: ImageConstant.imgFrame92021,
                height: 48.adaptSize,
                width: 48.adaptSize,
                radius: BorderRadius.circular(4.h),
                margin: EdgeInsets.only(top: 4.v)),
            Expanded(
                child: Padding(
                    padding: EdgeInsets.only(left: 16.h),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Name",
                                    style: theme.textTheme.titleMedium),
                                CustomImageView(
                                    imagePath: ImageConstant.imgTablerDots,
                                    height: 16.adaptSize,
                                    width: 16.adaptSize,
                                    margin:
                                        EdgeInsets.only(top: 4.v, bottom: 5.v))
                              ]),
                          SizedBox(height: 9.v),
                          Opacity(
                              opacity: 0.7,
                              child: Text("1h",
                                  style: CustomTextStyles.bodySmallOnPrimary12))
                        ])))
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
                Padding(
                    padding: EdgeInsets.only(top: 10.v),
                    child: Text("3",
                        style: CustomTextStyles.bodySmallOnPrimaryContainer)),
                CustomImageView(
                    imagePath: ImageConstant.imgSolarLikeBrokenPrimary,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                    margin: EdgeInsets.only(left: 11.h)),
                Padding(
                    padding: EdgeInsets.only(top: 10.v),
                    child: Text("3",
                        style: CustomTextStyles.bodySmallOnPrimaryContainer))
              ])),
          SizedBox(height: 3.v)
        ]));
  }

  /// Section Widget
  Widget _buildNameStack(BuildContext context) {
    return SizedBox(
        height: 202.v,
        width: double.maxFinite,
        child: Stack(alignment: Alignment.bottomCenter, children: [
          Align(
              alignment: Alignment.center,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                        padding: EdgeInsets.only(top: 1.v, bottom: 88.v),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                  height: 88.v,
                                  width: 32.h,
                                  child: Stack(
                                      alignment: Alignment.topCenter,
                                      children: [
                                        Align(
                                            alignment: Alignment.bottomRight,
                                            child: Padding(
                                                padding:
                                                    EdgeInsets.only(right: 8.h),
                                                child: SizedBox(
                                                    height: 64.v,
                                                    child: VerticalDivider(
                                                        width: 2.h,
                                                        thickness: 2.v,
                                                        color: theme.colorScheme
                                                            .onPrimary)))),
                                        CustomImageView(
                                            imagePath:
                                                ImageConstant.imgFrame92022,
                                            height: 32.adaptSize,
                                            width: 32.adaptSize,
                                            radius: BorderRadius.circular(4.h),
                                            alignment: Alignment.topCenter)
                                      ])),
                              CustomImageView(
                                  imagePath: ImageConstant.imgFrame9202132x32,
                                  height: 24.adaptSize,
                                  width: 24.adaptSize,
                                  radius: BorderRadius.circular(4.h),
                                  alignment: Alignment.centerRight)
                            ])),
                    Expanded(
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                          Text("Name", style: theme.textTheme.titleSmall),
                          SizedBox(height: 7.v),
                          SizedBox(
                              width: 288.h,
                              child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                        "sit amet dui auctor dictum eget a elit. ",
                                        style: theme.textTheme.bodyMedium),
                                    Spacer(),
                                    Padding(
                                        padding: EdgeInsets.only(top: 7.v),
                                        child: Text("3",
                                            style: CustomTextStyles
                                                .bodySmallOnPrimaryContainer)),
                                    CustomImageView(
                                        imagePath: ImageConstant
                                            .imgSolarLikeBrokenPrimary,
                                        height: 16.adaptSize,
                                        width: 16.adaptSize,
                                        margin: EdgeInsets.only(
                                            left: 2.h, top: 2.v, bottom: 3.v))
                                  ])),
                          SizedBox(height: 6.v),
                          _buildH(context,
                              dynamicText: "1h", dynamicText1: "Reply"),
                          SizedBox(height: 18.v),
                          Padding(
                              padding: EdgeInsets.only(left: 5.h),
                              child: Text("Name",
                                  style: CustomTextStyles.labelLarge12)),
                          SizedBox(height: 9.v),
                          Container(
                              width: 283.h,
                              margin: EdgeInsets.only(left: 5.h),
                              child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                        padding: EdgeInsets.only(bottom: 18.v),
                                        child: Text("@Name",
                                            style: CustomTextStyles
                                                .titleSmallPrimary)),
                                    Container(
                                        width: 157.h,
                                        margin: EdgeInsets.only(left: 2.h),
                                        child: Text(
                                            "sit amet dui auctor dictum eget a elit. ",
                                            maxLines: 2,
                                            overflow: TextOverflow.ellipsis,
                                            style: theme.textTheme.bodyMedium)),
                                    Spacer(),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            top: 15.v, bottom: 10.v),
                                        child: Text("1",
                                            style: CustomTextStyles
                                                .bodySmallOnPrimaryContainer)),
                                    Opacity(
                                        opacity: 0.7,
                                        child: CustomImageView(
                                            imagePath: ImageConstant
                                                .imgSolarLikeBroken,
                                            height: 16.adaptSize,
                                            width: 16.adaptSize,
                                            margin: EdgeInsets.only(
                                                left: 2.h,
                                                top: 9.v,
                                                bottom: 14.v)))
                                  ])),
                          SizedBox(height: 3.v),
                          Padding(
                              padding: EdgeInsets.only(left: 3.h),
                              child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Opacity(
                                        opacity: 0.7,
                                        child: Padding(
                                            padding:
                                                EdgeInsets.only(bottom: 1.v),
                                            child: Text("30m",
                                                style: CustomTextStyles
                                                    .bodySmallOnPrimary_1))),
                                    Opacity(
                                        opacity: 0.7,
                                        child: Padding(
                                            padding:
                                                EdgeInsets.only(left: 17.h),
                                            child: Text("Reply",
                                                style: CustomTextStyles
                                                    .bodySmallOnPrimary_1))),
                                    Opacity(
                                        opacity: 0.7,
                                        child: CustomImageView(
                                            imagePath: ImageConstant
                                                .imgTablerDotsOnprimary8x10,
                                            height: 8.v,
                                            width: 10.h,
                                            margin: EdgeInsets.only(
                                                left: 16.h,
                                                top: 2.v,
                                                bottom: 4.v)))
                                  ])),
                          SizedBox(height: 14.v),
                          Padding(
                              padding: EdgeInsets.only(left: 5.h),
                              child: Text("Hide Replies ",
                                  style: CustomTextStyles.bodySmallPrimary))
                        ]))
                  ])),
          Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                  width: double.maxFinite,
                  margin: EdgeInsets.only(top: 115.v, bottom: 14.v),
                  padding: EdgeInsets.symmetric(vertical: 16.v),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadiusStyle.roundedBorder8),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
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
                            controller: nameController,
                            hintText: "Write a comment",
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
  Widget _buildH(
    BuildContext context, {
    required String dynamicText,
    required String dynamicText1,
  }) {
    return Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Opacity(
          opacity: 0.7,
          child: Padding(
              padding: EdgeInsets.only(bottom: 1.v),
              child: Text(dynamicText,
                  style: CustomTextStyles.bodySmallOnPrimary_1.copyWith(
                      color: theme.colorScheme.onPrimary.withOpacity(0.6))))),
      Opacity(
          opacity: 0.7,
          child: Padding(
              padding: EdgeInsets.only(left: 16.h),
              child: Text(dynamicText1,
                  style: CustomTextStyles.bodySmallOnPrimary_1.copyWith(
                      color: theme.colorScheme.onPrimary.withOpacity(0.6))))),
      Opacity(
          opacity: 0.7,
          child: CustomImageView(
              imagePath: ImageConstant.imgTablerDotsOnprimary8x10,
              height: 8.v,
              width: 10.h,
              margin: EdgeInsets.only(left: 16.h, top: 2.v, bottom: 4.v)))
    ]);
  }

  /// Common widget
  Widget _buildNameRow(
    BuildContext context, {
    required String userImage,
    required String nameText,
    required String descriptionText,
    required String p1hText,
    required String replyText,
  }) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
              imagePath: userImage,
              height: 32.adaptSize,
              width: 32.adaptSize,
              radius: BorderRadius.circular(4.h),
              margin: EdgeInsets.only(top: 1.v, bottom: 36.v)),
          Expanded(
              child: Padding(
                  padding: EdgeInsets.only(left: 8.h),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(nameText,
                            style: theme.textTheme.titleSmall!.copyWith(
                                color: theme.colorScheme.onPrimary
                                    .withOpacity(1))),
                        SizedBox(height: 5.v),
                        Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                  padding: EdgeInsets.only(top: 1.v),
                                  child: Text(descriptionText,
                                      style: theme.textTheme.bodyMedium!
                                          .copyWith(
                                              color: theme.colorScheme.onPrimary
                                                  .withOpacity(1)))),
                              Opacity(
                                  opacity: 0.7,
                                  child: CustomImageView(
                                      imagePath:
                                          ImageConstant.imgSolarLikeBroken,
                                      height: 16.adaptSize,
                                      width: 16.adaptSize,
                                      margin: EdgeInsets.only(
                                          left: 46.h, bottom: 5.v)))
                            ]),
                        SizedBox(height: 7.v),
                        Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Opacity(
                                  opacity: 0.7,
                                  child: Padding(
                                      padding: EdgeInsets.only(bottom: 1.v),
                                      child: Text(p1hText,
                                          style: CustomTextStyles
                                              .bodySmallOnPrimary_1
                                              .copyWith(
                                                  color: theme
                                                      .colorScheme.onPrimary
                                                      .withOpacity(0.6))))),
                              Opacity(
                                  opacity: 0.7,
                                  child: Padding(
                                      padding: EdgeInsets.only(left: 16.h),
                                      child: Text(replyText,
                                          style: CustomTextStyles
                                              .bodySmallOnPrimary_1
                                              .copyWith(
                                                  color: theme
                                                      .colorScheme.onPrimary
                                                      .withOpacity(0.6))))),
                              Opacity(
                                  opacity: 0.7,
                                  child: CustomImageView(
                                      imagePath: ImageConstant
                                          .imgTablerDotsOnprimary8x10,
                                      height: 8.v,
                                      width: 10.h,
                                      margin: EdgeInsets.only(
                                          left: 16.h, top: 2.v, bottom: 4.v)))
                            ])
                      ])))
        ]);
  }

  /// Common widget
  Widget _buildSitAmetDuiAuctorRow(
    BuildContext context, {
    required String dynamicText,
  }) {
    return Row(mainAxisAlignment: MainAxisAlignment.end, children: [
      Expanded(
          child: SizedBox(
              width: 241.h,
              child: Text(dynamicText,
                  maxLines: null,
                  overflow: TextOverflow.ellipsis,
                  style: theme.textTheme.bodyMedium!.copyWith(
                      color: theme.colorScheme.onPrimary.withOpacity(1))))),
      Opacity(
          opacity: 0.7,
          child: CustomImageView(
              imagePath: ImageConstant.imgSolarLikeBroken,
              height: 16.adaptSize,
              width: 16.adaptSize,
              margin: EdgeInsets.only(left: 31.h, top: 20.v, bottom: 20.v)))
    ]);
  }

  /// Navigates to the homeContainerScreen when the action is triggered.
  onTapImgArrowLeft(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homeContainerScreen);
  }
}
