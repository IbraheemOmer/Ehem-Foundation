import '../post_page_one_screen/widgets/userprofile5_item_widget.dart';
import 'package:ehem_foundation_project/core/app_export.dart';
import 'package:ehem_foundation_project/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class PostPageOneScreen extends StatelessWidget {
  PostPageOneScreen({Key? key}) : super(key: key);

  TextEditingController commentController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    child: Padding(
                        padding: EdgeInsets.only(bottom: 5.v),
                        child: Column(children: [
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
                                            style:
                                                CustomTextStyles.bodyMedium13),
                                        CustomImageView(
                                            imagePath: ImageConstant
                                                .imgArrowDownOnprimary,
                                            height: 16.adaptSize,
                                            width: 16.adaptSize,
                                            margin: EdgeInsets.only(
                                                left: 15.h, bottom: 2.v))
                                      ]))),
                          SizedBox(height: 24.v),
                          _buildLineEighteen(context),
                          SizedBox(height: 37.v),
                          _buildUserProfile(context)
                        ])))),
            bottomNavigationBar: _buildComment(context)));
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
  Widget _buildLineEighteen(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.h),
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
                                          padding: EdgeInsets.only(right: 8.h),
                                          child: SizedBox(
                                              height: 64.v,
                                              child: VerticalDivider(
                                                  width: 2.h,
                                                  thickness: 2.v,
                                                  color: theme.colorScheme
                                                      .onPrimary)))),
                                  CustomImageView(
                                      imagePath: ImageConstant.imgFrame92022,
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
                              Text("sit amet dui auctor dictum eget a elit. ",
                                  style: theme.textTheme.bodyMedium),
                              Spacer(),
                              Padding(
                                  padding: EdgeInsets.only(top: 7.v),
                                  child: Text("3",
                                      style: CustomTextStyles
                                          .bodySmallOnPrimaryContainer)),
                              CustomImageView(
                                  imagePath:
                                      ImageConstant.imgSolarLikeBrokenPrimary,
                                  height: 16.adaptSize,
                                  width: 16.adaptSize,
                                  margin: EdgeInsets.only(
                                      left: 2.h, top: 2.v, bottom: 3.v))
                            ])),
                    SizedBox(height: 6.v),
                    Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Opacity(
                              opacity: 0.7,
                              child: Padding(
                                  padding: EdgeInsets.only(bottom: 1.v),
                                  child: Text("1h",
                                      style: CustomTextStyles
                                          .bodySmallOnPrimary_1))),
                          Opacity(
                              opacity: 0.7,
                              child: Padding(
                                  padding: EdgeInsets.only(left: 16.h),
                                  child: Text("Reply",
                                      style: CustomTextStyles
                                          .bodySmallOnPrimary_1))),
                          Opacity(
                              opacity: 0.7,
                              child: CustomImageView(
                                  imagePath:
                                      ImageConstant.imgTablerDotsOnprimary8x10,
                                  height: 8.v,
                                  width: 10.h,
                                  margin: EdgeInsets.only(
                                      left: 16.h, top: 2.v, bottom: 4.v)))
                        ]),
                    SizedBox(height: 18.v),
                    Padding(
                        padding: EdgeInsets.only(left: 5.h),
                        child:
                            Text("Name", style: CustomTextStyles.labelLarge12)),
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
                                      style:
                                          CustomTextStyles.titleSmallPrimary)),
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
                                  padding:
                                      EdgeInsets.only(top: 15.v, bottom: 10.v),
                                  child: Text("1",
                                      style: CustomTextStyles
                                          .bodySmallOnPrimaryContainer)),
                              Opacity(
                                  opacity: 0.7,
                                  child: CustomImageView(
                                      imagePath:
                                          ImageConstant.imgSolarLikeBroken,
                                      height: 16.adaptSize,
                                      width: 16.adaptSize,
                                      margin: EdgeInsets.only(
                                          left: 2.h, top: 9.v, bottom: 14.v)))
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
                                      padding: EdgeInsets.only(bottom: 1.v),
                                      child: Text("30m",
                                          style: CustomTextStyles
                                              .bodySmallOnPrimary_1))),
                              Opacity(
                                  opacity: 0.7,
                                  child: Padding(
                                      padding: EdgeInsets.only(left: 17.h),
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
                                          left: 16.h, top: 2.v, bottom: 4.v)))
                            ])),
                    SizedBox(height: 14.v),
                    Padding(
                        padding: EdgeInsets.only(left: 5.h),
                        child: Text("Hide Replies ",
                            style: CustomTextStyles.bodySmallPrimary))
                  ]))
            ]));
  }

  /// Section Widget
  Widget _buildUserProfile(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.h),
        child: ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (context, index) {
              return SizedBox(height: 41.v);
            },
            itemCount: 3,
            itemBuilder: (context, index) {
              return Userprofile5ItemWidget();
            }));
  }

  /// Section Widget
  Widget _buildComment(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 16.h, right: 16.h, bottom: 16.v),
        decoration: AppDecoration.background
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              CustomImageView(
                  imagePath: ImageConstant.imgArrowLeft,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                  margin: EdgeInsets.symmetric(vertical: 8.v),
                  onTap: () {
                    onTapImgArrowLeft(context);
                  }),
              Expanded(
                  child: Padding(
                      padding: EdgeInsets.only(left: 16.h),
                      child: CustomTextFormField(
                          controller: commentController,
                          hintText: "Write a comment",
                          hintStyle: CustomTextStyles.bodyMediumOnPrimary13,
                          textInputAction: TextInputAction.done))),
              CustomImageView(
                  imagePath: ImageConstant.imgFaSend,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                  margin: EdgeInsets.only(left: 16.h, top: 8.v, bottom: 8.v))
            ]));
  }

  /// Navigates to the homeContainerScreen when the action is triggered.
  onTapImgArrowLeft(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homeContainerScreen);
  }
}
