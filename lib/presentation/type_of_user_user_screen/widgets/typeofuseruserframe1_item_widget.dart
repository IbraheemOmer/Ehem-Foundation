import 'package:ehem_foundation_project/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Typeofuseruserframe1ItemWidget extends StatelessWidget {
  Typeofuseruserframe1ItemWidget({
    Key? key,
    this.onTapFrame,
  }) : super(
          key: key,
        );

  VoidCallback? onTapFrame;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 156.h,
      child: GestureDetector(
        onTap: () {
          onTapFrame!.call();
        },
        child: Container(
          decoration: AppDecoration.outlinePrimary.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder12,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              CustomImageView(
                imagePath: ImageConstant.img93198444141221,
                height: 156.adaptSize,
                width: 156.adaptSize,
              ),
              SizedBox(height: 14.v),
              Text(
                "User",
                style: theme.textTheme.titleLarge,
              ),
              SizedBox(height: 13.v),
            ],
          ),
        ),
      ),
    );
  }
}
