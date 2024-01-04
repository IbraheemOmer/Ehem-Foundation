import 'package:ehem_foundation_project/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class OptionsOneBottomsheet extends StatelessWidget {
  const OptionsOneBottomsheet({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 8.v,
      ),
      decoration: AppDecoration.fillOnErrorContainer.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.center,
            child: SizedBox(
              width: 79.h,
              child: Divider(
                color: theme.colorScheme.onPrimary.withOpacity(1),
              ),
            ),
          ),
          SizedBox(height: 37.v),
          Text(
            "Options",
            style: theme.textTheme.titleMedium,
          ),
          SizedBox(height: 14.v),
          Text(
            "Hide this comment",
            style: theme.textTheme.bodyMedium,
          ),
          SizedBox(height: 21.v),
          Text(
            "Flag this comment",
            style: theme.textTheme.bodyMedium,
          ),
          SizedBox(height: 18.v),
          Text(
            "Block user",
            style: theme.textTheme.bodyMedium,
          ),
          SizedBox(height: 41.v),
        ],
      ),
    );
  }
}
