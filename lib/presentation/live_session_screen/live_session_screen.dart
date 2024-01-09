import 'models/live_session_model.dart';
import 'package:flutter/material.dart';
import 'package:math_courses/core/app_export.dart';
import 'package:math_courses/widgets/custom_bottom_bar.dart';
import 'package:math_courses/widgets/custom_elevated_button.dart';
import 'package:math_courses/widgets/custom_icon_button.dart';
import 'provider/live_session_provider.dart';

class LiveSessionScreen extends StatefulWidget {
  const LiveSessionScreen({Key? key}) : super(key: key);

  @override
  LiveSessionScreenState createState() => LiveSessionScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => LiveSessionProvider(), child: LiveSessionScreen());
  }
}

// ignore_for_file: must_be_immutable
class LiveSessionScreenState extends State<LiveSessionScreen> {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    child: Column(children: [
                  SizedBox(
                      height: SizeUtils.height,
                      width: double.maxFinite,
                      child: Stack(alignment: Alignment.topRight, children: [
                        Align(
                            alignment: Alignment.center,
                            child: Container(
                                width: double.maxFinite,
                                padding: EdgeInsets.symmetric(
                                    horizontal: 4.h, vertical: 34.v),
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                            ImageConstant.imgGroup164),
                                        fit: BoxFit.cover)),
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Expanded(
                                          child: Padding(
                                              padding:
                                                  EdgeInsets.only(bottom: 24.v),
                                              child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                right: 14.h),
                                                        child: Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceBetween,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Padding(
                                                                  padding: EdgeInsets
                                                                      .only(
                                                                          top: 5
                                                                              .v),
                                                                  child: Column(
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .start,
                                                                      children: [
                                                                        Padding(
                                                                            padding:
                                                                                EdgeInsets.only(left: 2.h),
                                                                            child: Text("lbl_welcome".tr, style: TextStyle(color: appTheme.blueGray90001.withOpacity(0.8), fontSize: 16.fSize, fontFamily: 'Nunito Sans', fontWeight: FontWeight.w400))),
                                                                        Padding(
                                                                            padding:
                                                                                EdgeInsets.only(left: 5.h),
                                                                            child: Text("lbl_mohamed_ali".tr, style: TextStyle(color: appTheme.blueGray90001, fontSize: 16.fSize, fontFamily: 'Nunito Sans', fontWeight: FontWeight.w700))),
                                                                        SizedBox(
                                                                            height:
                                                                                31.v),
                                                                        Padding(
                                                                            padding:
                                                                                EdgeInsets.only(left: 8.h),
                                                                            child: Row(children: [
                                                                              Padding(
                                                                                  padding: EdgeInsets.only(top: 9.v, bottom: 4.v),
                                                                                  child: CustomIconButton(
                                                                                      height: 30.v,
                                                                                      width: 35.h,
                                                                                      padding: EdgeInsets.all(6.h),
                                                                                      onTap: () {
                                                                                        onTapBtnArrowLeft(context);
                                                                                      },
                                                                                      child: CustomImageView(imagePath: ImageConstant.imgArrowLeft))),
                                                                              Padding(padding: EdgeInsets.only(left: 18.h), child: Text("lbl_live_session".tr, style: TextStyle(color: appTheme.red900, fontSize: 32.fSize, fontFamily: 'Nunito Sans', fontWeight: FontWeight.w700)))
                                                                            ])),
                                                                        SizedBox(
                                                                            height:
                                                                                348.v),
                                                                        Text(
                                                                            "msg_here_you_will_be3"
                                                                                .tr,
                                                                            style: TextStyle(
                                                                                color: appTheme.blueGray90001.withOpacity(0.6),
                                                                                fontSize: 16.fSize,
                                                                                fontFamily: 'Nunito Sans',
                                                                                fontWeight: FontWeight.w400))
                                                                      ])),
                                                              CustomImageView(
                                                                  imagePath:
                                                                      ImageConstant
                                                                          .imgEllipse1,
                                                                  height: 50
                                                                      .adaptSize,
                                                                  width: 50
                                                                      .adaptSize,
                                                                  radius: BorderRadius
                                                                      .circular(
                                                                          25.h),
                                                                  margin: EdgeInsets
                                                                      .only(
                                                                          bottom:
                                                                              443.v))
                                                            ])),
                                                    SizedBox(height: 23.v),
                                                    Text(
                                                        "msg_here_you_will_be3"
                                                            .tr,
                                                        style: TextStyle(
                                                            color: appTheme
                                                                .blueGray90001
                                                                .withOpacity(
                                                                    0.6),
                                                            fontSize: 16.fSize,
                                                            fontFamily:
                                                                'Nunito Sans',
                                                            fontWeight:
                                                                FontWeight
                                                                    .w400)),
                                                    SizedBox(height: 26.v),
                                                    Text(
                                                        "msg_here_you_will_be2"
                                                            .tr,
                                                        style: TextStyle(
                                                            color: appTheme
                                                                .blueGray90001
                                                                .withOpacity(
                                                                    0.6),
                                                            fontSize: 16.fSize,
                                                            fontFamily:
                                                                'Nunito Sans',
                                                            fontWeight:
                                                                FontWeight
                                                                    .w400)),
                                                    SizedBox(height: 27.v),
                                                    Text(
                                                        "msg_here_you_will_be2"
                                                            .tr,
                                                        style: TextStyle(
                                                            color: appTheme
                                                                .blueGray90001
                                                                .withOpacity(
                                                                    0.6),
                                                            fontSize: 16.fSize,
                                                            fontFamily:
                                                                'Nunito Sans',
                                                            fontWeight:
                                                                FontWeight
                                                                    .w400)),
                                                    SizedBox(height: 27.v),
                                                    Text(
                                                        "msg_here_you_will_be3"
                                                            .tr,
                                                        style: TextStyle(
                                                            color: appTheme
                                                                .blueGray90001
                                                                .withOpacity(
                                                                    0.6),
                                                            fontSize: 16.fSize,
                                                            fontFamily:
                                                                'Nunito Sans',
                                                            fontWeight:
                                                                FontWeight
                                                                    .w400)),
                                                    SizedBox(height: 39.v),
                                                    _buildPreviousButtons(
                                                        context),
                                                    SizedBox(height: 55.v),
                                                    Align(
                                                        alignment: Alignment
                                                            .centerRight,
                                                        child: Padding(
                                                            padding:
                                                                EdgeInsets.only(
                                                                    right: 39
                                                                        .h),
                                                            child: Text(
                                                                "lbl_8_12_sessions"
                                                                    .tr,
                                                                style: TextStyle(
                                                                    color: appTheme
                                                                        .blueGray90001
                                                                        .withOpacity(
                                                                            0.6),
                                                                    fontSize: 12
                                                                        .fSize,
                                                                    fontFamily:
                                                                        'Nunito Sans',
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w400))))
                                                  ]))),
                                      Padding(
                                          padding: EdgeInsets.only(left: 25.h),
                                          child: SizedBox(
                                              height: 864.v,
                                              child: VerticalDivider(
                                                  width: 5.h,
                                                  thickness: 5.v,
                                                  indent: 465.h,
                                                  endIndent: 283.h)))
                                    ]))),
                        CustomImageView(
                            imagePath: ImageConstant.imgComponent3Red90002,
                            height: 96.v,
                            width: 77.h,
                            alignment: Alignment.topRight,
                            margin: EdgeInsets.only(right: 138.h)),
                        CustomImageView(
                            imagePath: ImageConstant.imgPlus,
                            height: 104.v,
                            width: 76.h,
                            alignment: Alignment.centerRight),
                        CustomImageView(
                            imagePath: ImageConstant.imgRectangle5,
                            height: 241.v,
                            width: 404.h,
                            radius: BorderRadius.circular(10.h),
                            alignment: Alignment.topCenter,
                            margin: EdgeInsets.only(top: 191.v)),
                        _buildLiveSection(context)
                      ])),
                  SizedBox(height: 165.v),
                  CustomImageView(
                      imagePath: ImageConstant.imgRectangle113,
                      height: 99.v,
                      width: 418.h)
                ]))),
            bottomNavigationBar: _buildBottomBar(context)));
  }

  /// Section Widget
  Widget _buildPreviousButtons(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 8.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          CustomElevatedButton(
              width: 140.h,
              text: "lbl_previous".tr,
              leftIcon: Container(
                  margin: EdgeInsets.only(right: 9.h),
                  child: CustomImageView(
                      imagePath: ImageConstant.imgArrowleftOnerror,
                      height: 18.v,
                      width: 19.h)),
              onPressed: () {
                onTapPrevious(context);
              }),
          CustomElevatedButton(
              width: 107.h,
              text: "lbl_next".tr,
              rightIcon: Container(
                  margin: EdgeInsets.only(left: 5.h),
                  child: CustomImageView(
                      imagePath: ImageConstant.imgArrowrightOnerror,
                      height: 18.v,
                      width: 19.h)),
              onPressed: () {
                onTapNext(context);
              })
        ]));
  }

  /// Section Widget
  Widget _buildLiveSection(BuildContext context) {
    return Align(
        alignment: Alignment.topCenter,
        child: Container(
            margin: EdgeInsets.only(left: 13.h, top: 189.v, right: 13.h),
            padding: EdgeInsets.symmetric(horizontal: 11.h, vertical: 16.v),
            decoration: AppDecoration.fillBlueGray
                .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
            child: Column(mainAxisSize: MainAxisSize.min, children: [
              CustomElevatedButton(
                  height: 20.v,
                  width: 52.h,
                  text: "lbl_live".tr,
                  leftIcon: Container(
                      margin: EdgeInsets.only(right: 2.h),
                      child: CustomImageView(
                          imagePath: ImageConstant
                              .imgNestremotecomfortsensorfill0wght400grad0opsz241,
                          height: 11.v,
                          width: 12.h)),
                  buttonStyle: CustomButtonStyles.fillBlueGrayF,
                  alignment: Alignment.centerRight),
              SizedBox(height: 58.v),
              SizedBox(
                  height: 51.v,
                  width: 57.h,
                  child: Stack(alignment: Alignment.centerRight, children: [
                    Align(
                        alignment: Alignment.center,
                        child: Container(
                            height: 51.v,
                            width: 57.h,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(28.h),
                                border: Border.all(
                                    color: appTheme.gray900,
                                    width: 3.h,
                                    strokeAlign: strokeAlignOutside)))),
                    CustomImageView(
                        imagePath: ImageConstant.imgVector1,
                        height: 14.v,
                        width: 12.h,
                        alignment: Alignment.centerRight,
                        margin: EdgeInsets.only(right: 19.h))
                  ])),
              SizedBox(height: 81.v)
            ])));
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {});
  }

  /// Navigates to the previous screen.
  onTapBtnArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }

  /// Navigates to the mockExamScreen when the action is triggered.
  onTapPrevious(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.mockExamScreen,
    );
  }

  /// Navigates to the videoPageTwoScreen when the action is triggered.
  onTapNext(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.videoPageTwoScreen,
    );
  }
}
