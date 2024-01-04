import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ehem_foundation_project/core/app_export.dart';
import 'package:ehem_foundation_project/widgets/custom_elevated_button.dart';
import 'package:ehem_foundation_project/widgets/custom_text_form_field.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../home_container_screen/home_container_screen.dart';

class SignUpScreen extends StatefulWidget {
  SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  TextEditingController countryController = TextEditingController();

  TextEditingController divorcedvalueController = TextEditingController();

  final FirebaseAuth _auth = FirebaseAuth.instance;

  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  bool _isLoading = false;

  Future <void> _signUp(BuildContext context) async {
    try {
      setState(() {
        _isLoading = true;
      });
      final UserCredential userCredential = await _auth.createUserWithEmailAndPassword(
        email: emailController.text.trim(),
        password: passwordController.text.trim(),
      );
      final User? user = userCredential.user;
      print(user);
      if (user != null) {
        await _firestore.collection('users').doc(user.uid).set({
          'email': emailController.text,
          'password': passwordController.text,
          'country': countryController.text,
          'divorcedValue': divorcedvalueController.text,
        });
      }
    } catch (e) {
      print(e);
      setState(() {
        _isLoading = false;
      });
    }
  }

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Form(
                key: _formKey,
                child: SizedBox(
                    width: double.maxFinite,
                    child: Column(children: [
                      SizedBox(height: 38.v),
                      Expanded(
                          child: SingleChildScrollView(
                              child: Padding(
                                  padding: EdgeInsets.only(
                                      left: 16.h, right: 16.h, bottom: 32.v),
                                  child: Column(children: [
                                    Text("Let’s Get Started",
                                        style: theme.textTheme.titleLarge),
                                    SizedBox(height: 13.v),
                                    SvgPicture.asset(
                                        ImageConstant.imgWebsiteSetupRafiki,
                                        height: 85.v,
                                        width: 128.h),
                                    SizedBox(height: 35.v),
                                    _buildLetsGetStartedSection(context),
                                    SizedBox(height: 14.v),
                                    _buildPasswordSection(context),
                                    SizedBox(height: 14.v),
                                    _buildDateOfBirthSection(context),
                                    SizedBox(height: 16.v),
                                    _buildCountrySection(context),
                                    SizedBox(height: 14.v),
                                    _buildMaritalStatusSection(context),
                                    SizedBox(height: 32.v),
                                    CustomElevatedButton(
                                        text: "Sign Up",
                                        buttonStyle:
                                            CustomButtonStyles.fillPrimary,
                                        onPressed: () {
                                          _signUp(context);
                                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomeContainerScreen()));
                                        }),
                                    SizedBox(height: 27.v),
                                    Container(
                                      child: RichText(
                                          text: TextSpan(children: [
                                            TextSpan(
                                                text: "Do you have account?",
                                                style: theme
                                                    .textTheme.bodyMedium),
                                            TextSpan(text: " "),
                                            TextSpan(
                                                text: "Login",
                                                style: CustomTextStyles
                                                    .titleMediumPrimary)
                                          ]),
                                          textAlign: TextAlign.left),
                                    )
                                  ]))))
                    ])))));
  }

  /// Section Widget
  Widget _buildLetsGetStartedSection(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("Email", style: theme.textTheme.titleMedium),
      SizedBox(height: 10.v),
      CustomTextFormField(
          controller: emailController,
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
      Container(
          padding: EdgeInsets.symmetric(horizontal: 8.h, vertical: 9.v),
          decoration: AppDecoration.fillOnErrorContainer
              .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
          child: Row(children: [
            Text("23/05/1995", style: theme.textTheme.bodyMedium)
          ]))
    ]);
  }

  /// Section Widget
  Widget _buildCountrySection(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("Country", style: theme.textTheme.titleLarge),
      SizedBox(height: 11.v),
      CustomTextFormField(controller: countryController)
    ]);
  }

  /// Section Widget
  Widget _buildMaritalStatusSection(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("Marital status", style: theme.textTheme.titleLarge),
      SizedBox(height: 13.v),
      CustomTextFormField(
          controller: divorcedvalueController,
          textInputAction: TextInputAction.done)
    ]);
  }

  /// Navigates to the homeContainerScreen when the action is triggered.
  onTapSignUp(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homeContainerScreen);
  }

  /// Navigates to the loginOneScreen when the action is triggered.
  onTapTxtDoyouhaveaccount(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.loginOneScreen);
  }
}
