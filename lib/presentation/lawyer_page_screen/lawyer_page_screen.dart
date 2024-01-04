import 'package:ehem_foundation_project/core/app_export.dart';
import 'package:ehem_foundation_project/presentation/chats_one_page/chats_one_page.dart';
import 'package:ehem_foundation_project/presentation/home_page/home_page.dart';
import 'package:ehem_foundation_project/presentation/profile_page/profile_page.dart';
import 'package:ehem_foundation_project/presentation/search_page/search_page.dart';
import 'package:ehem_foundation_project/presentation/services_search_for_lawyer_tab_container_page/services_search_for_lawyer_tab_container_page.dart';
import 'package:ehem_foundation_project/widgets/app_bar/appbar_leading_image.dart';
import 'package:ehem_foundation_project/widgets/app_bar/custom_app_bar.dart';
import 'package:ehem_foundation_project/widgets/custom_bottom_bar.dart';
import 'package:ehem_foundation_project/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class LawyerPageScreen extends StatelessWidget {
  LawyerPageScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 16.h),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildLawyerProfile(context),
                      SizedBox(height: 27.v),
                      Text("Biography", style: theme.textTheme.titleSmall),
                      SizedBox(height: 11.v),
                      Container(
                          width: 321.h,
                          margin: EdgeInsets.only(right: 6.h),
                          child: Text(
                              "sit amet dui auctor dictum eget a elit. Pellentesque varius diam risus, ut condimentum lorem volutpat vel. Nam vel orci pharetra eros pulvinar cursus nec quis tellus. sit amet dui auctor dictum egelus. ",
                              maxLines: 4,
                              overflow: TextOverflow.ellipsis,
                              style: theme.textTheme.bodyMedium)),
                      SizedBox(height: 17.v),
                      _buildLawyerDetails(context),
                      SizedBox(height: 16.v),
                      Text("Education", style: theme.textTheme.titleSmall),
                      SizedBox(height: 13.v),
                      Padding(
                          padding: EdgeInsets.only(left: 3.h),
                          child: Text(" Nam vel orci pharetra eros pulv",
                              style: theme.textTheme.bodyMedium)),
                      SizedBox(height: 12.v),
                      Padding(
                          padding: EdgeInsets.only(left: 3.h),
                          child: Text(" Nam vel orci pharetra eros pulv",
                              style: theme.textTheme.bodyMedium)),
                      SizedBox(height: 18.v),
                      Text("Skills", style: theme.textTheme.titleSmall),
                      SizedBox(height: 13.v),
                      Container(
                          width: 321.h,
                          margin: EdgeInsets.only(right: 6.h),
                          child: Text(
                              "sit amet dui auctor dictum eget a elit. Pellentesque varius diam risus, ut condimentum lorem volutpat vel. Nam vel orci pharetra eros pulvinar cursus nec quis tellus. sit amet dui auctor dictum egelus. ",
                              maxLines: 4,
                              overflow: TextOverflow.ellipsis,
                              style: theme.textTheme.bodyMedium)),
                      SizedBox(height: 5.v)
                    ])),
            bottomNavigationBar: _buildBottomBar(context)));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 359.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgVector,
            margin: EdgeInsets.fromLTRB(23.h, 19.v, 327.h, 19.v)));
  }

  /// Section Widget
  Widget _buildLawyerProfile(BuildContext context) {
    return Row(children: [
      CustomImageView(
          imagePath: ImageConstant.imgFrame92056,
          height: 88.v,
          width: 100.h,
          radius: BorderRadius.circular(6.h)),
      Padding(
          padding: EdgeInsets.only(left: 8.h, bottom: 18.v),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Align(
                alignment: Alignment.center,
                child: Text("Lawyer Name", style: theme.textTheme.titleMedium)),
            SizedBox(height: 24.v),
            Opacity(
                opacity: 0.5,
                child: Text("Lawyer@gmail.com",
                    style: CustomTextStyles.bodySmallOnPrimary))
          ])),
      Spacer(),
      CustomElevatedButton(
          width: 76.h,
          text: "Chat",
          margin: EdgeInsets.symmetric(vertical: 24.v),
          buttonStyle: CustomButtonStyles.fillPrimary,
          buttonTextStyle: CustomTextStyles.titleSmallGray100,
          onPressed: () {
            onTapChat(context);
          })
    ]);
  }

  /// Section Widget
  Widget _buildLawyerDetails(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("Practice Area", style: theme.textTheme.titleSmall),
      SizedBox(height: 13.v),
      Container(
          width: 250.h,
          margin: EdgeInsets.only(left: 8.h, right: 69.h),
          child: Text(
              "sit amet dui auctor dictum\n eget a elit. Pellentesqu\ne varius diam risus, ut condi\nmentum lorem volutpat vel. Nam vel or",
              maxLines: 4,
              overflow: TextOverflow.ellipsis,
              style: theme.textTheme.bodyMedium))
    ]);
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {
      Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));
    });
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.homePage;
      case BottomBarEnum.Search:
        return AppRoutes.searchPage;
      case BottomBarEnum.Chats:
        return AppRoutes.chatsOnePage;
      case BottomBarEnum.Services:
        return AppRoutes.servicesSearchForLawyerTabContainerPage;
      case BottomBarEnum.Profile:
        return AppRoutes.profilePage;
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.homePage:
        return HomePage();
      case AppRoutes.searchPage:
        return SearchPage();
      case AppRoutes.chatsOnePage:
        return ChatsOnePage();
      case AppRoutes.servicesSearchForLawyerTabContainerPage:
        return ServicesSearchForLawyerTabContainerPage();
      case AppRoutes.profilePage:
        return ProfilePage();
      default:
        return DefaultWidget();
    }
  }

  /// Navigates to the chatPageScreen when the action is triggered.
  onTapChat(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.chatPageScreen);
  }
}
