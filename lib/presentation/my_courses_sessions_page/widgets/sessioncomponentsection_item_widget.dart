import '../models/sessioncomponentsection_item_model.dart';
import 'package:flutter/material.dart';
import 'package:math_courses/core/app_export.dart';

// ignore: must_be_immutable
class SessioncomponentsectionItemWidget extends StatelessWidget {
  SessioncomponentsectionItemWidget(
    this.sessioncomponentsectionItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  SessioncomponentsectionItemModel sessioncomponentsectionItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 33.h,
        vertical: 12.v,
      ),
      decoration: AppDecoration.outlinePrimary1.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder50,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(height: 20.v),
          Padding(
            padding: EdgeInsets.only(right: 1.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  sessioncomponentsectionItemModelObj.sessionText!,
                  style: TextStyle(
                    color: appTheme.blueGray90001,
                    fontSize: 26.fSize,
                    fontFamily: 'Nunito Sans',
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Container(
                  height: 28.v,
                  width: 65.h,
                  margin: EdgeInsets.only(bottom: 6.v),
                  padding: EdgeInsets.symmetric(
                    horizontal: 20.h,
                    vertical: 2.v,
                  ),
                  decoration: AppDecoration.outlinePrimary2.copyWith(
                    borderRadius: BorderRadiusStyle.circleBorder14,
                  ),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgLockFill0Wght,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                    alignment: Alignment.center,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 7.v),
          Text(
            sessioncomponentsectionItemModelObj.descriptionText!,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              color: appTheme.blueGray90001.withOpacity(0.6),
              fontSize: 16.fSize,
              fontFamily: 'Nunito Sans',
              fontWeight: FontWeight.w300,
            ),
          ),
          SizedBox(height: 2.v),
          Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: EdgeInsets.only(right: 20.h),
              child: Text(
                sessioncomponentsectionItemModelObj.progressText!,
                style: TextStyle(
                  color: appTheme.blueGray90001.withOpacity(0.6),
                  fontSize: 12.fSize,
                  fontFamily: 'Nunito Sans',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
