import '../services_search_for_lawyer_page/widgets/userprofile2_item_widget.dart';
import 'package:ehem_foundation_project/core/app_export.dart';
import 'package:ehem_foundation_project/widgets/custom_search_view.dart';
import 'package:flutter/material.dart';

class ServicesSearchForLawyerPage extends StatefulWidget {
  const ServicesSearchForLawyerPage({Key? key}) : super(key: key);

  @override
  ServicesSearchForLawyerPageState createState() =>
      ServicesSearchForLawyerPageState();
}

// ignore_for_file: must_be_immutable
class ServicesSearchForLawyerPageState
    extends State<ServicesSearchForLawyerPage>
    with AutomaticKeepAliveClientMixin<ServicesSearchForLawyerPage> {
  TextEditingController searchController = TextEditingController();

  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    child: Column(children: [
                  SizedBox(height: 16.v),
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.h),
                      child: Column(children: [
                        CustomSearchView(
                            controller: searchController, hintText: "Search"),
                        SizedBox(height: 24.v),
                        _buildUserProfile(context)
                      ]))
                ])))));
  }

  /// Section Widget
  Widget _buildUserProfile(BuildContext context) {
    return ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (context, index) {
          return SizedBox(height: 16.v);
        },
        itemCount: 5,
        itemBuilder: (context, index) {
          return Userprofile2ItemWidget(onTapUserProfile: () {
            onTapUserProfile(context);
          });
        });
  }

  /// Navigates to the lawyerPageScreen when the action is triggered.
  onTapUserProfile(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.lawyerPageScreen);
  }
}
