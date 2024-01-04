import 'package:ehem_foundation_project/core/app_export.dart';
import 'package:ehem_foundation_project/presentation/chats_one_page/chats_one_page.dart';
import 'package:ehem_foundation_project/presentation/home_page/home_page.dart';
import 'package:ehem_foundation_project/presentation/profile_page/profile_page.dart';
import 'package:ehem_foundation_project/presentation/search_page/search_page.dart';
import 'package:ehem_foundation_project/presentation/services_search_for_lawyer_tab_container_page/services_search_for_lawyer_tab_container_page.dart';
import 'package:ehem_foundation_project/widgets/app_bar/appbar_subtitle.dart';
import 'package:ehem_foundation_project/widgets/app_bar/custom_app_bar.dart';
import 'package:ehem_foundation_project/widgets/custom_bottom_bar.dart';
import 'package:ehem_foundation_project/widgets/custom_search_view.dart';
import 'package:flutter/material.dart';

class SearchOneScreen extends StatelessWidget {
  SearchOneScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController searchController = TextEditingController();

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(horizontal: 16.h),
          child: Column(
            children: [
              CustomSearchView(
                controller: searchController,
                hintText: "Search",
              ),
              SizedBox(height: 16.v),
              Column(
                children: [
                  _buildFrameRow(context),
                  SizedBox(height: 16.v),
                  _buildFrameColumn(context),
                  SizedBox(height: 16.v),
                  _buildFrameColumn1(context),
                ],
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
        text: "Search for law",
        margin: EdgeInsets.only(left: 16.h),
      ),
    );
  }

  /// Section Widget
  Widget _buildFrameRow(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 1.h),
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 14.v,
      ),
      decoration: AppDecoration.fillOnErrorContainer.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder4,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Law Name",
                style: CustomTextStyles.bodyMedium15,
              ),
              SizedBox(height: 5.v),
              Opacity(
                opacity: 0.7,
                child: Text(
                  "By someone or short description",
                  style: CustomTextStyles.bodySmallOnPrimary12_1,
                ),
              ),
            ],
          ),
          CustomImageView(
            imagePath: ImageConstant.imgArrowDown,
            height: 16.adaptSize,
            width: 16.adaptSize,
            margin: EdgeInsets.only(bottom: 25.v),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFrameColumn(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 1.h),
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 13.v,
      ),
      decoration: AppDecoration.fillOnErrorContainer.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder4,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          _buildLawNameRow(
            context,
            lawName: "Law Name",
          ),
          SizedBox(height: 5.v),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Opacity(
                opacity: 0.7,
                child: Text(
                  "By someone or short description",
                  style: CustomTextStyles.bodySmallOnPrimary12_1,
                ),
              ),
              SizedBox(height: 7.v),
              Container(
                width: 285.h,
                margin: EdgeInsets.only(right: 9.h),
                child: Text(
                  "sit amet dui auctor dictum eget a elit. Pellentesque varius diam risus, ut condimentum lorem volutpat vel. Nam vel orci pharetra eros pulvinar cursus nec quis tellus. sit amet dui auctor dictum egelus. ",
                  maxLines: 5,
                  overflow: TextOverflow.ellipsis,
                  style: theme.textTheme.bodyMedium,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFrameColumn1(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 1.h),
      decoration: AppDecoration.fillOnErrorContainer.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder4,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgFrame92030,
            height: 104.v,
            width: 327.h,
          ),
          SizedBox(height: 6.v),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.h),
            child: _buildLawNameRow(
              context,
              lawName: "Law Name",
            ),
          ),
          SizedBox(height: 5.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Opacity(
              opacity: 0.7,
              child: Padding(
                padding: EdgeInsets.only(left: 16.h),
                child: Text(
                  "By someone or short description",
                  style: CustomTextStyles.bodySmallOnPrimary12_1,
                ),
              ),
            ),
          ),
          SizedBox(height: 13.v),
          Container(
            width: 285.h,
            margin: EdgeInsets.only(
              left: 16.h,
              right: 25.h,
            ),
            child: Text(
              "sit amet dui auctor dictum eget a elit. Pellentesque varius diam risus, ut condimentum lorem volutpat vel. Nam vel orci pharetra eros pulvinar cursus nec quis tellus. sit amet dui ",
              maxLines: 4,
              overflow: TextOverflow.ellipsis,
              style: theme.textTheme.bodyMedium,
            ),
          ),
          SizedBox(height: 18.v),
        ],
      ),
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

  /// Common widget
  Widget _buildLawNameRow(
    BuildContext context, {
    required String lawName,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          lawName,
          style: CustomTextStyles.bodyMedium15.copyWith(
            color: theme.colorScheme.onPrimary.withOpacity(1),
          ),
        ),
        CustomImageView(
          imagePath: ImageConstant.imgArrowUp,
          height: 16.adaptSize,
          width: 16.adaptSize,
          margin: EdgeInsets.only(bottom: 3.v),
        ),
      ],
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
