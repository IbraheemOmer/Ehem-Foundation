// import '../all_attachments_delete_screen/widgets/fileviewer1_item_widget.dart';
// import 'package:ehem_foundation_project/core/app_export.dart';
// import 'package:ehem_foundation_project/widgets/app_bar/appbar_leading_image.dart';
// import 'package:ehem_foundation_project/widgets/app_bar/appbar_subtitle.dart';
// import 'package:ehem_foundation_project/widgets/app_bar/custom_app_bar.dart';
// import 'package:ehem_foundation_project/widgets/custom_elevated_button.dart';
// import 'package:ehem_foundation_project/widgets/custom_outlined_button.dart';
// import 'package:flutter/material.dart';
//
// class AllAttachmentsDeleteScreen extends StatelessWidget {
//   const AllAttachmentsDeleteScreen({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//         child: Scaffold(
//             backgroundColor: appTheme.gray100.withOpacity(0.5),
//             appBar: _buildAppBar(context),
//             body: Container(
//                 width: double.maxFinite,
//                 padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 8.v),
//                 child: Column(children: [
//                   _buildFileViewer(context),
//                   SizedBox(height: 24.v),
//                   _buildFrame(context),
//                   SizedBox(height: 5.v)
//                 ]))));
//   }
//
//   /// Section Widget
//   ///
//   PreferredSizeWidget _buildAppBar(BuildContext context) {
//     return Opacity(
//         opacity: 0.4,
//         child: CustomAppBar(
//             height: 64.v,
//             leadingWidth: 40.h,
//             leading: AppbarLeadingImage(
//                 imagePath: ImageConstant.imgArrowLeft,
//                 margin: EdgeInsets.only(left: 16.h, top: 24.v, bottom: 16.v),
//                 onTap: () {
//                   onTapArrowLeft(context);
//                 }),
//             title: AppbarSubtitle(
//                 text: "Attachments", margin: EdgeInsets.only(left: 15.h)),
//             styleType: Style.bgFill_1));
//   }
//
//   /// Section Widget
//   Widget _buildFileViewer(BuildContext context) {
//     return GridView.builder(
//         shrinkWrap: true,
//         gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//             mainAxisExtent: 97.v,
//             crossAxisCount: 3,
//             mainAxisSpacing: 16.h,
//             crossAxisSpacing: 16.h),
//         physics: NeverScrollableScrollPhysics(),
//         itemCount: 6,
//         itemBuilder: (context, index) {
//           return Fileviewer1ItemWidget();
//         });
//   }
//
//   /// Section Widget
//   Widget _buildDeleteButton(BuildContext context) {
//     return Expanded(
//         child: CustomElevatedButton(
//             text: "Delete",
//             margin: EdgeInsets.only(right: 4.h),
//             buttonStyle: CustomButtonStyles.fillPrimaryContainer,
//             buttonTextStyle: CustomTextStyles.titleSmallGray100));
//   }
//
//   /// Section Widget
//   Widget _buildCancelButton(BuildContext context) {
//     return Expanded(
//         child: CustomOutlinedButton(
//             height: 40.v,
//             text: "Cancel",
//             margin: EdgeInsets.only(left: 4.h),
//             buttonStyle: CustomButtonStyles.outlinePrimaryTL8));
//   }
//
//   /// Section Widget
//   Widget _buildFrame(BuildContext context) {
//     return Container(
//         padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 11.v),
//         decoration: AppDecoration.background
//             .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
//         child: Column(mainAxisSize: MainAxisSize.min, children: [
//           SizedBox(
//               width: 193.h,
//               child: Text("Are you sure you want to delete this attachment",
//                   maxLines: 2,
//                   overflow: TextOverflow.ellipsis,
//                   textAlign: TextAlign.center,
//                   style: theme.textTheme.titleSmall!.copyWith(height: 1.71))),
//           SizedBox(height: 12.v),
//           Row(mainAxisAlignment: MainAxisAlignment.center, children: [
//             _buildDeleteButton(context),
//             _buildCancelButton(context)
//           ]),
//           SizedBox(height: 12.v)
//         ]));
//   }
//
//   /// Navigates back to the previous screen.
//   onTapArrowLeft(BuildContext context) {
//     Navigator.pop(context);
//   }
// }
