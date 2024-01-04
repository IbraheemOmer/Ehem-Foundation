import 'package:ehem_foundation_project/core/app_export.dart';
import 'package:ehem_foundation_project/widgets/app_bar/appbar_leading_image.dart';
import 'package:ehem_foundation_project/widgets/app_bar/appbar_subtitle.dart';
import 'package:ehem_foundation_project/widgets/app_bar/appbar_trailing_image.dart';
import 'package:ehem_foundation_project/widgets/app_bar/custom_app_bar.dart';
import 'package:ehem_foundation_project/widgets/custom_elevated_button.dart';
import 'package:ehem_foundation_project/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

class AnswerPaymentThreeScreen extends StatelessWidget {
  const AnswerPaymentThreeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 24.v),
                child: Column(children: [
                  Text("Congratulation", style: theme.textTheme.titleLarge),
                  SizedBox(height: 9.v),
                  Container(
                      width: 280.h,
                      margin: EdgeInsets.symmetric(horizontal: 23.h),
                      child: Text(
                          "Your Payment to ( Name ) Has been sent successfully",
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: theme.textTheme.bodyLarge!
                              .copyWith(height: 1.50))),
                  SizedBox(height: 58.v),
                  CustomIconButton(
                      height: 69.adaptSize,
                      width: 69.adaptSize,
                      padding: EdgeInsets.all(2.h),
                      decoration: IconButtonStyleHelper.fillPrimaryTL34,
                      child: CustomImageView(
                          imagePath: ImageConstant.imgCheckmark)),
                  Spacer(flex: 67),
                  CustomElevatedButton(
                      text: "Back To Chat",
                      buttonTextStyle: CustomTextStyles.titleSmallGray100),
                  Spacer(flex: 32)
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
        ],
        styleType: Style.bgFill);
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
