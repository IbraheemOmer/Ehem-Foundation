import 'package:ehem_foundation_project/core/app_export.dart';
import 'package:flutter/material.dart';

class OptionsThreeBottomsheet extends StatelessWidget {
  const OptionsThreeBottomsheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 8.v),
        decoration: AppDecoration.fillOnErrorContainer
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                CustomImageView(
                    imagePath: ImageConstant.imgArrowLeft,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                    onTap: () {
                      onTapImgArrowLeft(context);
                    }),
                Padding(
                    padding: EdgeInsets.only(bottom: 20.v),
                    child: SizedBox(
                        width: 180.h,
                        child: Divider(
                            color: theme.colorScheme.onPrimary.withOpacity(1),
                            indent: 101.h)))
              ]),
              SizedBox(height: 17.v),
              Text("Options", style: theme.textTheme.titleMedium),
              SizedBox(height: 14.v),
              Text("Delete conversation ", style: theme.textTheme.bodyMedium),
              SizedBox(height: 21.v),
              Text("Report user ", style: theme.textTheme.bodyMedium),
              SizedBox(height: 18.v),
              Text("Block user", style: theme.textTheme.bodyMedium),
              SizedBox(height: 41.v)
            ]));
  }

  /// Navigates to the chatPageTwoScreen when the action is triggered.
  onTapImgArrowLeft(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.chatPageTwoScreen);
  }
}
