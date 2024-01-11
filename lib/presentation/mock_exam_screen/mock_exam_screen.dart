import 'models/mock_exam_model.dart';
import 'package:flutter/material.dart';
import 'package:math_courses/core/app_export.dart';
import 'package:math_courses/widgets/custom_bottom_bar.dart';
import 'package:math_courses/widgets/custom_elevated_button.dart';
import 'provider/mock_exam_provider.dart';

class MockExamScreen extends StatefulWidget {
  const MockExamScreen({Key? key}) : super(key: key);

  @override
  MockExamScreenState createState() => MockExamScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => MockExamProvider(), child: MockExamScreen());
  }
}

// ignore_for_file: must_be_immutable
class MockExamScreenState extends State<MockExamScreen> {
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
        SizedBox(
            height: SizeUtils.height,
            width: double.maxFinite,
            child: Stack(alignment: Alignment.topRight, children: [
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
                            SizedBox(height: 36.v),
                            Padding(
                                padding: EdgeInsets.only(left: 18.h),
                                child: Row(children: [
                                  Expanded(
                                      child: Column(children: [
                                    Align(
                                        alignment: Alignment.centerLeft,
                                        child: Padding(
                                            padding:
                                                EdgeInsets.only(left: 26.h),
                                            child: Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Container(
                                                      height: 30.v,
                                                      width: 35.h,
                                                      margin: EdgeInsets.only(
                                                          top: 2.v,
                                                          bottom: 11.v),
                                                      child: Stack(
                                                          alignment: Alignment
                                                              .centerRight,
                                                          children: [
                                                            Align(
                                                                alignment:
                                                                    Alignment
                                                                        .center,
                                                                child: Container(
                                                                    height:
                                                                        30.v,
                                                                    width: 35.h,
                                                                    decoration: BoxDecoration(
                                                                        color: appTheme
                                                                            .blueGray10001
                                                                            .withOpacity(
                                                                                0.5),
                                                                        borderRadius:
                                                                            BorderRadius.circular(17.h)))),
                                                            CustomImageView(
                                                                imagePath:
                                                                    ImageConstant
                                                                        .imgArrowLeft,
                                                                height: 18.v,
                                                                width: 19.h,
                                                                alignment: Alignment
                                                                    .centerRight,
                                                                margin: EdgeInsets
                                                                    .only(
                                                                        right: 7
                                                                            .h),
                                                                onTap: () {
                                                                  onTapImgArrowLeft(
                                                                      context);
                                                                })
                                                          ])),
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 21.h),
                                                      child: Text(
                                                          "lbl_mock_exam".tr,
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
                                                ]))),
                                    SizedBox(height: 38.v),
                                    _buildMockExamSection(context),
                                    SizedBox(height: 28.v),
                                    Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          _buildCSection(context,
                                              textC: "lbl_a".tr,
                                              textSix: "lbl_1".tr),
                                          Container(
                                              width: 123.h,
                                              margin:
                                                  EdgeInsets.only(left: 28.h),
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 17.h,
                                                  vertical: 6.v),
                                              decoration: AppDecoration
                                                  .outlineIndigo
                                                  .copyWith(
                                                      borderRadius:
                                                          BorderRadiusStyle
                                                              .circleBorder20),
                                              child: Row(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                bottom: 5.v),
                                                        child: Text("lbl_b".tr,
                                                            style: TextStyle(
                                                                color: theme
                                                                    .colorScheme
                                                                    .primary
                                                                    .withOpacity(
                                                                        1),
                                                                fontSize:
                                                                    18.fSize,
                                                                fontFamily:
                                                                    'Inter',
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600))),
                                                    Container(
                                                        height: 22.v,
                                                        width: 12.h,
                                                        margin: EdgeInsets.only(
                                                            left: 21.h,
                                                            bottom: 5.v),
                                                        child: Stack(
                                                            alignment: Alignment
                                                                .center,
                                                            children: [
                                                              Align(
                                                                  alignment:
                                                                      Alignment
                                                                          .center,
                                                                  child: Text(
                                                                      "lbl_3"
                                                                          .tr,
                                                                      style: TextStyle(
                                                                          color: theme
                                                                              .colorScheme
                                                                              .primary
                                                                              .withOpacity(
                                                                                  1),
                                                                          fontSize: 18
                                                                              .fSize,
                                                                          fontFamily:
                                                                              'Inter',
                                                                          fontWeight:
                                                                              FontWeight.w600))),
                                                              Align(
                                                                  alignment:
                                                                      Alignment
                                                                          .center,
                                                                  child: Text(
                                                                      "lbl_3"
                                                                          .tr,
                                                                      style: TextStyle(
                                                                          color: theme
                                                                              .colorScheme
                                                                              .primary
                                                                              .withOpacity(
                                                                                  1),
                                                                          fontSize: 18
                                                                              .fSize,
                                                                          fontFamily:
                                                                              'Inter',
                                                                          fontWeight:
                                                                              FontWeight.w600)))
                                                            ]))
                                                  ]))
                                        ]),
                                    SizedBox(height: 19.v),
                                    Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                              padding:
                                                  EdgeInsets.only(bottom: 10.v),
                                              child: _buildCSection(context,
                                                  textC: "lbl_c".tr,
                                                  textSix: "lbl_6".tr)),
                                          Padding(
                                              padding:
                                                  EdgeInsets.only(left: 28.h),
                                              child: _buildCSection(context,
                                                  textC: "lbl_a".tr,
                                                  textSix: "lbl_1".tr))
                                        ]),
                                    SizedBox(height: 15.v),
                                    Padding(
                                      padding: EdgeInsets.symmetric(
                                        horizontal: 130,
                                      ),
                                      child: _buildCSection(
                                        context,
                                        textC: "E. ",
                                        textSix: '20',
                                      ),
                                    ),
                                    SizedBox(height: 46.v),
                                    _buildWhatIsTheAmplitudeSection(context),
                                    SizedBox(height: 28.v),
                                    Align(
                                        alignment: Alignment.centerRight,
                                        child: Padding(
                                            padding:
                                                EdgeInsets.only(right: 41.h),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.end,
                                                children: [
                                                  _buildCSection(context,
                                                      textC: "lbl_a".tr,
                                                      textSix: "lbl_1".tr),
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 28.h),
                                                      child: _buildCSection(
                                                          context,
                                                          textC: "lbl_b".tr,
                                                          textSix: "lbl_3".tr))
                                                ]))),
                                    SizedBox(height: 19.v),
                                    _buildPreviousSection(context),
                                    SizedBox(height: 13.v),
                                    Align(
                                        alignment: Alignment.centerRight,
                                        child: Stack(
                                            alignment: Alignment.topLeft,
                                            children: [
                                              Align(
                                                  alignment:
                                                      Alignment.bottomRight,
                                                  child: Text(
                                                      "lbl_8_12_sessions".tr,
                                                      style: TextStyle(
                                                          color: appTheme
                                                              .blueGray90001
                                                              .withOpacity(0.6),
                                                          fontSize: 12.fSize,
                                                          fontFamily:
                                                              'Nunito Sans',
                                                          fontWeight: FontWeight
                                                              .w400))),
                                              // _buildESection(context,
                                              //     dynamicText:
                                              //         "lbl_e".tr,
                                              //     dynamicText1:
                                              //         "lbl_1".tr,
                                              //     dynamicText2:
                                              //         "lbl_3".tr)
                                            ]))
                                  ])),
                                  // Padding(
                                  //     padding:
                                  //         EdgeInsets.only(left: 20.h),
                                  //     child: SizedBox(
                                  //         child: VerticalDivider(
                                  //             width: 5.h,
                                  //             thickness: 5.v,
                                  //             indent: 378.h,
                                  //             endIndent: 258.h)))
                                ])),
                            SizedBox(height: 24.v)
                          ]))),
              CustomImageView(
                  imagePath: ImageConstant.imgCalculator,
                  height: 111.v,
                  width: 64.h,
                  alignment: Alignment.topRight,
                  margin: EdgeInsets.only(top: 109.v)),
              CustomImageView(
                  imagePath: ImageConstant.imgComponent8,
                  height: 67.v,
                  width: 60.h,
                  alignment: Alignment.bottomLeft,
                  margin: EdgeInsets.only(bottom: 372.v))
            ])),
        SizedBox(height: 165.v),
        CustomImageView(
            imagePath: ImageConstant.imgRectangle112,
            height: 99.v,
            width: 418.h)
      ])),
    ));
  }

  /// Section Widget
  Widget _buildWelcomeSection(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 30.h, right: 44.h),
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
  Widget _buildMockExamSection(BuildContext context) {
    return Container(
        width: 379.h,
        padding: EdgeInsets.symmetric(horizontal: 64.h, vertical: 28.v),
        decoration: AppDecoration.outlinePrimary1
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder50),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 2.v),
              Container(
                  width: 240.h,
                  margin: EdgeInsets.only(right: 10.h),
                  child: Text("msg_what_is_the_amplitude".tr,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          color: theme.colorScheme.primary.withOpacity(1),
                          fontSize: 18.fSize,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w400)))
            ]));
  }

  /// Section Widget
  Widget _buildWhatIsTheAmplitudeSection(BuildContext context) {
    return Container(
        width: 379.h,
        padding: EdgeInsets.symmetric(horizontal: 64.h, vertical: 28.v),
        decoration: AppDecoration.outlinePrimary1
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder50),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 2.v),
              Container(
                  width: 240.h,
                  margin: EdgeInsets.only(right: 10.h),
                  child: Text("msg_what_is_the_amplitude".tr,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          color: theme.colorScheme.primary.withOpacity(1),
                          fontSize: 18.fSize,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w400)))
            ]));
  }

  /// Section Widget
  Widget _buildPreviousSection(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      CustomElevatedButton(
          width: 120.h,
          text: "lbl_previous".tr,
          leftIcon: Container(
              margin: EdgeInsets.only(right: 9.h),
              child: CustomImageView(
                  imagePath: ImageConstant.imgArrowleftOnerror,
                  height: 18.v,
                  width: 19.h)),
          onPressed: () {
            onTapPrevious(context);
          },
          alignment: Alignment.bottomLeft),
      Align(
          alignment: Alignment.bottomRight,
          child: GestureDetector(
              onTap: () {
                onTapNext(context);
              },
              child: Container(
                  width: 120,
                  margin: EdgeInsets.only(left: 52.h, top: 12.v),
                  padding:
                      EdgeInsets.symmetric(horizontal: 13.h, vertical: 6.v),
                  decoration: AppDecoration.outlinePrimary3
                      .copyWith(borderRadius: BorderRadiusStyle.circleBorder20),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                            padding: EdgeInsets.only(bottom: 1.v),
                            child: Text("lbl_next".tr,
                                style: TextStyle(
                                    color: theme.colorScheme.onError,
                                    fontSize: 20.fSize,
                                    fontFamily: 'Nunito Sans',
                                    fontWeight: FontWeight.w700))),
                        CustomImageView(
                            imagePath: ImageConstant.imgArrowrightOnerror,
                            height: 18.v,
                            width: 19.h,
                            margin: EdgeInsets.only(
                                left: 5.h, top: 5.v, bottom: 5.v))
                      ]))))
    ]);
  }

  /// Common widget
  Widget _buildCSection(
    BuildContext context, {
    required String textC,
    required String textSix,
  }) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 21.h, vertical: 8.v),
        decoration: AppDecoration.outlineIndigo
            .copyWith(borderRadius: BorderRadiusStyle.circleBorder20),
        child: Row(children: [
          Text(textC,
              style: TextStyle(
                  color: theme.colorScheme.primary.withOpacity(1),
                  fontSize: 18.fSize,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w600)),
          Text(textSix,
              style: TextStyle(
                  color: theme.colorScheme.primary.withOpacity(1),
                  fontSize: 18.fSize,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w600))
        ]));
  }

  /// Common widget
  Widget _buildDSection(
    BuildContext context, {
    required String dynamicText1,
    required String dynamicText2,
    required String dynamicText3,
  }) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 17.h, vertical: 1.v),
        decoration: AppDecoration.outlineIndigo
            .copyWith(borderRadius: BorderRadiusStyle.circleBorder20),
        child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
              padding: EdgeInsets.only(top: 6.v, bottom: 20.v),
              child: Text(dynamicText1,
                  style: TextStyle(
                      color: theme.colorScheme.primary.withOpacity(1),
                      fontSize: 18.fSize,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w600))),
          // Padding(
          //     padding: EdgeInsets.only(left: 11.h, bottom: 4.v),
          //     child: Column(
          //         crossAxisAlignment: CrossAxisAlignment.start,
          //         children: [
          //           Padding(
          //               padding: EdgeInsets.only(left: 9.h),
          //               child: Text(dynamicText2,
          //                   style: TextStyle(
          //                       color: theme.colorScheme.primary.withOpacity(1),
          //                       fontSize: 18.fSize,
          //                       fontFamily: 'Inter',
          //                       fontWeight: FontWeight.w600))),
          //           SizedBox(
          //               height: 22.v,
          //               width: 31.h,
          //               child: Stack(alignment: Alignment.topCenter, children: [
          //                 Align(
          //                     alignment: Alignment.center,
          //                     child: Text(dynamicText3,
          //                         style: TextStyle(
          //                             color: theme.colorScheme.primary
          //                                 .withOpacity(1),
          //                             fontSize: 18.fSize,
          //                             fontFamily: 'Inter',
          //                             fontWeight: FontWeight.w600))),
          //                 Align(
          //                     alignment: Alignment.topCenter,
          //                     child: Padding(
          //                         padding: EdgeInsets.only(top: 1.v),
          //                         child: SizedBox(
          //                             width: 31.h,
          //                             child: Divider(
          //                                 color: theme.colorScheme.primary
          //                                     .withOpacity(1)))))
          //               ]))
          //         ]))
        ]));
  }

  /// Common widget
  Widget _buildESection(
    BuildContext context, {
    required String dynamicText,
    required String dynamicText1,
    required String dynamicText2,
  }) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 17.h),
        decoration: AppDecoration.outlineIndigo
            .copyWith(borderRadius: BorderRadiusStyle.circleBorder20),
        child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
              padding: EdgeInsets.only(top: 9.v, bottom: 15.v),
              child: Text(dynamicText,
                  style: TextStyle(
                      color: theme.colorScheme.primary.withOpacity(1),
                      fontSize: 18.fSize,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w600))),
          Container(
              height: 44.v,
              width: 31.h,
              margin: EdgeInsets.only(left: 16.h, bottom: 2.v),
              child: Stack(alignment: Alignment.center, children: [
                Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                        padding: EdgeInsets.only(left: 9.h),
                        child:
                            Column(mainAxisSize: MainAxisSize.min, children: [
                          Text(dynamicText1,
                              style: TextStyle(
                                  color:
                                      theme.colorScheme.primary.withOpacity(1),
                                  fontSize: 18.fSize,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w600)),
                          Text(dynamicText2,
                              style: TextStyle(
                                  color:
                                      theme.colorScheme.primary.withOpacity(1),
                                  fontSize: 18.fSize,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w600))
                        ]))),
                Align(
                    alignment: Alignment.center,
                    child: SizedBox(
                        width: 31.h,
                        child: Divider(
                            color: theme.colorScheme.primary.withOpacity(1))))
              ]))
        ]));
  }

  /// Navigates to the previous screen.
  onTapImgArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }

  /// Navigates to the videoPageOneScreen when the action is triggered.
  onTapPrevious(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.videoPageOneScreen,
    );
  }

  /// Navigates to the liveSessionScreen when the action is triggered.
  onTapNext(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.liveSessionScreen,
    );
  }
}
