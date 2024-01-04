import 'package:ehem_foundation_project/core/app_export.dart';
import 'package:ehem_foundation_project/presentation/services_search_for_lawyer_page/services_search_for_lawyer_page.dart';
import 'package:ehem_foundation_project/widgets/app_bar/appbar_subtitle.dart';
import 'package:ehem_foundation_project/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class ServicesSearchForLawyerTabContainerPage extends StatefulWidget {
  const ServicesSearchForLawyerTabContainerPage({Key? key})
      : super(
          key: key,
        );

  @override
  ServicesSearchForLawyerTabContainerPageState createState() =>
      ServicesSearchForLawyerTabContainerPageState();
}

class ServicesSearchForLawyerTabContainerPageState
    extends State<ServicesSearchForLawyerTabContainerPage>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                _buildTabview(context),
                SizedBox(
                  height: 584.v,
                  child: TabBarView(
                    controller: tabviewController,
                    children: [
                      ServicesSearchForLawyerPage(),
                      ServicesSearchForLawyerPage(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
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
  Widget _buildTabview(BuildContext context) {
    return SizedBox(
      height: 40.v,
      width: 328.h,
      child: TabBar(
        controller: tabviewController,
        labelPadding: EdgeInsets.zero,
        labelColor: theme.colorScheme.onPrimary.withOpacity(1),
        labelStyle: TextStyle(
          fontSize: 14.fSize,
          fontFamily: 'Brandon Text',
          fontWeight: FontWeight.w400,
        ),
        unselectedLabelColor: appTheme.gray100,
        unselectedLabelStyle: TextStyle(
          fontSize: 14.fSize,
          fontFamily: 'Brandon Text',
          fontWeight: FontWeight.w500,
        ),
        indicator: BoxDecoration(
          color: theme.colorScheme.onErrorContainer.withOpacity(1),
          borderRadius: BorderRadius.circular(
            8.h,
          ),
        ),
        tabs: [
          Tab(
            child: Text(
              "Search Fow Lawyer",
            ),
          ),
          Tab(
            child: Text(
              "Financial Aid",
            ),
          ),
        ],
      ),
    );
  }
}
