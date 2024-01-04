import '../profile_two_page/widgets/fileviewer_item_widget.dart';
import 'package:ehem_foundation_project/core/app_export.dart';
import 'package:ehem_foundation_project/widgets/custom_elevated_button.dart';
import 'package:ehem_foundation_project/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class ProfileTwoPage extends StatefulWidget {
  const ProfileTwoPage({Key? key})
      : super(
          key: key,
        );

  @override
  ProfileTwoPageState createState() => ProfileTwoPageState();
}

class ProfileTwoPageState extends State<ProfileTwoPage>
    with AutomaticKeepAliveClientMixin<ProfileTwoPage> {
  TextEditingController nameController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  TextEditingController countryController = TextEditingController();

  TextEditingController nameController1 = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 26.v),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.h),
                  child: Column(
                    children: [
                      _buildUserInfo(context),
                      SizedBox(height: 19.v),
                      _buildEmailInfo(context),
                      SizedBox(height: 19.v),
                      _buildPasswordInfo(context),
                      SizedBox(height: 18.v),
                      _buildDateOfBirthInfo(context),
                      SizedBox(height: 20.v),
                      _buildCountryInfo(context),
                      SizedBox(height: 20.v),
                      _buildAttachmentsInfo(context),
                      SizedBox(height: 24.v),
                      CustomTextFormField(
                        controller: nameController1,
                        hintText: "Card Info",
                        textInputAction: TextInputAction.done,
                      ),
                      SizedBox(height: 24.v),
                      CustomElevatedButton(
                        height: 48.v,
                        text: "Save Changes",
                        buttonStyle: CustomButtonStyles.fillOnErrorTL8,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildUserInfo(BuildContext context) {
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
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildEmailInfo(BuildContext context) {
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
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildPasswordInfo(BuildContext context) {
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
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildDateOfBirthInfo(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Date of brith",
          style: theme.textTheme.titleSmall,
        ),
        SizedBox(height: 9.v),
        Container(
          padding: EdgeInsets.symmetric(
            horizontal: 7.h,
            vertical: 8.v,
          ),
          decoration: AppDecoration.outlineOnPrimary2.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder8,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "23/05/1995",
                style: theme.textTheme.bodyMedium,
              ),
              CustomImageView(
                imagePath: ImageConstant.imgIconamooneditthin,
                height: 16.adaptSize,
                width: 16.adaptSize,
                margin: EdgeInsets.only(
                  top: 2.v,
                  right: 8.h,
                  bottom: 2.v,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildCountryInfo(BuildContext context) {
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
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildAttachmentsInfo(BuildContext context) {
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
                style: CustomTextStyles.labelMediumOnError,
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
              return FileviewerItemWidget();
            },
          ),
        ),
      ],
    );
  }
}
