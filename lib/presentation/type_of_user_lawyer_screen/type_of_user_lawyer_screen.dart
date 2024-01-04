import '../type_of_user_lawyer_screen/widgets/userframe_item_widget.dart';
import 'package:ehem_foundation_project/core/app_export.dart';
import 'package:ehem_foundation_project/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class TypeOfUserLawyerScreen extends StatelessWidget {
  const TypeOfUserLawyerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 72.v),
                child: Column(children: [
                  Text("Chose which user are you",
                      style: theme.textTheme.titleLarge),
                  SizedBox(height: 58.v),
                  _buildUserFrame(context),
                  Spacer(flex: 57),
                  CustomElevatedButton(
                      text: "Continue",
                      buttonStyle: CustomButtonStyles.fillPrimary,
                      onPressed: () {
                        onTapContinue(context);
                      }),
                  Spacer(flex: 42)
                ]))));
  }

  /// Section Widget
  Widget _buildUserFrame(BuildContext context) {
    return SizedBox(
        height: 212.v,
        child: ListView.separated(
            scrollDirection: Axis.horizontal,
            separatorBuilder: (context, index) {
              return SizedBox(width: 16.h);
            },
            itemCount: 2,
            itemBuilder: (context, index) {
              return UserframeItemWidget(onTapFrame: () {
                onTapFrame(context);
              });
            }));
  }

  /// Navigates to the typeOfUserUserScreen when the action is triggered.
  onTapFrame(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.typeOfUserUserScreen);
  }

  /// Navigates to the loginScreen when the action is triggered.
  onTapContinue(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.loginScreen);
  }
}
