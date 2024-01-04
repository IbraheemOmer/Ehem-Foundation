import 'package:ehem_foundation_project/core/app_export.dart';
import 'package:ehem_foundation_project/presentation/chats_one_page/chats_one_page.dart';
import 'package:ehem_foundation_project/presentation/home_page/home_page.dart';
import 'package:ehem_foundation_project/presentation/profile_page/profile_page.dart';
import 'package:ehem_foundation_project/presentation/search_page/search_page.dart';
import 'package:ehem_foundation_project/presentation/services_search_for_lawyer_tab_container_page/services_search_for_lawyer_tab_container_page.dart';
import 'package:ehem_foundation_project/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class AddAPostOneScreen extends StatelessWidget {
  AddAPostOneScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  SizedBox(height: 16.v),
                  _buildWritePostRow(context),
                  Spacer()
                ])),
            bottomNavigationBar: _buildBottomBar(context)));
  }

  /// Section Widget
  Widget _buildWritePostRow(BuildContext context) {
    return GestureDetector(
        onTap: () {
          onTapWritePostRow(context);
        },
        child: Container(
            padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 11.v),
            decoration: AppDecoration.outlineOnPrimary3,
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Write Post", style: theme.textTheme.titleMedium),
                    CustomImageView(
                        imagePath: ImageConstant.imgMaterialSymbolsClose,
                        height: 16.adaptSize,
                        width: 16.adaptSize,
                        margin: EdgeInsets.only(top: 4.v, bottom: 5.v))
                  ]),
              SizedBox(height: 21.v),
              Opacity(
                  opacity: 0.5,
                  child: Text("What’s on your mind?",
                      style: CustomTextStyles.bodyMediumOnPrimary_1)),
              SizedBox(height: 21.v)
            ])));
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

  /// Navigates to the addAPostTwoScreen when the action is triggered.
  onTapWritePostRow(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.addAPostTwoScreen);
  }
}
