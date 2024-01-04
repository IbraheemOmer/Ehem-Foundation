import '../request_payment_two_screen/widgets/fileviewer2_item_widget.dart';
import 'package:ehem_foundation_project/core/app_export.dart';
import 'package:ehem_foundation_project/widgets/app_bar/appbar_leading_image.dart';
import 'package:ehem_foundation_project/widgets/app_bar/appbar_subtitle.dart';
import 'package:ehem_foundation_project/widgets/app_bar/appbar_trailing_image.dart';
import 'package:ehem_foundation_project/widgets/app_bar/custom_app_bar.dart';
import 'package:ehem_foundation_project/widgets/custom_elevated_button.dart';
import 'package:ehem_foundation_project/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class RequestPaymentTwoScreen extends StatelessWidget {
  RequestPaymentTwoScreen({Key? key}) : super(key: key);

  TextEditingController purposeofPaymentController = TextEditingController();

  TextEditingController amountController = TextEditingController();

  TextEditingController frameController = TextEditingController();

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
                  Text("Request Payment ", style: theme.textTheme.titleMedium),
                  SizedBox(height: 31.v),
                  _buildPurposeOfPayment(context),
                  SizedBox(height: 18.v),
                  _buildAmount(context),
                  SizedBox(height: 18.v),
                  _buildAttachment(context),
                  SizedBox(height: 18.v),
                  _buildFrame(context),
                  SizedBox(height: 40.v),
                  CustomElevatedButton(
                      text: "Send Request",
                      buttonStyle: CustomButtonStyles.fillOnErrorTL8,
                      buttonTextStyle: CustomTextStyles.titleSmallGray100,
                      onPressed: () {
                        onTapSendRequest(context);
                      }),
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
        ],
        styleType: Style.bgFill);
  }

  /// Section Widget
  Widget _buildPurposeOfPayment(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("Purpose", style: theme.textTheme.titleSmall),
      SizedBox(height: 8.v),
      CustomTextFormField(
          controller: purposeofPaymentController,
          hintText: "Purpose of Payment")
    ]);
  }

  /// Section Widget
  Widget _buildAmount(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("Amount", style: theme.textTheme.titleSmall),
      SizedBox(height: 9.v),
      CustomTextFormField(controller: amountController, hintText: "100")
    ]);
  }

  /// Section Widget
  Widget _buildAttachment(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Text("Attachment", style: theme.textTheme.titleSmall),
        Padding(
            padding: EdgeInsets.only(top: 3.v, bottom: 2.v),
            child: Text("Add Attachment",
                style: CustomTextStyles.labelMediumOnError))
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
                return Fileviewer2ItemWidget();
              }))
    ]);
  }

  /// Section Widget
  Widget _buildFrame(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Row(children: [
        Text("Note", style: theme.textTheme.titleSmall),
        Padding(
            padding: EdgeInsets.only(left: 4.h, top: 4.v, bottom: 2.v),
            child: Text("( Optional )", style: CustomTextStyles.bodySmall9))
      ]),
      SizedBox(height: 9.v),
      CustomTextFormField(
          controller: frameController,
          hintText: "Write any Notes here",
          textInputAction: TextInputAction.done,
          maxLines: 5)
    ]);
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }

  /// Navigates to the requestPaymentOneScreen when the action is triggered.
  onTapSendRequest(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.requestPaymentOneScreen);
  }
}
