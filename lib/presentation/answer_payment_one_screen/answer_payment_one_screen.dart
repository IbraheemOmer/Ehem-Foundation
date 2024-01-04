import '../answer_payment_one_screen/widgets/filecomponent1_item_widget.dart';
import 'package:ehem_foundation_project/core/app_export.dart';
import 'package:ehem_foundation_project/widgets/app_bar/appbar_leading_image.dart';
import 'package:ehem_foundation_project/widgets/app_bar/appbar_subtitle.dart';
import 'package:ehem_foundation_project/widgets/app_bar/appbar_trailing_image.dart';
import 'package:ehem_foundation_project/widgets/app_bar/custom_app_bar.dart';
import 'package:ehem_foundation_project/widgets/custom_elevated_button.dart';
import 'package:ehem_foundation_project/widgets/custom_outlined_button.dart';
import 'package:ehem_foundation_project/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
// ignore_for_file: must_be_immutable

class AnswerPaymentOneScreen extends StatelessWidget {
  AnswerPaymentOneScreen({Key? key}) : super(key: key);

  TextEditingController purposeofPaymentController = TextEditingController();

  TextEditingController amountController = TextEditingController();

  TextEditingController notehereController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 33.v),
                child: Column(children: [
                  Text("Answer Payment ", style: theme.textTheme.titleMedium),
                  SizedBox(height: 32.v),
                  _buildFortySeven(context),
                  SizedBox(height: 18.v),
                  _buildFiftyOne(context),
                  SizedBox(height: 18.v),
                  _buildSeventyFive(context),
                  SizedBox(height: 18.v),
                  _buildSixtyTwo(context),
                  Spacer(),
                  SizedBox(height: 62.v),
                  _buildFortyFour(context)
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
  Widget _buildFortySeven(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("Purpose", style: theme.textTheme.titleSmall),
      SizedBox(height: 8.v),
      CustomTextFormField(
          controller: purposeofPaymentController,
          hintText: "Purpose of Payment",
          borderDecoration: TextFormFieldStyleHelper.outlineOnPrimaryTL8,
          filled: false)
    ]);
  }

  /// Section Widget
  Widget _buildFiftyOne(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("Amount", style: theme.textTheme.titleSmall),
      SizedBox(height: 9.v),
      CustomTextFormField(
          controller: amountController,
          hintText: "100",
          borderDecoration: TextFormFieldStyleHelper.outlineOnPrimaryTL8,
          filled: false)
    ]);
  }

  /// Section Widget
  Widget _buildSeventyFive(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Text("Attachment", style: theme.textTheme.titleSmall),
        Padding(
            padding: EdgeInsets.only(top: 3.v, bottom: 2.v),
            child: Text("Add Attachment", style: theme.textTheme.labelMedium))
      ]),
      SizedBox(height: 9.v),
      SizedBox(
          height: 64.v,
          child: ListView.separated(
              padding: EdgeInsets.only(right: 192.h),
              scrollDirection: Axis.horizontal,
              separatorBuilder: (context, index) {
                return SizedBox(width: 8.h);
              },
              itemCount: 2,
              itemBuilder: (context, index) {
                return Filecomponent1ItemWidget();
              }))
    ]);
  }

  /// Section Widget
  Widget _buildSixtyTwo(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Row(children: [
        Text("Note", style: theme.textTheme.titleSmall),
        Padding(
            padding: EdgeInsets.only(left: 4.h, top: 4.v, bottom: 2.v),
            child: Text("( Optional )", style: CustomTextStyles.bodySmall9))
      ]),
      SizedBox(height: 9.v),
      CustomTextFormField(
          controller: notehereController,
          hintText: "Note here",
          textInputAction: TextInputAction.done,
          borderDecoration: TextFormFieldStyleHelper.outlineOnPrimaryTL8,
          filled: false)
    ]);
  }

  /// Section Widget
  Widget _buildFortyFour(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Expanded(
          child: CustomElevatedButton(
              text: "Accept Payment",
              margin: EdgeInsets.only(right: 4.h),
              buttonTextStyle: CustomTextStyles.titleSmallGray100,
              onPressed: () {
                onTapAcceptPayment(context);
              })),
      Expanded(
          child: CustomOutlinedButton(
              height: 40.v,
              text: "Cancel Payment",
              margin: EdgeInsets.only(left: 4.h),
              buttonStyle: CustomButtonStyles.outlinePrimaryTL81,
              buttonTextStyle: theme.textTheme.titleSmall!,
              onPressed: () {
                onTapCancelPayment(context);
              }))
    ]);
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }

  /// Navigates to the answerPaymentTwoScreen when the action is triggered.
  onTapAcceptPayment(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.answerPaymentTwoScreen);
  }

  /// Navigates to the accpetRequestScreen when the action is triggered.
  onTapCancelPayment(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.accpetRequestScreen);
  }
}
