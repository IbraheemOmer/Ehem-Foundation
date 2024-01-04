import 'package:ehem_foundation_project/core/app_export.dart';
import 'package:ehem_foundation_project/widgets/custom_elevated_button.dart';
import 'package:ehem_foundation_project/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class ForgetPasswordScreen extends StatelessWidget {
  ForgetPasswordScreen({Key? key}) : super(key: key);

  TextEditingController emailController = TextEditingController();

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
                      SizedBox(height: 29.v),
                      Opacity(
                          opacity: 0.7,
                          child: Container(
                              width: 308.h,
                              margin: EdgeInsets.only(left: 12.h, right: 11.h),
                              child: Text(
                                  "Enter the email associated with your account and we will send you the new password",
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.center,
                                  style: CustomTextStyles.bodyLargeOnPrimary
                                      .copyWith(height: 1.30)))),
                      SizedBox(height: 19.v),
                      _buildForgetPasswordForm(context),
                      SizedBox(height: 80.v),
                      CustomElevatedButton(
                          text: "Send Link",
                          buttonStyle: CustomButtonStyles.fillOnError,
                          onPressed: () {
                            onTapSendLink(context);
                          }),
                      SizedBox(height: 5.v)
                    ])))));
  }

  /// Section Widget
  Widget _buildForgetPasswordForm(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 2.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text("Email", style: theme.textTheme.titleMedium),
          SizedBox(height: 10.v),
          CustomTextFormField(
              controller: emailController,
              hintText: "Example@gmial.com",
              textInputAction: TextInputAction.done,
              textInputType: TextInputType.emailAddress)
        ]));
  }

  /// Navigates to the forgetPasswordtwoScreen when the action is triggered.
  onTapSendLink(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.forgetPasswordtwoScreen);
  }
}
