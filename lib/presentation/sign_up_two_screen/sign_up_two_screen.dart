import 'package:ehem_foundation_project/core/app_export.dart';
import 'package:ehem_foundation_project/widgets/custom_elevated_button.dart';
import 'package:ehem_foundation_project/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class SignUpTwoScreen extends StatelessWidget {
  SignUpTwoScreen({Key? key}) : super(key: key);

  TextEditingController writeDescriptionHereController =
      TextEditingController();

  TextEditingController exampleThreeController = TextEditingController();

  TextEditingController exampleThreeController1 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  SizedBox(height: 38.v),
                  Expanded(
                      child: SingleChildScrollView(
                          child: Padding(
                              padding: EdgeInsets.only(
                                  left: 16.h, right: 16.h, bottom: 32.v),
                              child: Column(children: [
                                Text("Few more information",
                                    style: theme.textTheme.titleLarge),
                                SizedBox(height: 13.v),
                                CustomImageView(
                                    imagePath: ImageConstant
                                        .imgWebsiteSetupRafikiGray200,
                                    height: 85.v,
                                    width: 128.h),
                                SizedBox(height: 37.v),
                                _buildBiographySection(context),
                                SizedBox(height: 11.v),
                                _buildPracticeAreaSection(context),
                                SizedBox(height: 11.v),
                                _buildEducationSection(context),
                                SizedBox(height: 11.v),
                                _buildSkillsSection(context),
                                SizedBox(height: 56.v),
                                CustomElevatedButton(
                                    text: "Sign Up",
                                    buttonStyle: CustomButtonStyles.fillOnError,
                                    onPressed: () {
                                      onTapSignUp(context);
                                    }),
                                SizedBox(height: 27.v),
                                RichText(
                                    text: TextSpan(children: [
                                      TextSpan(
                                          text: "Do you have account?",
                                          style: theme.textTheme.bodyMedium),
                                      TextSpan(text: " "),
                                      TextSpan(
                                          text: "Login",
                                          style: CustomTextStyles
                                              .titleMediumOnError)
                                    ]),
                                    textAlign: TextAlign.left)
                              ]))))
                ]))));
  }

  /// Section Widget
  Widget _buildBiographySection(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("Biography", style: theme.textTheme.titleMedium),
      SizedBox(height: 8.v),
      CustomTextFormField(
          controller: writeDescriptionHereController,
          hintText: "Write description here",
          maxLines: 5)
    ]);
  }

  /// Section Widget
  Widget _buildPracticeAreaSection(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("Practice Area ", style: theme.textTheme.titleMedium),
      SizedBox(height: 10.v),
      CustomTextFormField(
          controller: exampleThreeController, hintText: "Example", maxLines: 5)
    ]);
  }

  /// Section Widget
  Widget _buildEducationSection(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("Education", style: theme.textTheme.titleMedium),
      SizedBox(height: 10.v),
      Container(
          width: 328.h,
          padding: EdgeInsets.all(8.h),
          decoration: AppDecoration.fillOnErrorContainer
              .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
          child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 3.v),
                Text("Example", style: theme.textTheme.bodyMedium),
                SizedBox(height: 4.v),
                SizedBox(
                    height: 20.v,
                    width: 51.h,
                    child: Stack(alignment: Alignment.center, children: [
                      Align(
                          alignment: Alignment.center,
                          child: Text("Example",
                              style: theme.textTheme.bodyMedium)),
                      Align(
                          alignment: Alignment.center,
                          child: Text("Example",
                              style: theme.textTheme.bodyMedium))
                    ]))
              ]))
    ]);
  }

  /// Section Widget
  Widget _buildSkillsSection(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("Skills", style: theme.textTheme.titleMedium),
      SizedBox(height: 10.v),
      CustomTextFormField(
          controller: exampleThreeController1,
          hintText: "Example",
          textInputAction: TextInputAction.done,
          maxLines: 5)
    ]);
  }

  /// Navigates to the homeOneScreen when the action is triggered.
  onTapSignUp(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homeOneScreen);
  }
}
