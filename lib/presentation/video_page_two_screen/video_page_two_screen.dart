import 'models/video_page_two_model.dart';
import 'package:flutter/material.dart';
import 'package:math_courses/core/app_export.dart';
import 'package:math_courses/widgets/custom_bottom_bar.dart';
import 'package:math_courses/widgets/custom_elevated_button.dart';
import 'provider/video_page_two_provider.dart';

class VideoPageTwoScreen extends StatefulWidget {
  const VideoPageTwoScreen({Key? key}) : super(key: key);

  @override
  VideoPageTwoScreenState createState() => VideoPageTwoScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => VideoPageTwoProvider(),
        child: VideoPageTwoScreen());
  }
}

// ignore_for_file: must_be_immutable
class VideoPageTwoScreenState extends State<VideoPageTwoScreen> {
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
            Stack(alignment: Alignment.topRight, children: [
              Align(
                  alignment: Alignment.center,
                  child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 4.h, vertical: 34.v),
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(ImageConstant.imgGroup164),
                              fit: BoxFit.cover)),
                      child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            _buildWelcomeSection(context),
                            SizedBox(height: 30.v),
                            Align(
                                alignment: Alignment.centerRight,
                                child: Padding(
                                    padding: EdgeInsets.only(left: 28.h),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                          Expanded(
                                              child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 8.h),
                                                    child: Row(children: [
                                                      Container(
                                                          height: 30.v,
                                                          width: 35.h,
                                                          margin:
                                                              EdgeInsets.only(
                                                                  top: 8.v,
                                                                  bottom: 5.v),
                                                          child: Stack(
                                                              alignment: Alignment
                                                                  .centerRight,
                                                              children: [
                                                                Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .center,
                                                                    child: Container(
                                                                        height: 30
                                                                            .v,
                                                                        width: 35
                                                                            .h,
                                                                        decoration: BoxDecoration(
                                                                            color:
                                                                                appTheme.blueGray10001.withOpacity(0.5),
                                                                            borderRadius: BorderRadius.circular(17.h)))),
                                                                CustomImageView(
                                                                    imagePath:
                                                                        ImageConstant
                                                                            .imgArrowLeft,
                                                                    height:
                                                                        18.v,
                                                                    width: 19.h,
                                                                    alignment:
                                                                        Alignment
                                                                            .centerRight,
                                                                    margin: EdgeInsets.only(
                                                                        right: 7
                                                                            .h),
                                                                    onTap: () {
                                                                      onTapImgArrowLeft(
                                                                          context);
                                                                    })
                                                              ])),
                                                      Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  left: 13.h),
                                                          child: Text(
                                                              "lbl_video".tr,
                                                              style: TextStyle(
                                                                  color: appTheme
                                                                      .red900,
                                                                  fontSize:
                                                                      32.fSize,
                                                                  fontFamily:
                                                                      'Nunito Sans',
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w700)))
                                                    ])),
                                                SizedBox(height: 345.v),
                                                Padding(
                                                    padding: EdgeInsets.only(
                                                        right: 9.h),
                                                    child: Row(children: [
                                                      Expanded(
                                                          child: Text(
                                                              "msg_here_you_will_be3"
                                                                  .tr,
                                                              style: TextStyle(
                                                                  color: appTheme
                                                                      .blueGray90001
                                                                      .withOpacity(
                                                                          0.6),
                                                                  fontSize:
                                                                      16.fSize,
                                                                  fontFamily:
                                                                      'Nunito Sans',
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w400))),
                                                      Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  left: 35.h),
                                                          child: Text(
                                                              "lbl_0_20".tr,
                                                              style: TextStyle(
                                                                  color: appTheme
                                                                      .blueGray90001
                                                                      .withOpacity(
                                                                          0.6),
                                                                  fontSize:
                                                                      16.fSize,
                                                                  fontFamily:
                                                                      'Nunito Sans',
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w300)))
                                                    ])),
                                                SizedBox(height: 21.v),
                                                Row(children: [
                                                  Expanded(
                                                      child: Text(
                                                          "msg_here_you_will_be3"
                                                              .tr,
                                                          style: TextStyle(
                                                              color: appTheme
                                                                  .blueGray90001
                                                                  .withOpacity(
                                                                      0.6),
                                                              fontSize:
                                                                  16.fSize,
                                                              fontFamily:
                                                                  'Nunito Sans',
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400))),
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 36.h),
                                                      child: Text(
                                                          "lbl_10_20".tr,
                                                          style: TextStyle(
                                                              color: appTheme
                                                                  .blueGray90001
                                                                  .withOpacity(
                                                                      0.6),
                                                              fontSize:
                                                                  16.fSize,
                                                              fontFamily:
                                                                  'Nunito Sans',
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w300)))
                                                ]),
                                                SizedBox(height: 26.v),
                                                Text("msg_here_you_will_be2".tr,
                                                    style: TextStyle(
                                                        color: appTheme
                                                            .blueGray90001
                                                            .withOpacity(0.6),
                                                        fontSize: 16.fSize,
                                                        fontFamily:
                                                            'Nunito Sans',
                                                        fontWeight:
                                                            FontWeight.w400))
                                              ])),
                                          Padding(
                                              padding: EdgeInsets.only(
                                                  left: 18.h, top: 483.v),
                                              child: Text("lbl_30_20".tr,
                                                  style: TextStyle(
                                                      color: appTheme
                                                          .blueGray90001
                                                          .withOpacity(0.6),
                                                      fontSize: 16.fSize,
                                                      fontFamily: 'Nunito Sans',
                                                      fontWeight:
                                                          FontWeight.w300))),
                                          // Padding(
                                          //     padding: EdgeInsets.only(
                                          //         left: 19.h),
                                          //     child: SizedBox(
                                          //         height: 506.v,
                                          //         child: VerticalDivider(
                                          //             width: 5.h,
                                          //             thickness: 5.v,
                                          //             indent: 384.h,
                                          //             endIndent: 6.h)))
                                        ]))),
                            SizedBox(height: 25.v),
                            _buildHereYouWillBeSection(context),
                            SizedBox(height: 25.v),
                            _buildHereYouWillBeSection1(context),
                            SizedBox(height: 39.v),
                            _buildPreviousSection(context),
                            SizedBox(height: 55.v),
                            Align(
                                alignment: Alignment.centerRight,
                                child: Padding(
                                    padding: EdgeInsets.only(right: 69.h),
                                    child: Text("lbl_8_12_sessions".tr,
                                        style: TextStyle(
                                            color: appTheme.blueGray90001
                                                .withOpacity(0.6),
                                            fontSize: 12.fSize,
                                            fontFamily: 'Nunito Sans',
                                            fontWeight: FontWeight.w400)))),
                            SizedBox(height: 24.v)
                          ]))),
              CustomImageView(
                  imagePath: ImageConstant.imgComponent3Red90002,
                  height: 96.v,
                  width: 77.h,
                  alignment: Alignment.topRight,
                  margin: EdgeInsets.only(right: 141.h)),
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
              _buildView(context)
            ]),
            SizedBox(height: 165.v),
            CustomImageView(
                imagePath: ImageConstant.imgRectangle114,
                height: 99.v,
                width: 418.h)
          ]))),
    ));
  }

  /// Section Widget
  Widget _buildWelcomeSection(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 28.h, right: 44.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Padding(
              padding: EdgeInsets.only(top: 5.v, bottom: 1.v),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("lbl_welcome".tr,
                        style: TextStyle(
                            color: appTheme.blueGray90001.withOpacity(0.8),
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
        ]));
  }

  /// Section Widget
  Widget _buildHereYouWillBeSection(BuildContext context) {
    return Align(
        alignment: Alignment.center,
        child: Padding(
            padding: EdgeInsets.only(left: 28.h, right: 21.h),
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Padding(
                  padding: EdgeInsets.only(top: 1.v),
                  child: Text("msg_here_you_will_be2".tr,
                      style: TextStyle(
                          color: appTheme.blueGray90001.withOpacity(0.6),
                          fontSize: 16.fSize,
                          fontFamily: 'Nunito Sans',
                          fontWeight: FontWeight.w400))),
              Padding(
                  padding: EdgeInsets.only(left: 18.h),
                  child: Text("lbl_1_30_2".tr,
                      style: TextStyle(
                          color: appTheme.blueGray90001.withOpacity(0.6),
                          fontSize: 16.fSize,
                          fontFamily: 'Nunito Sans',
                          fontWeight: FontWeight.w300)))
            ])));
  }

  /// Section Widget
  Widget _buildHereYouWillBeSection1(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 28.h, right: 48.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Padding(
              padding: EdgeInsets.only(top: 1.v),
              child: Text("msg_here_you_will_be3".tr,
                  style: TextStyle(
                      color: appTheme.blueGray90001.withOpacity(0.6),
                      fontSize: 16.fSize,
                      fontFamily: 'Nunito Sans',
                      fontWeight: FontWeight.w400))),
          Text("lbl_2_00_00".tr,
              style: TextStyle(
                  color: appTheme.blueGray90001.withOpacity(0.6),
                  fontSize: 16.fSize,
                  fontFamily: 'Nunito Sans',
                  fontWeight: FontWeight.w300))
        ]));
  }

  /// Section Widget
  Widget _buildPreviousSection(BuildContext context) {
    return Align(
        alignment: Alignment.center,
        child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 29.h),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
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
                ])));
  }

  /// Section Widget
  Widget _buildView(BuildContext context) {
    return Align(
        alignment: Alignment.topCenter,
        child: Card(
            clipBehavior: Clip.antiAlias,
            elevation: 0,
            margin: EdgeInsets.only(top: 191.v),
            color: appTheme.blueGray80033,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusStyle.roundedBorder10),
            child: Container(
                height: 242.v,
                width: 404.h,
                padding: EdgeInsets.only(left: 173.h, top: 92.v, right: 173.h),
                decoration: AppDecoration.fillBlueGray
                    .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
                child: Stack(alignment: Alignment.topRight, children: [
                  Align(
                      alignment: Alignment.topCenter,
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
                      alignment: Alignment.topRight,
                      margin: EdgeInsets.only(top: 19.v, right: 19.h))
                ]))));
  }

  /// Navigates to the previous screen.
  onTapImgArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }

  /// Navigates to the liveSessionScreen when the action is triggered.
  onTapPrevious(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.liveSessionScreen,
    );
  }

  /// Navigates to the quizScreen when the action is triggered.
  onTapNext(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.quizScreen,
    );
  }
}
