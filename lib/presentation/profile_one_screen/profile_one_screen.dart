import 'package:ehem_foundation_project/core/app_export.dart';
import 'package:ehem_foundation_project/presentation/chats_one_page/chats_one_page.dart';
import 'package:ehem_foundation_project/presentation/home_page/home_page.dart';
import 'package:ehem_foundation_project/presentation/profile_page/profile_page.dart';
import 'package:ehem_foundation_project/presentation/search_page/search_page.dart';
import 'package:ehem_foundation_project/presentation/services_search_for_lawyer_tab_container_page/services_search_for_lawyer_tab_container_page.dart';
import 'package:ehem_foundation_project/widgets/app_bar/appbar_subtitle.dart';
import 'package:ehem_foundation_project/widgets/app_bar/custom_app_bar.dart';
import 'package:ehem_foundation_project/widgets/custom_bottom_bar.dart';
import 'package:ehem_foundation_project/widgets/custom_elevated_button.dart';
import 'package:ehem_foundation_project/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class ProfileOneScreen extends StatelessWidget {
  ProfileOneScreen({Key? key}) : super(key: key);

  TextEditingController writedescriptionhereController =
      TextEditingController();

  TextEditingController exampleFiveController = TextEditingController();

  TextEditingController exampleFiveController1 = TextEditingController();

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    child: Padding(
                        padding: EdgeInsets.only(
                            left: 16.h, right: 16.h, bottom: 5.v),
                        child: Column(children: [
                          SizedBox(
                              height: 176.adaptSize,
                              width: 176.adaptSize,
                              child:
                                  Stack(alignment: Alignment.center, children: [
                                Align(
                                    alignment: Alignment.center,
                                    child: Container(
                                        height: 170.adaptSize,
                                        width: 170.adaptSize,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(85.h),
                                            border: Border.all(
                                                color:
                                                    theme.colorScheme.onError,
                                                width: 1.h)))),
                                Align(
                                    alignment: Alignment.center,
                                    child: SizedBox(
                                        height: 176.adaptSize,
                                        width: 176.adaptSize,
                                        child: Stack(
                                            alignment: Alignment.bottomRight,
                                            children: [
                                              CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgEllipse3176x176,
                                                  height: 176.adaptSize,
                                                  width: 176.adaptSize,
                                                  radius: BorderRadius.circular(
                                                      88.h),
                                                  alignment: Alignment.center),
                                              CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgSolarCameraMiOnerror,
                                                  height: 32.adaptSize,
                                                  width: 32.adaptSize,
                                                  alignment:
                                                      Alignment.bottomRight,
                                                  margin: EdgeInsets.only(
                                                      right: 11.h, bottom: 2.v))
                                            ])))
                              ])),
                          SizedBox(height: 32.v),
                          _buildBasicInformation(context),
                          SizedBox(height: 21.v),
                          _buildBiography(context),
                          SizedBox(height: 11.v),
                          _buildPracticeArea(context),
                          SizedBox(height: 11.v),
                          _buildEducation(context),
                          SizedBox(height: 11.v),
                          _buildSkills(context),
                          SizedBox(height: 32.v),
                          CustomElevatedButton(
                              height: 48.v,
                              text: "Save Changes",
                              buttonStyle: CustomButtonStyles.fillOnErrorTL8)
                        ])))),
            bottomNavigationBar: _buildBottomBar(context)));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        title: AppbarSubtitle(
            text: "Profile", margin: EdgeInsets.only(left: 16.h)));
  }

  /// Section Widget
  Widget _buildBasicInformation(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Expanded(
          child: CustomElevatedButton(
              text: "Basic Information",
              margin: EdgeInsets.only(right: 4.h),
              buttonStyle: CustomButtonStyles.fillOnErrorContainer,
              buttonTextStyle: theme.textTheme.bodyMedium!,
              onPressed: () {
                onTapBasicInformation(context);
              })),
      Expanded(
          child: CustomElevatedButton(
              text: "Experience",
              margin: EdgeInsets.only(left: 4.h),
              buttonStyle: CustomButtonStyles.fillOnErrorTL8,
              buttonTextStyle: CustomTextStyles.titleSmallGray100))
    ]);
  }

  /// Section Widget
  Widget _buildBiography(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("Biography", style: theme.textTheme.titleMedium),
      SizedBox(height: 8.v),
      CustomTextFormField(
          controller: writedescriptionhereController,
          hintText: "Write description here",
          maxLines: 5)
    ]);
  }

  /// Section Widget
  Widget _buildPracticeArea(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("Practice Area ", style: theme.textTheme.titleMedium),
      SizedBox(height: 10.v),
      CustomTextFormField(
          controller: exampleFiveController, hintText: "Example", maxLines: 5)
    ]);
  }

  /// Section Widget
  Widget _buildEducation(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("Education", style: theme.textTheme.titleMedium),
      SizedBox(height: 10.v),
      Container(
          width: 328.h,
          padding: EdgeInsets.all(8.h),
          decoration: AppDecoration.fillOnErrorContainer
              .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
          child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 3.v),
                Text("Example", style: theme.textTheme.bodyMedium),
                SizedBox(height: 4.v),
                SizedBox(
                    height: 20.v,
                    width: 51.h,
                    child: Stack(alignment: Alignment.center, children: [
                      Align(
                          alignment: Alignment.center,
                          child: Text("Example",
                              style: theme.textTheme.bodyMedium)),
                      Align(
                          alignment: Alignment.center,
                          child: Text("Example",
                              style: theme.textTheme.bodyMedium))
                    ]))
              ]))
    ]);
  }

  /// Section Widget
  Widget _buildSkills(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("Skills", style: theme.textTheme.titleMedium),
      SizedBox(height: 10.v),
      CustomTextFormField(
          controller: exampleFiveController1,
          hintText: "Example",
          textInputAction: TextInputAction.done,
          maxLines: 5)
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

  /// Navigates to the profileTwoTabContainerScreen when the action is triggered.
  onTapBasicInformation(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.profileTwoTabContainerScreen);
  }
}
