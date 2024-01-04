import 'package:ehem_foundation_project/core/app_export.dart';
import 'package:ehem_foundation_project/presentation/chats_one_page/chats_one_page.dart';
import 'package:ehem_foundation_project/presentation/home_page/home_page.dart';
import 'package:ehem_foundation_project/presentation/profile_page/profile_page.dart';
import 'package:ehem_foundation_project/presentation/search_page/search_page.dart';
import 'package:ehem_foundation_project/presentation/services_search_for_lawyer_tab_container_page/services_search_for_lawyer_tab_container_page.dart';
import 'package:ehem_foundation_project/widgets/custom_bottom_bar.dart';
import 'package:ehem_foundation_project/widgets/custom_elevated_button.dart';
import 'package:ehem_foundation_project/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class ServicesFinancailAidScreen extends StatelessWidget {
  ServicesFinancailAidScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController frameController = TextEditingController();

  TextEditingController frameController1 = TextEditingController();

  TextEditingController frameController2 = TextEditingController();

  TextEditingController frameController3 = TextEditingController();

  TextEditingController frameController4 = TextEditingController();

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 23.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 16.h,
                      right: 16.h,
                      bottom: 5.v,
                    ),
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Services",
                            style: theme.textTheme.titleMedium,
                          ),
                        ),
                        SizedBox(height: 14.v),
                        _buildSearchFowLawyerRow(context),
                        SizedBox(height: 27.v),
                        _buildFrameColumn(context),
                        SizedBox(height: 5.v),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Opacity(
                            opacity: 0.5,
                            child: Text(
                              "20 word",
                              style: CustomTextStyles.labelMediumOnPrimary,
                            ),
                          ),
                        ),
                        SizedBox(height: 15.v),
                        _buildFrameColumn1(context),
                        SizedBox(height: 5.v),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Opacity(
                            opacity: 0.5,
                            child: Text(
                              "50 word",
                              style: CustomTextStyles.labelMediumOnPrimary,
                            ),
                          ),
                        ),
                        SizedBox(height: 15.v),
                        _buildFrameColumn2(context),
                        SizedBox(height: 5.v),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Opacity(
                            opacity: 0.5,
                            child: Text(
                              "100 word",
                              style: CustomTextStyles.labelMediumOnPrimary,
                            ),
                          ),
                        ),
                        SizedBox(height: 15.v),
                        _buildFrameColumn3(context),
                        SizedBox(height: 5.v),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Opacity(
                            opacity: 0.5,
                            child: Text(
                              "100 word",
                              style: CustomTextStyles.labelMediumOnPrimary,
                            ),
                          ),
                        ),
                        SizedBox(height: 15.v),
                        _buildFrameColumn4(context),
                        SizedBox(height: 5.v),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Opacity(
                            opacity: 0.5,
                            child: Padding(
                              padding: EdgeInsets.only(right: 3.h),
                              child: Text(
                                "40 word",
                                style: CustomTextStyles.labelMediumOnPrimary,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 36.v),
                        CustomElevatedButton(
                          text: "Submit",
                          buttonStyle: CustomButtonStyles.fillPrimary,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: _buildBottomBar(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildSearchFowLawyerRow(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: CustomElevatedButton(
            text: "Search Fow Lawyer",
            margin: EdgeInsets.only(right: 4.h),
            buttonStyle: CustomButtonStyles.fillOnErrorContainer,
            buttonTextStyle: theme.textTheme.bodyMedium!,
          ),
        ),
        Expanded(
          child: CustomElevatedButton(
            text: "Financial Aid",
            margin: EdgeInsets.only(left: 4.h),
            buttonTextStyle: CustomTextStyles.titleSmallGray100,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildFrameColumn(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "1- Question 1 ?",
          style: theme.textTheme.titleSmall,
        ),
        SizedBox(height: 8.v),
        CustomTextFormField(
          controller: frameController,
          hintText: "Write your answer here",
          hintStyle: CustomTextStyles.bodyMediumOnPrimary_1,
          maxLines: 4,
          borderDecoration: TextFormFieldStyleHelper.fillOnErrorContainerTL12,
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildFrameColumn1(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "1- Question 2 ?",
          style: theme.textTheme.titleSmall,
        ),
        SizedBox(height: 8.v),
        CustomTextFormField(
          controller: frameController1,
          hintText: "Write your answer here",
          hintStyle: CustomTextStyles.bodyMediumOnPrimary_1,
          maxLines: 7,
          borderDecoration: TextFormFieldStyleHelper.fillOnErrorContainerTL12,
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildFrameColumn2(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "1- Question 3 ?",
          style: theme.textTheme.titleSmall,
        ),
        SizedBox(height: 8.v),
        CustomTextFormField(
          controller: frameController2,
          hintText: "Write your answer here",
          hintStyle: CustomTextStyles.bodyMediumOnPrimary_1,
          maxLines: 15,
          borderDecoration: TextFormFieldStyleHelper.fillOnErrorContainerTL12,
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildFrameColumn3(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "1- Question 4 ?",
          style: theme.textTheme.titleSmall,
        ),
        SizedBox(height: 8.v),
        CustomTextFormField(
          controller: frameController3,
          hintText: "Write your answer here",
          hintStyle: CustomTextStyles.bodyMediumOnPrimary_1,
          maxLines: 15,
          borderDecoration: TextFormFieldStyleHelper.fillOnErrorContainerTL12,
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildFrameColumn4(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "1- Question 5 ?",
          style: theme.textTheme.titleSmall,
        ),
        SizedBox(height: 8.v),
        CustomTextFormField(
          controller: frameController4,
          hintText: "Write your answer here",
          hintStyle: CustomTextStyles.bodyMediumOnPrimary_1,
          textInputAction: TextInputAction.done,
          maxLines: 7,
          borderDecoration: TextFormFieldStyleHelper.fillOnErrorContainerTL12,
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {
        Navigator.pushNamed(
            navigatorKey.currentContext!, getCurrentRoute(type));
      },
    );
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
}
