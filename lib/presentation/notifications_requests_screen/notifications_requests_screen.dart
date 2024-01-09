import 'models/notifications_requests_model.dart';
import 'package:flutter/material.dart';
import 'package:math_courses/core/app_export.dart';
import 'package:math_courses/widgets/custom_floating_button.dart';
import 'provider/notifications_requests_provider.dart';

class NotificationsRequestsScreen extends StatefulWidget {
  const NotificationsRequestsScreen({Key? key}) : super(key: key);

  @override
  NotificationsRequestsScreenState createState() =>
      NotificationsRequestsScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => NotificationsRequestsProvider(),
        child: NotificationsRequestsScreen());
  }
}

class NotificationsRequestsScreenState
    extends State<NotificationsRequestsScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: double.maxFinite,
                child: SingleChildScrollView(
                    child: Column(children: [
                  Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: 21.h, vertical: 22.v),
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(ImageConstant.imgGroup164),
                              fit: BoxFit.cover)),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Align(
                                alignment: Alignment.centerRight,
                                child: Container(
                                    height: 30.v,
                                    width: 35.h,
                                    margin: EdgeInsets.only(right: 11.h),
                                    child: Stack(
                                        alignment: Alignment.center,
                                        children: [
                                          Align(
                                              alignment: Alignment.center,
                                              child: Container(
                                                  height: 30.v,
                                                  width: 35.h,
                                                  decoration: BoxDecoration(
                                                      color: appTheme
                                                          .blueGray10001
                                                          .withOpacity(0.5),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              17.h)))),
                                          CustomImageView(
                                              imagePath: ImageConstant
                                                  .imgCloseFill0Wgh,
                                              height: 25.adaptSize,
                                              width: 25.adaptSize,
                                              alignment: Alignment.center)
                                        ]))),
                            SizedBox(height: 4.v),
                            Padding(
                                padding: EdgeInsets.only(left: 31.h),
                                child: Text("lbl_requests".tr,
                                    style: TextStyle(
                                        color: theme.colorScheme.primary
                                            .withOpacity(1),
                                        fontSize: 32.fSize,
                                        fontFamily: 'Nunito Sans',
                                        fontWeight: FontWeight.w700))),
                            SizedBox(height: 37.v),
                            _buildRespondingToThe(context),
                            SizedBox(height: 37.v)
                          ])),
                  SizedBox(height: 165.v),
                  CustomImageView(
                      imagePath: ImageConstant.imgRectangle1117,
                      height: 99.v,
                      width: 418.h)
                ]))),
            floatingActionButton: _buildFloatingActionButton(context)));
  }

  /// Section Widget
  Widget _buildRespondingToThe(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 9.h),
        child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
          GestureDetector(
              onTap: () {
                onTapTxtRespondingToThe(context);
              },
              child: SizedBox(
                  width: 242.h,
                  child: Text("msg_responding_to_the".tr,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          color: appTheme.blueGray90001,
                          fontSize: 18.fSize,
                          fontFamily: 'Nunito Sans',
                          fontWeight: FontWeight.w600)))),
          Spacer(),
          Padding(
              padding: EdgeInsets.only(bottom: 27.v),
              child: Text("lbl_22_10_2023".tr,
                  style: TextStyle(
                      color: theme.colorScheme.primary.withOpacity(0.6),
                      fontSize: 16.fSize,
                      fontFamily: 'Nunito Sans',
                      fontWeight: FontWeight.w600))),
          CustomImageView(
              imagePath: ImageConstant.imgArrowRightPrimary,
              height: 18.v,
              width: 19.h,
              margin: EdgeInsets.only(top: 3.v, bottom: 29.v))
        ]));
  }

  /// Section Widget
  Widget _buildFloatingActionButton(BuildContext context) {
    return CustomFloatingButton(
        height: 50,
        width: 50,
        backgroundColor: appTheme.red90004,
        child: CustomImageView(
            imagePath: ImageConstant.imgEdit31, height: 25.0.v, width: 25.0.h));
  }

  /// Navigates to the headquarterChatScreen when the action is triggered.
  onTapTxtRespondingToThe(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.headquarterChatScreen,
    );
  }
}
