import 'models/notifications_model.dart';
import 'package:flutter/material.dart';
import 'package:math_courses/core/app_export.dart';
import 'provider/notifications_provider.dart';

class NotificationsPage extends StatefulWidget {
  const NotificationsPage({Key? key}) : super(key: key);

  @override
  NotificationsPageState createState() => NotificationsPageState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => NotificationsProvider(),
        child: NotificationsPage());
  }
}

class NotificationsPageState extends State<NotificationsPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                decoration: AppDecoration.fillOnError,
                child: SingleChildScrollView(
                    child: Column(children: [
                  SizedBox(
                      height: SizeUtils.height,
                      width: double.maxFinite,
                      child:
                          Stack(alignment: Alignment.bottomCenter, children: [
                        Align(
                            alignment: Alignment.center,
                            child: Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 4.h, vertical: 58.v),
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                            ImageConstant.imgGroup164),
                                        fit: BoxFit.cover)),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      SizedBox(height: 197.v),
                                      SizedBox(
                                          height: 116.v,
                                          child: VerticalDivider(
                                              width: 5.h, thickness: 5.v)),
                                      SizedBox(height: 463.v),
                                      CustomImageView(
                                          imagePath: ImageConstant
                                              .imgArrowRightGreen900,
                                          height: 15.v,
                                          width: 16.h,
                                          margin: EdgeInsets.only(right: 57.h)),
                                      SizedBox(height: 6.v),
                                      Padding(
                                          padding: EdgeInsets.only(right: 69.h),
                                          child: Text("lbl_8_12_sessions".tr,
                                              style: TextStyle(
                                                  color: appTheme.blueGray90001
                                                      .withOpacity(0.6),
                                                  fontSize: 12.fSize,
                                                  fontFamily: 'Nunito Sans',
                                                  fontWeight: FontWeight.w400)))
                                    ]))),
                        Align(
                            alignment: Alignment.bottomCenter,
                            child: Container(
                                margin: EdgeInsets.only(bottom: 102.v),
                                padding: EdgeInsets.symmetric(
                                    horizontal: 25.h, vertical: 128.v),
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                            ImageConstant.imgGroup317),
                                        fit: BoxFit.cover)),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      SizedBox(height: 227.v),
                                      _buildRequestsSection(context)
                                    ]))),
                        Align(
                            alignment: Alignment.topCenter,
                            child: Container(
                                margin: EdgeInsets.only(
                                    left: 25.h, top: 35.v, right: 25.h),
                                padding: EdgeInsets.all(21.h),
                                decoration: AppDecoration.outlinePrimary1
                                    .copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder50),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SizedBox(height: 4.v),
                                      Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 9.h),
                                          child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text("lbl_notifications".tr,
                                                    style: TextStyle(
                                                        color: theme
                                                            .colorScheme.primary
                                                            .withOpacity(1),
                                                        fontSize: 24.fSize,
                                                        fontFamily:
                                                            'Nunito Sans',
                                                        fontWeight:
                                                            FontWeight.w700)),
                                                GestureDetector(
                                                    onTap: () {
                                                      onTapTxtViewAll1(context);
                                                    },
                                                    child: Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                top: 4.v,
                                                                bottom: 3.v),
                                                        child: Text(
                                                            "lbl_view_all".tr,
                                                            style: TextStyle(
                                                                color: theme
                                                                    .colorScheme
                                                                    .primary
                                                                    .withOpacity(
                                                                        0.6),
                                                                fontSize:
                                                                    18.fSize,
                                                                fontFamily:
                                                                    'Nunito Sans',
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w700))))
                                              ])),
                                      SizedBox(height: 16.v),
                                      _buildYouHavePassedSection(context,
                                          quizResultText:
                                              "msg_you_have_passed".tr),
                                      SizedBox(height: 22.v),
                                      Padding(
                                          padding: EdgeInsets.only(
                                              left: 5.h, right: 3.h),
                                          child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                CustomImageView(
                                                    imagePath:
                                                        ImageConstant.imgSignal,
                                                    height: 26.v,
                                                    width: 27.h,
                                                    margin: EdgeInsets.only(
                                                        top: 3.v,
                                                        bottom: 21.v)),
                                                Expanded(
                                                    child: Container(
                                                        width: 277.h,
                                                        margin:
                                                            EdgeInsets
                                                                .only(
                                                                    left: 22.h),
                                                        child: Text(
                                                            "msg_you_have_passed"
                                                                .tr,
                                                            maxLines: 2,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            style: TextStyle(
                                                                color: appTheme
                                                                    .blueGray90001,
                                                                fontSize:
                                                                    18.fSize,
                                                                fontFamily:
                                                                    'Nunito Sans',
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600))))
                                              ])),
                                      SizedBox(height: 25.v),
                                      _buildYouHavePassedSection(context,
                                          quizResultText:
                                              "msg_you_have_passed".tr),
                                      SizedBox(height: 24.v),
                                      Align(
                                          alignment: Alignment.centerLeft,
                                          child: Padding(
                                              padding:
                                                  EdgeInsets.only(right: 59.h),
                                              child: Row(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgEllipse15,
                                                        height: 41.v,
                                                        width: 39.h,
                                                        radius: BorderRadius
                                                            .circular(20.h),
                                                        margin: EdgeInsets.only(
                                                            top: 1.v,
                                                            bottom: 8.v)),
                                                    Expanded(
                                                        child: Container(
                                                            width: 221.h,
                                                            margin: EdgeInsets
                                                                .only(
                                                                    left: 17.h),
                                                            child: Text(
                                                                "msg_live_session_in"
                                                                    .tr,
                                                                maxLines: 2,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                style: TextStyle(
                                                                    color: appTheme
                                                                        .blueGray90001,
                                                                    fontSize: 18
                                                                        .fSize,
                                                                    fontFamily:
                                                                        'Nunito Sans',
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w600))))
                                                  ]))),
                                      SizedBox(height: 23.v),
                                      Padding(
                                          padding: EdgeInsets.only(
                                              left: 5.h, right: 3.h),
                                          child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                CustomImageView(
                                                    imagePath:
                                                        ImageConstant.imgStar,
                                                    height: 30.adaptSize,
                                                    width: 30.adaptSize,
                                                    margin: EdgeInsets.only(
                                                        top: 5.v,
                                                        bottom: 15.v)),
                                                Expanded(
                                                    child: Container(
                                                        width: 277.h,
                                                        margin:
                                                            EdgeInsets
                                                                .only(
                                                                    left: 20.h),
                                                        child: Text(
                                                            "msg_you_have_passed"
                                                                .tr,
                                                            maxLines: 2,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            style: TextStyle(
                                                                color: appTheme
                                                                    .blueGray90001,
                                                                fontSize:
                                                                    18.fSize,
                                                                fontFamily:
                                                                    'Nunito Sans',
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600))))
                                              ]))
                                    ])))
                      ])),
                  SizedBox(height: 165.v),
                  CustomImageView(
                      imagePath: ImageConstant.imgRectangle1115,
                      height: 99.v,
                      width: 418.h)
                ])))));
  }

  /// Section Widget
  Widget _buildRequestsSection(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(right: 1.h),
        padding: EdgeInsets.symmetric(horizontal: 30.h, vertical: 26.v),
        decoration: AppDecoration.outlinePrimary1
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder50),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                  padding: EdgeInsets.only(right: 3.h),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("lbl_requests".tr,
                            style: TextStyle(
                                color: theme.colorScheme.primary.withOpacity(1),
                                fontSize: 24.fSize,
                                fontFamily: 'Nunito Sans',
                                fontWeight: FontWeight.w700)),
                        GestureDetector(
                            onTap: () {
                              onTapTxtViewAll(context);
                            },
                            child: Padding(
                                padding: EdgeInsets.only(top: 2.v, bottom: 5.v),
                                child: Text("lbl_view_all".tr,
                                    style: TextStyle(
                                        color: theme.colorScheme.primary
                                            .withOpacity(0.6),
                                        fontSize: 18.fSize,
                                        fontFamily: 'Nunito Sans',
                                        fontWeight: FontWeight.w700))))
                      ])),
              SizedBox(height: 22.v),
              Container(
                  width: 272.h,
                  margin: EdgeInsets.only(left: 16.h, right: 30.h),
                  child: Text("msg_responding_to_the".tr,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          color: appTheme.blueGray90001,
                          fontSize: 18.fSize,
                          fontFamily: 'Nunito Sans',
                          fontWeight: FontWeight.w600))),
              SizedBox(height: 27.v)
            ]));
  }

  /// Common widget
  Widget _buildYouHavePassedSection(
    BuildContext context, {
    required String quizResultText,
  }) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
              imagePath: ImageConstant.imgEllipse15,
              height: 41.v,
              width: 39.h,
              radius: BorderRadius.circular(20.h),
              margin: EdgeInsets.only(top: 2.v, bottom: 7.v)),
          Expanded(
              child: Container(
                  width: 277.h,
                  margin: EdgeInsets.only(left: 16.h),
                  child: Text(quizResultText,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          color: appTheme.blueGray90001,
                          fontSize: 18.fSize,
                          fontFamily: 'Nunito Sans',
                          fontWeight: FontWeight.w600))))
        ]);
  }

  /// Navigates to the notificationsRequestsScreen when the action is triggered.
  onTapTxtViewAll(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.notificationsRequestsScreen,
    );
  }

  onTapTxtViewAll1(BuildContext context) {
    // TODO: implement Actions
  }
}
