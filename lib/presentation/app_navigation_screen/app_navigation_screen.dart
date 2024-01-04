import 'package:ehem_foundation_project/core/app_export.dart';
import 'package:flutter/material.dart';

class AppNavigationScreen extends StatelessWidget {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFFFFFFFF),
        body: SizedBox(
          width: 375.h,
          child: Column(
            children: [
              _buildAppNavigation(context),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0XFFFFFFFF),
                    ),
                    child: Column(
                      children: [
                        _buildScreenTitle(
                          context,
                          screenTitle: "Get Started Two",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.getStartedTwoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Type of User - User",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.typeOfUserUserScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Type of User - Lawyer",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.typeOfUserLawyerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "login One",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.loginOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Sign Up",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.signUpScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "forget password One",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.forgetPasswordOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "forget passwordTwo One",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.forgetPasswordtwoOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "login",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.loginScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Sign Up One",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.signUpOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "forget password",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.forgetPasswordScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "forget passwordTwo",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.forgetPasswordtwoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Sign Up Two",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.signUpTwoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Home - Container",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.homeContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Services - Financail Aid",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.servicesFinancailAidScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Lawyer page",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.lawyerPageScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Home One",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.homeOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Search One",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.searchOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Chats",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.chatsScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Profile Two - Tab Container",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.profileTwoTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Profile One",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.profileOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Chat page One",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.chatPageOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Post Page One",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.postPageOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Post Page Two",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.postPageTwoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Add a post One",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.addAPostOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Request payment One",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.requestPaymentOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Sending a message",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.sendingAMessageScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Chat page",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.chatPageScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Accpet Request",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.accpetRequestScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Services - Pending Financail Aid",
                          onTapScreenTitle: () => onTapScreenTitle(context,
                              AppRoutes.servicesPendingFinancailAidScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Card info ",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.cardInfoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Wtite a comment",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.wtiteACommentScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Add a post Two",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.addAPostTwoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "All Attachments - delete",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.allAttachmentsDeleteScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Wtite a comment One",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.wtiteACommentOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Request payment Two",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.requestPaymentTwoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Sending a message One",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.sendingAMessageOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Answer payment One",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.answerPaymentOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Services - Accepted Financail Aid",
                          onTapScreenTitle: () => onTapScreenTitle(context,
                              AppRoutes.servicesAcceptedFinancailAidScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "sending attachments One",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.sendingAttachmentsOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Add a post Three",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.addAPostThreeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "sending attachments",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.sendingAttachmentsScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Answer payment Two",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.answerPaymentTwoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Services - Accepted Financail Aid One",
                          onTapScreenTitle: () => onTapScreenTitle(context,
                              AppRoutes.servicesAcceptedFinancailAidOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Chat page Three",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.chatPageThreeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "All Attachments - delete One",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.allAttachmentsDeleteOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Answer payment Three",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.answerPaymentThreeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Chat page Two",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.chatPageTwoScreen),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAppNavigation(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF888888),
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle(
    BuildContext context, {
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle!.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  screenTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: Color(0XFF888888),
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(
    BuildContext context,
    String routeName,
  ) {
    Navigator.pushNamed(context, routeName);
  }
}
