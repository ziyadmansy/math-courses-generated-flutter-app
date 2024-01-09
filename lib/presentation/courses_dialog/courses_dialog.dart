import 'models/courses_model.dart';
import 'package:flutter/material.dart';
import 'package:math_courses/core/app_export.dart';
import 'provider/courses_provider.dart';

// ignore_for_file: must_be_immutable
class CoursesDialog extends StatefulWidget {
  const CoursesDialog({Key? key})
      : super(
          key: key,
        );

  @override
  CoursesDialogState createState() => CoursesDialogState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CoursesProvider(),
      child: CoursesDialog(),
    );
  }
}

class CoursesDialogState extends State<CoursesDialog> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 379.h,
      padding: EdgeInsets.symmetric(
        horizontal: 38.h,
        vertical: 10.v,
      ),
      decoration: AppDecoration.fillGray50.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder50,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgCloseFill0WghPrimary,
            height: 24.adaptSize,
            width: 24.adaptSize,
            alignment: Alignment.centerRight,
          ),
          SizedBox(height: 21.v),
          Container(
            width: 283.h,
            margin: EdgeInsets.only(
              left: 9.h,
              right: 11.h,
            ),
            child: Text(
              "msg_you_are_now_subscribed".tr,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: appTheme.blueGray90002,
                fontSize: 20.fSize,
                fontFamily: 'Nunito Sans',
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          SizedBox(height: 32.v),
        ],
      ),
    );
  }
}
