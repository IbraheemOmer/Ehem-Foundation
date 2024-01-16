import 'package:ehem_foundation_project/core/app_export.dart';
import 'package:ehem_foundation_project/widgets/custom_elevated_button.dart';
import 'package:ehem_foundation_project/widgets/custom_text_form_field.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../login_one_screen/login_one_screen.dart';

class ForgetPasswordOneScreen extends StatefulWidget {
  ForgetPasswordOneScreen({Key? key}) : super(key: key);

  @override
  State<ForgetPasswordOneScreen> createState() => _ForgetPasswordOneScreenState();
}

class _ForgetPasswordOneScreenState extends State<ForgetPasswordOneScreen> {
  TextEditingController emailController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<void> _sendResetLink(BuildContext context) async {
    try {
      await _auth.sendPasswordResetEmail(email: emailController.text.trim());

      // Show a SnackBar with a success message
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            'Password reset link has been sent to ${emailController.text.trim()}',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.green, // You can customize the color
        ),
      );
      Navigator.push(context, MaterialPageRoute(builder: (context) => LoginOneScreen()));
    } catch (e) {
      // Handle errors and show a SnackBar with an error message
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            'Failed to send reset link. Please check your email and try again.',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.red, // You can customize the color
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
          children: [
            Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(horizontal: 14.h, vertical: 40.v),
              child: Column(
                children: [
                  SvgPicture.asset(
                    ImageConstant.imgFrameOnprimary,
                    height: 216.v,
                    width: 212.h,
                  ),
                  SizedBox(height: 33.v),
                  Text("Forget password ", style: theme.textTheme.titleLarge),
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
                        style: CustomTextStyles.bodyLargeOnPrimary.copyWith(
                          height: 1.30,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 19.v),
                  _buildEmailSection(context),
                  SizedBox(height: 80.v),
                  CustomElevatedButton(
                    text: "Send Link",
                    buttonStyle: CustomButtonStyles.fillPrimary,
                    onPressed: () {
                      _sendResetLink(context);
                    },
                  ),
                  SizedBox(height: 5.v),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildEmailSection(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 2.h),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text("Email", style: theme.textTheme.titleMedium),
        SizedBox(height: 10.v),
        CustomTextFormField(
          controller: emailController,
          textInputAction: TextInputAction.done,
          textInputType: TextInputType.emailAddress,
        ),
      ]),
    );
  }
}
