import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ehem_foundation_project/core/app_export.dart';
import 'package:ehem_foundation_project/widgets/custom_elevated_button.dart';
import 'package:ehem_foundation_project/widgets/custom_text_form_field.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';

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

  DateTime? _selectedDate;

  final FirebaseAuth _auth = FirebaseAuth.instance;

  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  bool _isLoading = false;
  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(), // Set initial date to today
      firstDate: DateTime(1900), // Minimum selectable date
      lastDate: DateTime(2100), // Maximum selectable date
    );
    if (picked != null) {
      setState(() {
        _selectedDate = picked; // Update a variable to store the selected date
      });
    }
  }

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
          'dateOfBirth': _selectedDate?.toIso8601String(),
        });

        Navigator.push(context, MaterialPageRoute(builder: (context) => HomeContainerScreen()));
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
                                    _isLoading ? CircularProgressIndicator():
                                    CustomElevatedButton(
                                        text: "Sign Up",
                                        buttonStyle:
                                            CustomButtonStyles.fillPrimary,
                                        onPressed: () {
                                          _signUp(context);
                                        }),
                                    SizedBox(height: 27.v),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Container(
                                          child: RichText(
                                              text: TextSpan(children: [
                                                TextSpan(
                                                    text: "Do you have account?",
                                                    style: theme
                                                        .textTheme.bodyMedium),
                                                TextSpan(text: " "),
                                              ]),
                                              textAlign: TextAlign.left),
                                        ),
                                        GestureDetector(
                                          onTap: () {
                                            onTapTxtDoyouhaveaccount(context);
                                          },
                                          child: Container(
                                            child: RichText(
                                                text: TextSpan(children: [
                                                  TextSpan(
                                                      text: "Login",
                                                      style: CustomTextStyles
                                                          .titleMediumPrimary)
                                                ]),
                                                textAlign: TextAlign.left),
                                          ),
                                        )
                                      ],
                                    ),

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
          textInputType: TextInputType.visiblePassword,
          obscureText: true)
    ]);
  }

  /// Section Widget
  Widget _buildDateOfBirthSection(BuildContext context) {
    String formattedDate = _selectedDate != null
        ? DateFormat('dd/MM/yyyy').format(_selectedDate!)
        : '';

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Date of birth", style: theme.textTheme.titleLarge),
        SizedBox(height: 13.v),
        InkWell(
          onTap: () => _selectDate(context),
          child: Container(
            decoration: AppDecoration.fillOnErrorContainer
                .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    formattedDate,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
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
