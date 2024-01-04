import '../home_page/widgets/userprofile_item_widget.dart';
import 'package:ehem_foundation_project/core/app_export.dart';
import 'package:ehem_foundation_project/widgets/app_bar/appbar_subtitle.dart';
import 'package:ehem_foundation_project/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:ehem_foundation_project/widgets/app_bar/appbar_trailing_image.dart';
import 'package:ehem_foundation_project/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Padding(
                padding: EdgeInsets.only(top: 15.v),
                child: ListView.separated(
                    physics: BouncingScrollPhysics(),
                    shrinkWrap: true,
                    separatorBuilder: (context, index) {
                      return SizedBox(height: 1.v);
                    },
                    itemCount: 4,
                    itemBuilder: (context, index) {
                      return UserprofileItemWidget(onTapUserProfile: () {
                        onTapUserProfile(context);
                      });
                    }))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        title:
            AppbarSubtitle(text: "Home", margin: EdgeInsets.only(left: 17.h)),
        actions: [
          AppbarSubtitleOne(
              text: "Recent",
              margin: EdgeInsets.only(left: 25.h, top: 18.v, right: 18.h)),
          AppbarTrailingImage(
              imagePath: ImageConstant.imgArrowDownOnprimary,
              margin: EdgeInsets.fromLTRB(15.h, 18.v, 43.h, 2.v))
        ]);
  }

  /// Navigates to the postPageOneScreen when the action is triggered.
  onTapUserProfile(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.postPageOneScreen);
  }
}
