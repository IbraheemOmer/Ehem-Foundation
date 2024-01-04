// import 'models/on_boarding_page_view_model.dart';
// import 'package:ehem_foundation_project/core/app_export.dart';
// import 'package:ehem_foundation_project/widgets/custom_outlined_button.dart';
// import 'package:flutter/material.dart';
// import 'package:smooth_page_indicator/smooth_page_indicator.dart';
//
// class GetStartedTwoScreen extends StatelessWidget {
//   GetStartedTwoScreen({Key? key})
//       : super(
//           key: key,
//         );
//
//   PageController pageController = PageController();
//
//   List<OnBoardingPageViewModel> onboardingPageViewModelList = [
//     OnBoardingPageViewModel(
//       connectToOneOf:
//           "Connect to one of our Experts to discuss you case and get Solutions",
//       description:
//           "sit amet dui auctor dictum eget a elit. Pellentesque varius diam risus, ut condimentum lorem volutpat vel. Nam vel orci pharetra ero",
//     ),
//     OnBoardingPageViewModel(
//       connectToOneOf:
//           "Fill in you Information in order to get help by our Experts",
//       description:
//           "sit amet dui auctor dictum eget a elit. Pellentesque varius diam risus, ut condimentum lorem volutpat vel. Nam vel orci pharetra ero",
//     ),
//     OnBoardingPageViewModel(
//       connectToOneOf: "Solve you Case, Get you Rights\nEnjoy your Freedom",
//       description:
//           "sit amet dui auctor dictum eget a elit. Pellentesque varius diam risus, ut condimentum lorem volutpat vel. Nam vel orci pharetra ero",
//     )
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         body: SizedBox(
//           height: 760.v,
//           width: double.maxFinite,
//           child: Stack(
//             alignment: Alignment.bottomCenter,
//             children: [
//               SizedBox(
//                 height: 504.v,
//                 child: PageView(
//                   controller: pageController,
//                   scrollDirection: Axis.horizontal,
//                   children: [
//                     SizedBox(
//                       height: 504.v,
//                       width: double.maxFinite,
//                       child: CustomImageView(
//                         imagePath: ImageConstant.imgFrame91921,
//                         height: 504.v,
//                         width: 360.h,
//                         alignment: Alignment.topCenter,
//                       ),
//                     ),
//                     SizedBox(
//                       height: 504.v,
//                       width: double.maxFinite,
//                       child: CustomImageView(
//                         imagePath: ImageConstant.imgFrame91921504x360,
//                         height: 504.v,
//                         width: 360.h,
//                         alignment: Alignment.topCenter,
//                       ),
//                     ),
//                     SizedBox(
//                       height: 504.v,
//                       width: double.maxFinite,
//                       child: CustomImageView(
//                         imagePath: ImageConstant.imgFrame919211,
//                         height: 504.v,
//                         width: 360.h,
//                         alignment: Alignment.topCenter,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               _buildGetStartedTwo(context),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
//
//   /// Section Widget
//   Widget _buildGetStartedTwo(BuildContext context) {
//     return Align(
//       alignment: Alignment.bottomCenter,
//       child: Container(
//         padding: EdgeInsets.symmetric(vertical: 20.v),
//         decoration: BoxDecoration(
//           borderRadius: BorderRadiusStyle.roundedBorder20,
//         ),
//         child: Column(
//           mainAxisSize: MainAxisSize.min,
//           crossAxisAlignment: CrossAxisAlignment.start,
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             SizedBox(
//               height: 190.v,
//               child: PageView(
//                 controller: pageController,
//                 scrollDirection: Axis.horizontal,
//                 children:
//                     List.generate(onboardingPageViewModelList.length, (index) {
//                   return Column(
//                     mainAxisSize: MainAxisSize.min,
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Container(
//                         width: 297.h,
//                         margin: EdgeInsets.only(
//                           top: 4.v,
//                           right: 30.h,
//                         ),
//                         child: RichText(
//                           text: TextSpan(
//                             children: [
//                               TextSpan(
//                                 text: "Connect to one of our ",
//                                 style: theme.textTheme.titleLarge,
//                               ),
//                               TextSpan(
//                                 text: "Experts",
//                                 style: CustomTextStyles.titleLargePrimary,
//                               ),
//                               TextSpan(
//                                 text: " to discuss you case and get ",
//                                 style: theme.textTheme.titleLarge,
//                               ),
//                               TextSpan(
//                                 text: "Solutions",
//                                 style: CustomTextStyles.titleLargePrimary,
//                               ),
//                             ],
//                           ),
//                           textAlign: TextAlign.left,
//                         ),
//                       ),
//                       Container(
//                         width: 326.h,
//                         margin: EdgeInsets.only(top: 15.v),
//                         child: Text(
//                           onboardingPageViewModelList[index].description!,
//                           maxLines: 3,
//                           overflow: TextOverflow.ellipsis,
//                           style: CustomTextStyles.bodyLargeOnPrimary_1.copyWith(
//                             color: theme.colorScheme.onPrimary.withOpacity(0.7),
//                             height: 1.30,
//                           ),
//                         ),
//                       ),
//                     ],
//                   );
//                 }),
//               ),
//             ),
//             Align(
//               alignment: Alignment.center,
//               child: SmoothPageIndicator(
//                 controller: pageController,
//                 count: 3,
//                 axisDirection: Axis.horizontal,
//                 effect: ScrollingDotsEffect(
//                   spacing: 16,
//                   activeDotColor: theme.colorScheme.primary,
//                   dotColor: theme.colorScheme.primary.withOpacity(0.3),
//                   dotHeight: 2.v,
//                   dotWidth: 24.h,
//                 ),
//                 onDotClicked: (value) {
//                   pageController.jumpToPage(value);
//                 },
//               ),
//             ),
//             SizedBox(height: 3.v),
//             CustomOutlinedButton(
//               height: 56.v,
//               width: 56.h,
//               text: "Next",
//               margin: EdgeInsets.only(right: 4.h),
//               buttonStyle: CustomButtonStyles.outlinePrimary,
//               buttonTextStyle: CustomTextStyles.bodyLargePoppinsGray100,
//               alignment: Alignment.centerRight,
//             ),
//           ],
//         ),
//       ),
//     );
//   }
//
//   /// Common widget
//   Widget _buildZero(
//     BuildContext context, {
//     required String dynamicText,
//     required String dynamicText1,
//   }) {
//     return Column(
//       mainAxisSize: MainAxisSize.min,
//       crossAxisAlignment: CrossAxisAlignment.start,
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         SizedBox(height: 4.v),
//         Container(
//           width: 267.h,
//           margin: EdgeInsets.only(right: 60.h),
//           child: RichText(
//             text: TextSpan(
//               children: [
//                 TextSpan(
//                   text: "Fill in you ",
//                   style: theme.textTheme.titleLarge,
//                 ),
//                 TextSpan(
//                   text: "I",
//                   style: CustomTextStyles.titleLargePrimary,
//                 ),
//                 TextSpan(
//                   text: "nformation",
//                   style: CustomTextStyles.titleLargePrimary,
//                 ),
//                 TextSpan(
//                   text: " in order to get help by our ",
//                   style: theme.textTheme.titleLarge,
//                 ),
//                 TextSpan(
//                   text: "E",
//                   style: CustomTextStyles.titleLargePrimary,
//                 ),
//                 TextSpan(
//                   text: "xperts",
//                   style: CustomTextStyles.titleLargePrimary,
//                 ),
//               ],
//             ),
//             textAlign: TextAlign.left,
//           ),
//         ),
//         SizedBox(height: 15.v),
//         SizedBox(
//           width: 326.h,
//           child: Text(
//             dynamicText1,
//             maxLines: 3,
//             overflow: TextOverflow.ellipsis,
//             style: CustomTextStyles.bodyLargeOnPrimary_1.copyWith(
//               color: theme.colorScheme.onPrimary.withOpacity(0.7),
//               height: 1.30,
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }
