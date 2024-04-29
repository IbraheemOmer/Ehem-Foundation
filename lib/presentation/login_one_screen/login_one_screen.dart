import 'package:ehem_foundation_project/core/app_export.dart';
import 'package:ehem_foundation_project/widgets/app_bar/appbar_title.dart';
import 'package:ehem_foundation_project/widgets/app_bar/custom_app_bar.dart';
import 'package:ehem_foundation_project/widgets/custom_elevated_button.dart';
import 'package:ehem_foundation_project/widgets/custom_text_form_field.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../home_container_screen/home_container_screen.dart';

// ignore_for_file: must_be_immutable
class LoginOneScreen extends StatefulWidget {
  LoginOneScreen({Key? key}) : super(key: key);

  @override
  State<LoginOneScreen> createState() => _LoginOneScreenState();
}

class _LoginOneScreenState extends State<LoginOneScreen> {
  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  bool _obscurePassword = true;

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final FirebaseAuth _auth = FirebaseAuth.instance;

  bool _isLoading = false;

  String _error = "";

  Future<void> _login(BuildContext context) async {
    setState(() {
      _error = "";
    });

    if (_formKey.currentState?.validate() ?? false) {
      try {
        setState(() {
          _isLoading = true;
        });
        UserCredential userCredential = await _auth.signInWithEmailAndPassword(
          email: emailController.text.trim(),
          password: passwordController.text.trim(),
        );

        Navigator.push(context, MaterialPageRoute(builder: (context) => HomeContainerScreen()));
      } catch (e) {
        setState(() {
          _error = "Error during login: $e";
        });
        print("Error during login: $e");

        // Show a pop-up to the user with the error message
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text("Error"),
              content: Text("An error occurred during login: $e"),
              actions: <Widget>[
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text("OK"),
                ),
              ],
            );
          },
        );
      } finally {
        setState(() {
          _isLoading = false;
        });
      }
    }
  }


  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: SingleChildScrollView(
              child: Form(
                  key: _formKey,
                  child: Container(
                      width: double.maxFinite,
                      padding:
                          EdgeInsets.symmetric(horizontal: 16.h, vertical: 7.v),
                      child: Column(children: [
                        SvgPicture.asset(
                            ImageConstant.imgFrame,
                            height: 216.v,
                            width: 266.h),
                        SizedBox(height: 35.v),
                        _buildEmailColumn(context),
                        SizedBox(height: 14.v),
                        _buildPasswordColumn(context),
                        SizedBox(height: 15.v),
                        Align(
                            alignment: Alignment.centerRight,
                            child: GestureDetector(
                                onTap: () {
                                  onTapTxtForgetPassword(context);
                                },
                                child: Padding(
                                    padding: EdgeInsets.only(right: 16.h),
                                    child: Text("Forget Password?",
                                        style: CustomTextStyles
                                            .bodyMediumOnPrimary
                                            .copyWith(
                                                decoration:
                                                    TextDecoration.underline))))),
                        SizedBox(height: 20.v),
                        CustomElevatedButton(
                            text: "login",
                            buttonStyle: CustomButtonStyles.fillPrimary,
                            onPressed: () {
                              _login(context);
                            }),
                        SizedBox(height: 27.v),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RichText(
                                text: TextSpan(children: [
                                  TextSpan(
                                      text: "Don't have account?",
                                      style: theme.textTheme.bodyMedium),
                                  TextSpan(text: " "),
                                ]),
                                textAlign: TextAlign.left),
                            GestureDetector(
                              onTap: () {
                                onTapTxtDonthaveaccount(context);
                              },
                              child: Container(
                                child: RichText(
                                    text: TextSpan(children: [
                                      TextSpan(
                                          text: "Register",
                                          style: CustomTextStyles
                                              .titleMediumPrimary)
                                    ]),
                                    textAlign: TextAlign.left),
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: 5.v)
                      ]))),
            )));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        centerTitle: true, title: AppbarTitle(text: "Welcome Back"));
  }

  /// Section Widget
  Widget _buildEmailColumn(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("Email", style: theme.textTheme.titleMedium),
      SizedBox(height: 10.v),
      CustomTextFormField(
          controller: emailController,
          textInputType: TextInputType.emailAddress,
          autofocus: false,)
    ]);
  }

  /// Section Widget
  Widget _buildPasswordColumn(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Password", style: theme.textTheme.titleLarge),
        SizedBox(height: 13.v),
        CustomTextFormField(
          controller: passwordController,
          textInputAction: TextInputAction.done,
          textInputType: TextInputType.visiblePassword,
          obscureText: _obscurePassword,
          autofocus: false,
          suffix: GestureDetector(
            onTap: () {
              setState(() {
                _obscurePassword = !_obscurePassword;
              });
            },
            child: Container(
              margin: EdgeInsets.fromLTRB(30.h, 15.v, 16.h, 15.v),
              child: CustomImageView(
                imagePath: _obscurePassword
                    ? ImageConstant.imgEye
                    : ImageConstant.imgEye, // Change to your eye-off icon
                height: 10.v,
                width: 16.h,
              ),
            ),
          ),
          suffixConstraints: BoxConstraints(maxHeight: 40.v),
          contentPadding: EdgeInsets.only(left: 8.h, top: 10.v, bottom: 10.v),
        ),
      ],
    );
  }

  /// Navigates to the forgetPasswordOneScreen when the action is triggered.
  onTapTxtForgetPassword(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.forgetPasswordOneScreen);
  }

  /// Navigates to the homeContainerScreen when the action is triggered.
  onTapLogin(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homeContainerScreen);
  }

  /// Navigates to the signUpScreen when the action is triggered.
  onTapTxtDonthaveaccount(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.signUpScreen);
  }
}
