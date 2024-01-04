import '../type_of_user_user_screen/widgets/typeofuseruserframe1_item_widget.dart';
import 'package:ehem_foundation_project/core/app_export.dart';
import 'package:ehem_foundation_project/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class TypeOfUserUserScreen extends StatelessWidget {
  const TypeOfUserUserScreen({Key? key}) : super(key: key);

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
                  _buildTypeOfUserUserFrame1(context),
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
  Widget _buildTypeOfUserUserFrame1(BuildContext context) {
    return SizedBox(
        height: 212.v,
        child: ListView.separated(
            scrollDirection: Axis.horizontal,
            separatorBuilder: (context, index) {
              return SizedBox(width: 16.h);
            },
            itemCount: 2,
            itemBuilder: (context, index) {
              return Typeofuseruserframe1ItemWidget(onTapFrame: () {
                onTapFrame(context);
              });
            }));
  }

  /// Navigates to the typeOfUserLawyerScreen when the action is triggered.
  onTapFrame(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.typeOfUserLawyerScreen);
  }

  /// Navigates to the loginOneScreen when the action is triggered.
  onTapContinue(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.loginOneScreen);
  }
}
