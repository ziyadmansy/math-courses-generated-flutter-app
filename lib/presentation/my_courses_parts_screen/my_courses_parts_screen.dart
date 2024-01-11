import 'models/my_courses_parts_model.dart';
import 'package:flutter/material.dart';
import 'package:math_courses/core/app_export.dart';
import 'package:math_courses/widgets/custom_bottom_bar.dart';
import 'package:math_courses/widgets/custom_elevated_button.dart';
import 'provider/my_courses_parts_provider.dart';

class MyCoursesPartsScreen extends StatefulWidget {
  const MyCoursesPartsScreen({Key? key}) : super(key: key);

  @override
  MyCoursesPartsScreenState createState() => MyCoursesPartsScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => MyCoursesPartsProvider(),
        child: MyCoursesPartsScreen());
  }
}

// ignore_for_file: must_be_immutable
class MyCoursesPartsScreenState extends State<MyCoursesPartsScreen> {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
          child: Column(children: [
        Stack(alignment: Alignment.topLeft, children: [
          Align(
              alignment: Alignment.center,
              child: Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 24.h, vertical: 33.v),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(ImageConstant.imgGroup164),
                          fit: BoxFit.cover)),
                  child: Column(mainAxisSize: MainAxisSize.min, children: [
                    _buildWelcomeSection(context),
                    SizedBox(height: 33.v),
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                            padding: EdgeInsets.only(left: 29.h),
                            child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                      height: 30.v,
                                      width: 35.h,
                                      margin: EdgeInsets.only(
                                          top: 5.v, bottom: 8.v),
                                      child: Stack(
                                          alignment: Alignment.centerRight,
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
                                                            BorderRadius
                                                                .circular(
                                                                    17.h)))),
                                            CustomImageView(
                                                imagePath:
                                                    ImageConstant.imgArrowLeft,
                                                height: 18.v,
                                                width: 19.h,
                                                alignment:
                                                    Alignment.centerRight,
                                                margin:
                                                    EdgeInsets.only(right: 7.h),
                                                onTap: () {
                                                  onTapImgArrowLeft(context);
                                                })
                                          ])),
                                  Padding(
                                      padding: EdgeInsets.only(left: 19.h),
                                      child: Text("lbl_parts".tr,
                                          style: TextStyle(
                                              color: appTheme.red900,
                                              fontSize: 32.fSize,
                                              fontFamily: 'Nunito Sans',
                                              fontWeight: FontWeight.w700)))
                                ]))),
                    SizedBox(height: 40.v),
                    _buildVideoSection(context),
                    SizedBox(height: 25.v),
                    _buildMockExamSection(context),
                    SizedBox(height: 28.v),
                    _buildLiveSessionSection(context),
                    SizedBox(height: 28.v),
                    _buildDownloadSection(context)
                  ]))),
          CustomImageView(
              imagePath: ImageConstant.imgComponent7,
              height: 79.v,
              width: 52.h,
              alignment: Alignment.topLeft,
              margin: EdgeInsets.only(top: 91.v)),
          CustomImageView(
              imagePath: ImageConstant.imgUserRed90003,
              height: 93.v,
              width: 86.h,
              alignment: Alignment.topRight,
              margin: EdgeInsets.only(top: 143.v))
        ]),
        SizedBox(height: 165.v),
        CustomImageView(
            imagePath: ImageConstant.imgRectangle1199x418,
            height: 99.v,
            width: 418.h)
      ])),
    ));
  }

  /// Section Widget
  Widget _buildWelcomeSection(BuildContext context) {
    return Align(
        alignment: Alignment.centerLeft,
        child: Padding(
            padding: EdgeInsets.only(left: 10.h, right: 24.h),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                      padding: EdgeInsets.only(top: 5.v, bottom: 1.v),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("lbl_welcome".tr,
                                style: TextStyle(
                                    color:
                                        appTheme.blueGray90001.withOpacity(0.8),
                                    fontSize: 16.fSize,
                                    fontFamily: 'Nunito Sans',
                                    fontWeight: FontWeight.w400)),
                            Padding(
                                padding: EdgeInsets.only(left: 3.h),
                                child: Text("lbl_mohamed_ali".tr,
                                    style: TextStyle(
                                        color: appTheme.blueGray90001,
                                        fontSize: 16.fSize,
                                        fontFamily: 'Nunito Sans',
                                        fontWeight: FontWeight.w700)))
                          ])),
                  CustomImageView(
                      imagePath: ImageConstant.imgEllipse1,
                      height: 50.adaptSize,
                      width: 50.adaptSize,
                      radius: BorderRadius.circular(25.h))
                ])));
  }

  /// Section Widget
  Widget _buildVideoSection(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(right: 3.h),
        padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 14.v),
        decoration: AppDecoration.outlinePrimary1
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder50),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(height: 11.v),
              Padding(
                  padding: EdgeInsets.only(left: 7.h, right: 14.h),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                            padding: EdgeInsets.only(top: 6.v),
                            child: Text("lbl_video".tr,
                                style: TextStyle(
                                    color: appTheme.blueGray90001,
                                    fontSize: 26.fSize,
                                    fontFamily: 'Nunito Sans',
                                    fontWeight: FontWeight.w600))),
                        Container(
                            height: 40.v,
                            width: 44.h,
                            margin: EdgeInsets.only(bottom: 2.v),
                            child:
                                Stack(alignment: Alignment.center, children: [
                              Align(
                                  alignment: Alignment.center,
                                  child: SizedBox(
                                      height: 40.v,
                                      width: 44.h,
                                      child: CircularProgressIndicator(
                                          value: 0.5, strokeWidth: 5.h))),
                              Align(
                                  alignment: Alignment.center,
                                  child: Text("lbl_60".tr,
                                      style: TextStyle(
                                          color: appTheme.blueGray90001
                                              .withOpacity(0.8),
                                          fontSize: 16.fSize,
                                          fontFamily: 'Nunito Sans',
                                          fontWeight: FontWeight.w600)))
                            ]))
                      ])),
              SizedBox(height: 7.v),
              Padding(
                  padding: EdgeInsets.only(left: 7.h),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                            child: Text("msg_here_you_will_be".tr,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                    color:
                                        appTheme.blueGray90001.withOpacity(0.6),
                                    fontSize: 16.fSize,
                                    fontFamily: 'Nunito Sans',
                                    fontWeight: FontWeight.w300))),
                        GestureDetector(
                            onTap: () {
                              onTapContinue(context);
                            },
                            child: Container(
                                width: 107.h,
                                margin: EdgeInsets.only(
                                    left: 37.h, top: 6.v, bottom: 10.v),
                                padding: EdgeInsets.symmetric(
                                    horizontal: 10.h, vertical: 2.v),
                                decoration: AppDecoration.outlinePrimary2
                                    .copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.circleBorder14),
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                          padding: EdgeInsets.only(bottom: 1.v),
                                          child: Text("lbl_continue".tr,
                                              style: TextStyle(
                                                  color: appTheme.yellow800,
                                                  fontSize: 16.fSize,
                                                  fontFamily: 'Nunito Sans',
                                                  fontWeight:
                                                      FontWeight.w700))),
                                      CustomImageView(
                                          imagePath:
                                              ImageConstant.imgArrowRight,
                                          height: 15.v,
                                          width: 16.h,
                                          margin: EdgeInsets.only(
                                              top: 4.v, bottom: 3.v))
                                    ])))
                      ])),
              Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                      padding: EdgeInsets.only(right: 38.h),
                      child: Text("lbl_35_mins".tr,
                          style: TextStyle(
                              color: appTheme.blueGray90001.withOpacity(0.6),
                              fontSize: 12.fSize,
                              fontFamily: 'Nunito Sans',
                              fontWeight: FontWeight.w400))))
            ]));
  }

  /// Section Widget
  Widget _buildMockExamSection(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(right: 3.h),
        padding: EdgeInsets.symmetric(horizontal: 26.h, vertical: 29.v),
        decoration: AppDecoration.outlinePrimary1
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder50),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 3.v),
              Padding(
                  padding: EdgeInsets.only(left: 2.h),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("lbl_mock_exam".tr,
                            style: TextStyle(
                                color: appTheme.blueGray90001,
                                fontSize: 26.fSize,
                                fontFamily: 'Nunito Sans',
                                fontWeight: FontWeight.w600)),
                        CustomElevatedButton(
                            height: 28.v,
                            width: 132.h,
                            text: "lbl_take_the_exam".tr,
                            margin: EdgeInsets.only(top: 5.v, bottom: 2.v),
                            buttonStyle: CustomButtonStyles.outlinePrimaryTL14,
                            onPressed: () {
                              onTapTakeTheExam(context);
                            })
                      ])),
              SizedBox(height: 10.v),
              Container(
                  width: 188.h,
                  margin: EdgeInsets.only(left: 7.h),
                  child: Text("msg_this_test_is_on".tr,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          color: appTheme.blueGray90001.withOpacity(0.6),
                          fontSize: 16.fSize,
                          fontFamily: 'Nunito Sans',
                          fontWeight: FontWeight.w300)))
            ]));
  }

  /// Section Widget
  Widget _buildLiveSessionSection(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(right: 3.h),
        padding: EdgeInsets.symmetric(horizontal: 30.h, vertical: 21.v),
        decoration: AppDecoration.outlinePrimary1
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder50),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(height: 14.v),
              Padding(
                  padding: EdgeInsets.only(right: 14.h),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("lbl_live_session".tr,
                            style: TextStyle(
                                color: appTheme.blueGray90001,
                                fontSize: 26.fSize,
                                fontFamily: 'Nunito Sans',
                                fontWeight: FontWeight.w600)),
                        CustomElevatedButton(
                            height: 28.v,
                            width: 77.h,
                            text: "lbl_live_now".tr,
                            margin: EdgeInsets.only(bottom: 6.v),
                            buttonStyle: CustomButtonStyles.fillLightGreenA,
                            onPressed: () {
                              onTapLiveNow(context);
                            })
                      ])),
              SizedBox(height: 15.v),
              Container(
                  width: 117.h,
                  margin: EdgeInsets.only(left: 3.h),
                  child: Text("msg_revision_solving".tr,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          color: appTheme.blueGray90001.withOpacity(0.6),
                          fontSize: 16.fSize,
                          fontFamily: 'Nunito Sans',
                          fontWeight: FontWeight.w300)))
            ]));
  }

  /// Section Widget
  Widget _buildDownloadSection(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(right: 3.h),
        padding: EdgeInsets.symmetric(horizontal: 33.h, vertical: 25.v),
        decoration: AppDecoration.outlinePrimary1
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder50),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 4.v),
              Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                      padding: EdgeInsets.only(left: 23.h, right: 5.h),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                                padding: EdgeInsets.only(top: 2.v),
                                child: Text("lbl_video".tr,
                                    style: TextStyle(
                                        color: appTheme.blueGray90001,
                                        fontSize: 26.fSize,
                                        fontFamily: 'Nunito Sans',
                                        fontWeight: FontWeight.w600))),
                            CustomElevatedButton(
                                height: 28.v,
                                width: 100.h,
                                text: "lbl_download".tr,
                                margin: EdgeInsets.only(bottom: 10.v),
                                buttonStyle:
                                    CustomButtonStyles.outlinePrimaryTL14,
                                onPressed: () {
                                  onTapDownload(context);
                                })
                          ]))),
              SizedBox(height: 7.v),
              Padding(
                  padding: EdgeInsets.only(right: 13.h),
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                            child: Text("msg_here_you_will_be2".tr,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                    color:
                                        appTheme.blueGray90001.withOpacity(0.6),
                                    fontSize: 16.fSize,
                                    fontFamily: 'Nunito Sans',
                                    fontWeight: FontWeight.w300))),
                        Padding(
                            padding: EdgeInsets.only(left: 43.h, top: 35.v),
                            child: Text("lbl_8_12_sessions".tr,
                                style: TextStyle(
                                    color:
                                        appTheme.blueGray90001.withOpacity(0.6),
                                    fontSize: 12.fSize,
                                    fontFamily: 'Nunito Sans',
                                    fontWeight: FontWeight.w400)))
                      ]))
            ]));
  }

  /// Navigates to the previous screen.
  onTapImgArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }

  /// Navigates to the videoPageOneScreen when the action is triggered.
  onTapContinue(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.videoPageOneScreen,
    );
  }

  /// Navigates to the mockExamScreen when the action is triggered.
  onTapTakeTheExam(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.mockExamScreen,
    );
  }

  /// Navigates to the liveSessionScreen when the action is triggered.
  onTapLiveNow(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.liveSessionScreen,
    );
  }

  onTapDownload(BuildContext context) {
    // TODO: implement Actions
  }
}
