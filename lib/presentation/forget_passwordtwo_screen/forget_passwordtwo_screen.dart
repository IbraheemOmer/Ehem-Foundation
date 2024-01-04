import 'package:ehem_foundation_project/core/app_export.dart';
import 'package:ehem_foundation_project/widgets/custom_elevated_button.dart';
import 'package:ehem_foundation_project/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class ForgetPasswordtwoScreen extends StatelessWidget {
  ForgetPasswordtwoScreen({Key? key}) : super(key: key);

  TextEditingController newpasswordController = TextEditingController();

  TextEditingController newpasswordController1 = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Form(
                key: _formKey,
                child: Container(
                    width: double.maxFinite,
                    padding:
                        EdgeInsets.symmetric(horizontal: 14.h, vertical: 40.v),
                    child: Column(children: [
                      CustomImageView(
                          imagePath: ImageConstant.imgFrameOnprimary216x212,
                          height: 216.v,
                          width: 212.h),
                      SizedBox(height: 33.v),
                      Text("Forget password ",
                          style: theme.textTheme.titleLarge),
                      SizedBox(height: 19.v),
                      Opacity(
                          opacity: 0.7,
                          child: Text("Enter New Password",
                              style: CustomTextStyles.bodyLargeOnPrimary)),
                      SizedBox(height: 19.v),
                      _buildNewPasswordSection(context),
                      SizedBox(height: 11.v),
                      _buildReEnterNewPasswordSection(context),
                      SizedBox(height: 24.v),
                      CustomElevatedButton(
                          text: "Confirm",
                          buttonStyle: CustomButtonStyles.fillOnError,
                          onPressed: () {
                            onTapConfirm(context);
                          }),
                      SizedBox(height: 5.v)
                    ])))));
  }

  /// Section Widget
  Widget _buildNewPasswordSection(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 2.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text("Enter New Password", style: theme.textTheme.titleMedium),
          SizedBox(height: 10.v),
          CustomTextFormField(
              controller: newpasswordController,
              hintText: "*************",
              textInputType: TextInputType.visiblePassword,
              obscureText: true)
        ]));
  }

  /// Section Widget
  Widget _buildReEnterNewPasswordSection(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 2.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text("Re-Enter New Password", style: theme.textTheme.titleMedium),
          SizedBox(height: 10.v),
          CustomTextFormField(
              controller: newpasswordController1,
              hintText: "*************",
              textInputAction: TextInputAction.done,
              textInputType: TextInputType.visiblePassword,
              obscureText: true)
        ]));
  }

  /// Navigates to the loginScreen when the action is triggered.
  onTapConfirm(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.loginScreen);
  }
}
