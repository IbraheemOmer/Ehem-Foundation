import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:image_picker/image_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';


import '../profile_page/widgets/filecomponent_item_widget.dart';
import 'package:ehem_foundation_project/core/app_export.dart';
import 'package:ehem_foundation_project/widgets/app_bar/appbar_subtitle.dart';
import 'package:ehem_foundation_project/widgets/app_bar/custom_app_bar.dart';
import 'package:ehem_foundation_project/widgets/custom_elevated_button.dart';
import 'package:ehem_foundation_project/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class ProfilePage extends StatefulWidget {
  ProfilePage({Key? key})
      : super(
          key: key,
        );

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  TextEditingController nameController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  TextEditingController dateController = TextEditingController();

  TextEditingController countryController = TextEditingController();

  TextEditingController iconamooneditthinController = TextEditingController();

  final FirebaseAuth _auth = FirebaseAuth.instance;

  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  final CollectionReference userCollection = FirebaseFirestore.instance.collection('users');

  final ImagePicker _imagePicker = ImagePicker();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  File? _image;

  String _errorText = '';

  bool _isLoading = false;

  DatabaseReference _databaseReference = FirebaseDatabase.instance.ref().child("Users");

  @override
  void initState() {
    super.initState();
    _fetchUserData();
  }

  Future<void> _fetchUserData() async {
    try {
      User? user = _auth.currentUser;
      if (user != null) {
        DocumentSnapshot userSnapshot =
        await userCollection.doc(user.uid).get();

        if (userSnapshot.exists) {
          Map<String, dynamic> userData = userSnapshot.data() as Map<String, dynamic>;

          setState(() {
            nameController.text = userData['name'] ?? '';
            emailController.text = userData['email'] ?? '';
            passwordController.text = userData['password'] ?? '';
            dateController.text = userData['date'] ?? '';
            countryController.text = userData['country'] ?? '';
            iconamooneditthinController.text = userData['divorcedValue'] ?? '';
            // Set other fields accordingly
          });
        }
      }
    } catch (e) {
      print('Error fetching user data: $e');
    }
  }

  Future<void> _updateProfile() async {
    setState(() {
      _errorText = '';
    });

    if (passwordController.text.trim().length < 6) {
      setState(() {
        _errorText = 'Password must be at least 6 characters long.';
      });
      return;
    }

    try {
      User? user = _auth.currentUser;
      if (user != null) {
        await user.updateDisplayName(nameController.text);
        // await user.updateEmail(emailController.text);
        await user.updatePassword(passwordController.text);

        // Save changes to Firestore
        await userCollection.doc(user.uid).set({
          'name': nameController.text,
          // 'email': emailController.text,
          'password': passwordController.text,
          'date': dateController.text,
          'country': countryController.text,
          'divorcedValue': iconamooneditthinController.text,
          // Set other fields accordingly
        }, SetOptions(merge: true));
      }
    } catch (e) {
      setState(() {
        _errorText = 'Error updating profile: $e';
      });
      return;
    }
  }


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(
                left: 16.h,
                right: 16.h,
                bottom: 5.v,
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: 176.adaptSize,
                    width: 176.adaptSize,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            height: 170.adaptSize,
                            width: 170.adaptSize,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(
                                85.h,
                              ),
                              border: Border.all(
                                color: theme.colorScheme.primary,
                                width: 1.h,
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: SizedBox(
                            height: 176.adaptSize,
                            width: 176.adaptSize,
                            child: Stack(
                              alignment: Alignment.bottomRight,
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.imgEllipse3,
                                  height: 176.adaptSize,
                                  width: 176.adaptSize,
                                  radius: BorderRadius.circular(
                                    88.h,
                                  ),
                                  alignment: Alignment.center,
                                ),
                                CustomImageView(
                                  imagePath: ImageConstant.imgSolarCameraMi,
                                  height: 32.adaptSize,
                                  width: 32.adaptSize,
                                  alignment: Alignment.bottomRight,
                                  margin: EdgeInsets.only(
                                    right: 11.h,
                                    bottom: 2.v,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 26.v),
                  _buildUserProfile(context),
                  SizedBox(height: 18.v),
                  _buildUserProfile1(context),
                  SizedBox(height: 18.v),
                  _buildUserProfile2(context),
                  SizedBox(height: 18.v),
                  _buildUserProfile3(context),
                  SizedBox(height: 19.v),
                  _buildUserProfile4(context),
                  SizedBox(height: 18.v),
                  _buildUserProfile5(context),
                  SizedBox(height: 19.v),
                  _buildUserProfile6(context),
                  SizedBox(height: 24.v),
                  CustomElevatedButton(
                    onPressed: () {
                      _updateProfile();
                    },
                    height: 48.v,
                    text: "Save Changes",
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      title: AppbarSubtitle(
        text: "Profile",
        margin: EdgeInsets.only(left: 16.h),
      ),
    );
  }

  /// Section Widget
  Widget _buildUserProfile(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Name",
          style: theme.textTheme.titleSmall,
        ),
        SizedBox(height: 9.v),
        CustomTextFormField(
          controller: nameController,
          hintText: "User Name",
          suffix: Container(
            margin: EdgeInsets.fromLTRB(30.h, 12.v, 16.h, 12.v),
            child: CustomImageView(
              imagePath: ImageConstant.imgIconamooneditthin,
              height: 16.adaptSize,
              width: 16.adaptSize,
            ),
          ),
          suffixConstraints: BoxConstraints(
            maxHeight: 40.v,
          ),
          contentPadding: EdgeInsets.only(
            left: 8.h,
            top: 10.v,
            bottom: 10.v,
          ),
          autofocus: false,
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildUserProfile1(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Email",
          style: theme.textTheme.titleSmall,
        ),
        SizedBox(height: 9.v),
        CustomTextFormField(
          controller: emailController,
          hintText: "Example@gmail.com",
          textInputType: TextInputType.emailAddress,
          suffix: Container(
            margin: EdgeInsets.fromLTRB(30.h, 12.v, 16.h, 12.v),
            child: CustomImageView(
              imagePath: ImageConstant.imgIconamooneditthin,
              height: 16.adaptSize,
              width: 16.adaptSize,
            ),
          ),
          suffixConstraints: BoxConstraints(
            maxHeight: 40.v,
          ),
          contentPadding: EdgeInsets.only(
            left: 8.h,
            top: 10.v,
            bottom: 10.v,
          ),
          autofocus: false,
        ),
      ],
    );
  }



  /// Section Widget
  Widget _buildUserProfile2(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Password",
          style: theme.textTheme.titleSmall,
        ),
        SizedBox(height: 9.v),
        CustomTextFormField(
          controller: passwordController,
          hintText: "************",
          hintStyle: theme.textTheme.titleSmall!,
          textInputType: TextInputType.visiblePassword,
          suffix: Container(
            margin: EdgeInsets.fromLTRB(30.h, 12.v, 16.h, 12.v),
            child: CustomImageView(
              imagePath: ImageConstant.imgIconamooneditthin,
              height: 16.adaptSize,
              width: 16.adaptSize,
            ),
          ),
          suffixConstraints: BoxConstraints(
            maxHeight: 40.v,
          ),
          obscureText: true,
          contentPadding: EdgeInsets.only(
            left: 8.h,
            top: 10.v,
            bottom: 10.v,
          ),
          autofocus: false,
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildUserProfile3(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Date of brith",
          style: theme.textTheme.titleSmall,
        ),
        SizedBox(height: 9.v),
        CustomTextFormField(
          controller: dateController,
          hintText: "23/05/1995",
          suffix: Container(
            margin: EdgeInsets.fromLTRB(30.h, 12.v, 16.h, 12.v),
            child: CustomImageView(
              imagePath: ImageConstant.imgIconamooneditthin,
              height: 16.adaptSize,
              width: 16.adaptSize,
            ),
          ),
          suffixConstraints: BoxConstraints(
            maxHeight: 40.v,
          ),
          contentPadding: EdgeInsets.only(
            left: 8.h,
            top: 10.v,
            bottom: 10.v,
          ),
          autofocus: false,
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildUserProfile4(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Country ",
          style: theme.textTheme.titleSmall,
        ),
        SizedBox(height: 8.v),
        CustomTextFormField(
          controller: countryController,
          hintText: "Pakistan",
          suffix: Container(
            margin: EdgeInsets.fromLTRB(30.h, 12.v, 16.h, 12.v),
            child: CustomImageView(
              imagePath: ImageConstant.imgIconamooneditthin,
              height: 16.adaptSize,
              width: 16.adaptSize,
            ),
          ),
          suffixConstraints: BoxConstraints(
            maxHeight: 40.v,
          ),
          contentPadding: EdgeInsets.only(
            left: 8.h,
            top: 10.v,
            bottom: 10.v,
          ),
          autofocus: false,
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildUserProfile5(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Marital Status",
          style: theme.textTheme.titleSmall,
        ),
        SizedBox(height: 9.v),
        CustomTextFormField(
          controller: iconamooneditthinController,
          hintText: "Divorced",
          textInputAction: TextInputAction.done,
          suffix: Container(
            margin: EdgeInsets.fromLTRB(30.h, 12.v, 16.h, 12.v),
            child: CustomImageView(
              imagePath: ImageConstant.imgIconamooneditthin,
              height: 16.adaptSize,
              width: 16.adaptSize,
            ),
          ),
          suffixConstraints: BoxConstraints(
            maxHeight: 40.v,
          ),
          contentPadding: EdgeInsets.only(
            left: 8.h,
            top: 10.v,
            bottom: 10.v,
          ),
          autofocus: false,
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildUserProfile6(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "My Attachments",
              style: theme.textTheme.titleSmall,
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 4.v),
              child: Text(
                "Add Attachment",
                style: theme.textTheme.labelMedium,
              ),
            ),
          ],
        ),
        SizedBox(height: 8.v),
        SizedBox(
          height: 64.v,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            separatorBuilder: (
              context,
              index,
            ) {
              return SizedBox(
                width: 8.h,
              );
            },
            itemCount: 5,
            itemBuilder: (context, index) {
              return FilecomponentItemWidget();
            },
          ),
        ),
      ],
    );
  }
}
