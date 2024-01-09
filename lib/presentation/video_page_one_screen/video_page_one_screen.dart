import 'models/video_page_one_model.dart';
import 'package:flutter/material.dart';
import 'package:math_courses/core/app_export.dart';
import 'package:math_courses/widgets/custom_bottom_bar.dart';
import 'package:math_courses/widgets/custom_elevated_button.dart';
import 'provider/video_page_one_provider.dart';

class VideoPageOneScreen extends StatefulWidget {
  const VideoPageOneScreen({Key? key}) : super(key: key);

  @override
  VideoPageOneScreenState createState() => VideoPageOneScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => VideoPageOneProvider(),
        child: VideoPageOneScreen());
  }
}

// ignore_for_file: must_be_immutable
class VideoPageOneScreenState extends State<VideoPageOneScreen> {
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
                                padding: EdgeInsets.symmetric(
                                    horizontal: 4.h, vertical: 34.v),
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                            ImageConstant.imgGroup164),
                                        fit: BoxFit.cover)),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      _buildWelcomeSection(context),
                                      SizedBox(height: 31.v),
                                      Padding(
                                          padding: EdgeInsets.only(left: 26.h),
                                          child: Row(children: [
                                            Container(
                                                height: 30.v,
                                                width: 35.h,
                                                margin: EdgeInsets.symmetric(
                                                    vertical: 7.v),
                                                child: Stack(
                                                    alignment:
                                                        Alignment.centerRight,
                                                    children: [
                                                      Align(
                                                          alignment:
                                                              Alignment.center,
                                                          child: Container(
                                                              height: 30.v,
                                                              width: 35.h,
                                                              decoration: BoxDecoration(
                                                                  color: appTheme
                                                                      .blueGray10001
                                                                      .withOpacity(
                                                                          0.5),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              17.h)))),
                                                      CustomImageView(
                                                          imagePath:
                                                              ImageConstant
                                                                  .imgArrowLeft,
                                                          height: 18.v,
                                                          width: 19.h,
                                                          alignment: Alignment
                                                              .centerRight,
                                                          margin:
                                                              EdgeInsets.only(
                                                                  right: 7.h),
                                                          onTap: () {
                                                            onTapImgArrowLeft(
                                                                context);
                                                          })
                                                    ])),
                                            Padding(
                                                padding:
                                                    EdgeInsets.only(left: 33.h),
                                                child: Text("lbl_video".tr,
                                                    style: TextStyle(
                                                        color: appTheme.red900,
                                                        fontSize: 32.fSize,
                                                        fontFamily:
                                                            'Nunito Sans',
                                                        fontWeight:
                                                            FontWeight.w700)))
                                          ])),
                                      SizedBox(height: 31.v),
                                      _buildVideoSection(context),
                                      SizedBox(height: 66.v),
                                      _buildHereYouWillBeSection(context),
                                      SizedBox(height: 25.v),
                                      _buildHereYouWillBeSection2(context),
                                      SizedBox(height: 25.v),
                                      _buildHereYouWillBeSection3(context),
                                      SizedBox(height: 39.v),
                                      CustomElevatedButton(
                                          width: 107.h,
                                          text: "lbl_next".tr,
                                          margin: EdgeInsets.only(right: 30.h),
                                          rightIcon: Container(
                                              margin:
                                                  EdgeInsets.only(left: 5.h),
                                              child: CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgArrowrightOnerror,
                                                  height: 18.v,
                                                  width: 19.h)),
                                          onPressed: () {
                                            onTapNext(context);
                                          },
                                          alignment: Alignment.centerRight),
                                      SizedBox(height: 55.v),
                                      Align(
                                          alignment: Alignment.centerRight,
                                          child: Padding(
                                              padding:
                                                  EdgeInsets.only(right: 69.h),
                                              child: Text(
                                                  "lbl_8_12_sessions".tr,
                                                  style: TextStyle(
                                                      color: appTheme
                                                          .blueGray90001
                                                          .withOpacity(0.6),
                                                      fontSize: 12.fSize,
                                                      fontFamily: 'Nunito Sans',
                                                      fontWeight:
                                                          FontWeight.w400)))),
                                      SizedBox(height: 24.v)
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
                            width: 102.h,
                            alignment: Alignment.bottomLeft,
                            margin: EdgeInsets.only(bottom: 82.v))
                      ])),
                  SizedBox(height: 165.v),
                  CustomImageView(
                      imagePath: ImageConstant.imgRectangle111,
                      height: 99.v,
                      width: 418.h)
                ]))),
            bottomNavigationBar: _buildBottomBarSection(context)));
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
  Widget _buildVideoSection(BuildContext context) {
    return Container(
        height: 242.v,
        width: 405.h,
        margin: EdgeInsets.only(left: 9.h),
        child: Stack(alignment: Alignment.center, children: [
          CustomImageView(
              imagePath: ImageConstant.imgRectangle5,
              height: 241.v,
              width: 404.h,
              radius: BorderRadius.circular(10.h),
              alignment: Alignment.center),
          Align(
              alignment: Alignment.center,
              child: Card(
                  clipBehavior: Clip.antiAlias,
                  elevation: 0,
                  margin: EdgeInsets.all(0),
                  color: appTheme.blueGray80033,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadiusStyle.roundedBorder10),
                  child: Container(
                      height: 242.v,
                      width: 404.h,
                      padding:
                          EdgeInsets.only(left: 173.h, top: 92.v, right: 173.h),
                      decoration: AppDecoration.fillBlueGray.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder10),
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
                            margin: EdgeInsets.only(top: 19.v, right: 20.h))
                      ]))))
        ]));
  }

  /// Section Widget
  Widget _buildHereYouWillBeSection(BuildContext context) {
    return Align(
        alignment: Alignment.centerRight,
        child: Padding(
            padding: EdgeInsets.only(left: 28.h),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                      child: Padding(
                          padding: EdgeInsets.only(top: 5.v),
                          child: Column(children: [
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                    padding: EdgeInsets.only(right: 9.h),
                                    child: Row(children: [
                                      Padding(
                                          padding: EdgeInsets.only(top: 1.v),
                                          child: Text(
                                              "msg_here_you_will_be3".tr,
                                              style: TextStyle(
                                                  color: appTheme.blueGray90001
                                                      .withOpacity(0.6),
                                                  fontSize: 16.fSize,
                                                  fontFamily: 'Nunito Sans',
                                                  fontWeight:
                                                      FontWeight.w400))),
                                      Padding(
                                          padding: EdgeInsets.only(left: 35.h),
                                          child: Text("lbl_0_20".tr,
                                              style: TextStyle(
                                                  color: appTheme.blueGray90001
                                                      .withOpacity(0.6),
                                                  fontSize: 16.fSize,
                                                  fontFamily: 'Nunito Sans',
                                                  fontWeight: FontWeight.w300)))
                                    ]))),
                            SizedBox(height: 21.v),
                            Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                      padding: EdgeInsets.only(top: 1.v),
                                      child: Text("msg_here_you_will_be3".tr,
                                          style: TextStyle(
                                              color: appTheme.blueGray90001
                                                  .withOpacity(0.6),
                                              fontSize: 16.fSize,
                                              fontFamily: 'Nunito Sans',
                                              fontWeight: FontWeight.w400))),
                                  Padding(
                                      padding: EdgeInsets.only(left: 36.h),
                                      child: Text("lbl_10_20".tr,
                                          style: TextStyle(
                                              color: appTheme.blueGray90001
                                                  .withOpacity(0.6),
                                              fontSize: 16.fSize,
                                              fontFamily: 'Nunito Sans',
                                              fontWeight: FontWeight.w300)))
                                ]),
                            SizedBox(height: 26.v),
                            Text("msg_here_you_will_be2".tr,
                                style: TextStyle(
                                    color:
                                        appTheme.blueGray90001.withOpacity(0.6),
                                    fontSize: 16.fSize,
                                    fontFamily: 'Nunito Sans',
                                    fontWeight: FontWeight.w400))
                          ]))),
                  Padding(
                      padding: EdgeInsets.only(left: 18.h, top: 99.v),
                      child: Text("lbl_30_20".tr,
                          style: TextStyle(
                              color: appTheme.blueGray90001.withOpacity(0.6),
                              fontSize: 16.fSize,
                              fontFamily: 'Nunito Sans',
                              fontWeight: FontWeight.w300))),
                  Padding(
                      padding: EdgeInsets.only(left: 19.h),
                      child: SizedBox(
                          height: 122.v,
                          child: VerticalDivider(
                              width: 5.h, thickness: 5.v, endIndent: 6.h)))
                ])));
  }

  /// Section Widget
  Widget _buildHereYouWillBeSection2(BuildContext context) {
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
  Widget _buildHereYouWillBeSection3(BuildContext context) {
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
  Widget _buildBottomBarSection(BuildContext context) {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {});
  }

  /// Navigates to the previous screen.
  onTapImgArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }

  /// Navigates to the mockExamScreen when the action is triggered.
  onTapNext(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.mockExamScreen,
    );
  }
}
