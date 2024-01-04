import 'package:ehem_foundation_project/core/app_export.dart';
import 'package:ehem_foundation_project/widgets/app_bar/appbar_leading_image.dart';
import 'package:ehem_foundation_project/widgets/app_bar/appbar_subtitle.dart';
import 'package:ehem_foundation_project/widgets/app_bar/appbar_trailing_image.dart';
import 'package:ehem_foundation_project/widgets/app_bar/custom_app_bar.dart';
import 'package:ehem_foundation_project/widgets/custom_elevated_button.dart';
import 'package:ehem_foundation_project/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class AnswerPaymentTwoScreen extends StatelessWidget {
  AnswerPaymentTwoScreen({Key? key}) : super(key: key);

  TextEditingController cardNumberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 34.v),
                child: Column(children: [
                  _buildCardNumberColumn(context),
                  SizedBox(height: 18.v),
                  _buildExpDateRow(context),
                  Spacer(flex: 72),
                  CustomElevatedButton(
                      text: "Send Payment",
                      buttonTextStyle: CustomTextStyles.titleSmallGray100),
                  Spacer(flex: 27)
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

  /// Section Widget
  Widget _buildCardNumberColumn(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("Card Number", style: theme.textTheme.titleSmall),
      SizedBox(height: 9.v),
      CustomTextFormField(
          controller: cardNumberController,
          textInputAction: TextInputAction.done,
          prefix: Container(
              margin: EdgeInsets.fromLTRB(8.h, 8.v, 30.h, 8.v),
              child: CustomImageView(
                  imagePath: ImageConstant.imgFrame92070,
                  height: 24.adaptSize,
                  width: 24.adaptSize)),
          prefixConstraints: BoxConstraints(maxHeight: 40.v),
          borderDecoration: TextFormFieldStyleHelper.outlineOnPrimaryTL8,
          filled: false)
    ]);
  }

  /// Section Widget
  Widget _buildExpDateRow(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Padding(
          padding: EdgeInsets.only(top: 1.v, right: 4.h),
          child: _buildCvvColumn(context,
              cVV: "Exp. Date", oneHundredTwentyThree: "MM/YY")),
      Padding(
          padding: EdgeInsets.only(left: 4.h),
          child: _buildCvvColumn(context,
              cVV: "CVV", oneHundredTwentyThree: "123"))
    ]);
  }

  /// Common widget
  Widget _buildCvvColumn(
    BuildContext context, {
    required String cVV,
    required String oneHundredTwentyThree,
  }) {
    return Expanded(
        child: SizedBox(
            width: double.maxFinite,
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(cVV,
                  style: theme.textTheme.titleSmall!.copyWith(
                      color: theme.colorScheme.onPrimary.withOpacity(1))),
              SizedBox(height: 9.v),
              Container(
                  width: 160.h,
                  padding: EdgeInsets.symmetric(horizontal: 7.h, vertical: 9.v),
                  decoration: AppDecoration.outlineOnPrimary4
                      .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(oneHundredTwentyThree,
                            style: theme.textTheme.bodyMedium!.copyWith(
                                color: theme.colorScheme.onPrimary
                                    .withOpacity(1))),
                        CustomImageView(
                            imagePath: ImageConstant.imgProfile,
                            height: 16.adaptSize,
                            width: 16.adaptSize,
                            margin: EdgeInsets.only(
                                top: 2.v, right: 8.h, bottom: 2.v))
                      ]))
            ])));
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
