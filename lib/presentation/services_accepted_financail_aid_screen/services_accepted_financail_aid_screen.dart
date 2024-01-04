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
import 'package:flutter/material.dart';

class ServicesAcceptedFinancailAidScreen extends StatelessWidget {
  ServicesAcceptedFinancailAidScreen({Key? key})
      : super(
          key: key,
        );

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
            children: [
              _buildSearchFowLawyer(context),
              SizedBox(height: 71.v),
              SizedBox(
                width: 323.h,
                child: Text(
                  "Congratulations! Your Finical aid  with the \nemail ( Example@gmail.com ) \n\nHas been accepted ",
                  maxLines: 4,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: CustomTextStyles.bodyLarge18,
                ),
              ),
              SizedBox(height: 57.v),
              Container(
                height: 122.adaptSize,
                width: 122.adaptSize,
                padding: EdgeInsets.symmetric(
                  horizontal: 3.h,
                  vertical: 15.v,
                ),
                decoration: AppDecoration.fillPrimary.copyWith(
                  borderRadius: BorderRadiusStyle.circleBorder61,
                ),
                child: CustomImageView(
                  imagePath: ImageConstant.imgCheckmark,
                  height: 60.v,
                  width: 84.h,
                  alignment: Alignment.topRight,
                ),
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
        bottomNavigationBar: _buildBottomBar(context),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      title: AppbarSubtitle(
        text: "Services",
        margin: EdgeInsets.only(left: 16.h),
      ),
    );
  }

  /// Section Widget
  Widget _buildSearchFowLawyer(BuildContext context) {
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
