import 'package:ehem_foundation_project/core/app_export.dart';
import 'package:ehem_foundation_project/widgets/app_bar/appbar_title.dart';
import 'package:ehem_foundation_project/widgets/app_bar/custom_app_bar.dart';
import 'package:ehem_foundation_project/widgets/custom_elevated_button.dart';
import 'package:ehem_foundation_project/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class SignUpOneScreen extends StatelessWidget {
  SignUpOneScreen({Key? key}) : super(key: key);

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  TextEditingController dateOfBirthController = TextEditingController();

  TextEditingController countryController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: Form(
                key: _formKey,
                child: Container(
                    width: double.maxFinite,
                    padding: EdgeInsets.symmetric(horizontal: 16.h),
                    child: Column(children: [
                      CustomImageView(
                          imagePath: ImageConstant.imgWebsiteSetupRafikiGray200,
                          height: 85.v,
                          width: 128.h),
                      SizedBox(height: 35.v),
                      _buildEmailSection(context),
                      SizedBox(height: 14.v),
                      _buildPasswordSection(context),
                      SizedBox(height: 14.v),
                      _buildDateOfBirthSection(context),
                      SizedBox(height: 16.v),
                      _buildCountrySection(context),
                      SizedBox(height: 48.v),
                      CustomElevatedButton(
                          text: "Continue",
                          buttonStyle: CustomButtonStyles.fillOnError,
                          onPressed: () {
                            onTapContinue(context);
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
                                style: CustomTextStyles.titleMediumOnError)
                          ]),
                          textAlign: TextAlign.left),
                      SizedBox(height: 5.v)
                    ])))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        centerTitle: true, title: AppbarTitle(text: "Let’s Get Started"));
  }

  /// Section Widget
  Widget _buildEmailSection(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("Email", style: theme.textTheme.titleMedium),
      SizedBox(height: 10.v),
      CustomTextFormField(
          controller: emailController,
          hintText: "Example@gmial.com",
          textInputType: TextInputType.emailAddress)
    ]);
  }

  /// Section Widget
  Widget _buildPasswordSection(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("Password", style: theme.textTheme.titleLarge),
      SizedBox(height: 13.v),
      CustomTextFormField(
          controller: passwordController,
          hintText: "*************",
          textInputType: TextInputType.visiblePassword,
          obscureText: true)
    ]);
  }

  /// Section Widget
  Widget _buildDateOfBirthSection(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("Date of birth", style: theme.textTheme.titleLarge),
      SizedBox(height: 13.v),
      CustomTextFormField(
          controller: dateOfBirthController, hintText: "23/05/1995")
    ]);
  }

  /// Section Widget
  Widget _buildCountrySection(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("Country", style: theme.textTheme.titleLarge),
      SizedBox(height: 11.v),
      CustomTextFormField(
          controller: countryController,
          hintText: "Pakistan",
          textInputAction: TextInputAction.done)
    ]);
  }

  /// Navigates to the signUpTwoScreen when the action is triggered.
  onTapContinue(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.signUpTwoScreen);
  }
}
