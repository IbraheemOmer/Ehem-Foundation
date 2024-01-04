import 'package:ehem_foundation_project/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Userprofile2ItemWidget extends StatelessWidget {
  Userprofile2ItemWidget({
    Key? key,
    this.onTapUserProfile,
  }) : super(
          key: key,
        );

  VoidCallback? onTapUserProfile;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapUserProfile!.call();
      },
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 8.h,
          vertical: 4.v,
        ),
        decoration: AppDecoration.fillOnErrorContainer.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder12,
        ),
        child: Row(
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgFrame92056,
              height: 88.v,
              width: 100.h,
              radius: BorderRadius.circular(
                6.h,
              ),
              margin: EdgeInsets.symmetric(vertical: 3.v),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 16.h,
                top: 7.v,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Lawyer Name",
                    style: theme.textTheme.titleSmall,
                  ),
                  SizedBox(height: 8.v),
                  Opacity(
                    opacity: 0.5,
                    child: SizedBox(
                      width: 178.h,
                      child: Text(
                        "sit amet dui auctor dictum eget a elit. Pellentesque varius diam risus, ut condimentum",
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                        style: CustomTextStyles.bodySmallOnPrimary.copyWith(
                          height: 1.67,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
