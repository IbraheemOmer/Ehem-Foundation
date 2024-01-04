import 'package:ehem_foundation_project/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Fileviewer4ItemWidget extends StatelessWidget {
  const Fileviewer4ItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 5.h,
        vertical: 3.v,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadiusStyle.roundedBorder8,
        image: DecorationImage(
          image: AssetImage(
            ImageConstant.imgFrame92046,
          ),
          fit: BoxFit.cover,
        ),
      ),
      foregroundDecoration:
          AppDecoration.gradientOnErrorContainerToOnPrimaryContainer.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      width: 64.h,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(height: 44.v),
          Text(
            "File name",
            style: CustomTextStyles.bodySmallGray100,
          ),
        ],
      ),
    );
  }
}
