import 'models/quiz_model.dart';
import 'package:flutter/material.dart';
import 'package:math_courses/core/app_export.dart';
import 'package:math_courses/widgets/custom_bottom_bar.dart';
import 'package:math_courses/widgets/custom_elevated_button.dart';
import 'provider/quiz_provider.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({Key? key}) : super(key: key);

  @override
  QuizScreenState createState() => QuizScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => QuizProvider(), child: QuizScreen());
  }
}

// ignore_for_file: must_be_immutable
class QuizScreenState extends State<QuizScreen> {
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
                      child: Stack(alignment: Alignment.bottomLeft, children: [
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
                                      SizedBox(height: 34.v),
                                      Padding(
                                          padding: EdgeInsets.only(left: 18.h),
                                          child: Row(children: [
                                            Expanded(
                                                child: Column(children: [
                                              Align(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 31.h),
                                                      child: Row(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Container(
                                                                height: 30.v,
                                                                width: 35.h,
                                                                margin: EdgeInsets
                                                                    .only(
                                                                        top:
                                                                            4.v,
                                                                        bottom: 9
                                                                            .v),
                                                                child: Stack(
                                                                    alignment:
                                                                        Alignment
                                                                            .centerRight,
                                                                    children: [
                                                                      Align(
                                                                          alignment: Alignment
                                                                              .center,
                                                                          child: Container(
                                                                              height: 30.v,
                                                                              width: 35.h,
                                                                              decoration: BoxDecoration(color: appTheme.blueGray10001.withOpacity(0.5), borderRadius: BorderRadius.circular(17.h)))),
                                                                      CustomImageView(
                                                                          imagePath: ImageConstant
                                                                              .imgArrowLeft,
                                                                          height: 18
                                                                              .v,
                                                                          width: 19
                                                                              .h,
                                                                          alignment: Alignment
                                                                              .centerRight,
                                                                          margin:
                                                                              EdgeInsets.only(right: 7.h),
                                                                          onTap: () {
                                                                            onTapImgArrowLeft(context);
                                                                          })
                                                                    ])),
                                                            Padding(
                                                                padding:
                                                                    EdgeInsets.only(
                                                                        left: 12
                                                                            .h),
                                                                child: Text(
                                                                    "lbl_quiz"
                                                                        .tr,
                                                                    style: TextStyle(
                                                                        color: appTheme
                                                                            .red900,
                                                                        fontSize: 32
                                                                            .fSize,
                                                                        fontFamily:
                                                                            'Nunito Sans',
                                                                        fontWeight:
                                                                            FontWeight.w700)))
                                                          ]))),
                                              SizedBox(height: 40.v),
                                              _buildWhatIsTheAmplitudeSection(
                                                  context),
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
                                                        margin: EdgeInsets.only(
                                                            left: 28.h),
                                                        padding: EdgeInsets
                                                            .symmetric(
                                                                horizontal:
                                                                    17.h,
                                                                vertical: 6.v),
                                                        decoration: AppDecoration
                                                            .outlineIndigo
                                                            .copyWith(
                                                                borderRadius:
                                                                    BorderRadiusStyle
                                                                        .circleBorder20),
                                                        child: Row(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Padding(
                                                                  padding: EdgeInsets.only(
                                                                      bottom:
                                                                          5.v),
                                                                  child: Text(
                                                                      "lbl_b"
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
                                                              Container(
                                                                  height: 22.v,
                                                                  width: 12.h,
                                                                  margin: EdgeInsets.only(
                                                                      left:
                                                                          21.h,
                                                                      bottom:
                                                                          5.v),
                                                                  child: Stack(
                                                                      alignment:
                                                                          Alignment
                                                                              .center,
                                                                      children: [
                                                                        Align(
                                                                            alignment:
                                                                                Alignment.center,
                                                                            child: Text("lbl_3".tr, style: TextStyle(color: theme.colorScheme.primary.withOpacity(1), fontSize: 18.fSize, fontFamily: 'Inter', fontWeight: FontWeight.w600))),
                                                                        Align(
                                                                            alignment:
                                                                                Alignment.center,
                                                                            child: Text("lbl_3".tr, style: TextStyle(color: theme.colorScheme.primary.withOpacity(1), fontSize: 18.fSize, fontFamily: 'Inter', fontWeight: FontWeight.w600)))
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
                                                            EdgeInsets.only(
                                                                bottom: 10.v),
                                                        child: _buildCSection(
                                                            context,
                                                            textC: "lbl_c".tr,
                                                            textSix:
                                                                "lbl_6".tr)),
                                                    Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                left: 28.h),
                                                        child: _buildDSection(
                                                            context,
                                                            dynamicText:
                                                                "lbl_d".tr,
                                                            dynamicText1:
                                                                "lbl_2".tr,
                                                            dynamicText2:
                                                                "lbl_3".tr))
                                                  ]),
                                              SizedBox(height: 15.v),
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 124.h,
                                                      right: 130.h),
                                                  child: _buildESection(context,
                                                      textE: "lbl_e".tr,
                                                      textOne: "lbl_1".tr,
                                                      textThree: "lbl_3".tr)),
                                              SizedBox(height: 46.v),
                                              _buildWhatIsTheAmplitudeSection1(
                                                  context),
                                              SizedBox(height: 28.v),
                                              Align(
                                                  alignment:
                                                      Alignment.centerRight,
                                                  child: Padding(
                                                      padding: EdgeInsets.only(
                                                          right: 41.h),
                                                      child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .end,
                                                          children: [
                                                            _buildCSection(
                                                                context,
                                                                textC:
                                                                    "lbl_a".tr,
                                                                textSix:
                                                                    "lbl_1".tr),
                                                            Padding(
                                                                padding: EdgeInsets
                                                                    .only(
                                                                        left: 28
                                                                            .h),
                                                                child: _buildCSection(
                                                                    context,
                                                                    textC:
                                                                        "lbl_b"
                                                                            .tr,
                                                                    textSix:
                                                                        "lbl_3"
                                                                            .tr))
                                                          ]))),
                                              SizedBox(height: 19.v),
                                              _buildPrevious(context),
                                              SizedBox(height: 13.v),
                                              Align(
                                                  alignment:
                                                      Alignment.centerRight,
                                                  child: Container(
                                                      height: 59.v,
                                                      width: 201.h,
                                                      margin: EdgeInsets.only(
                                                          right: 44.h),
                                                      child: Stack(
                                                          alignment:
                                                              Alignment.topLeft,
                                                          children: [
                                                            Align(
                                                                alignment: Alignment
                                                                    .bottomRight,
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
                                                                            FontWeight.w400))),
                                                            Padding(
                                                                padding: EdgeInsets
                                                                    .only(
                                                                        right: 77
                                                                            .h,
                                                                        bottom: 11
                                                                            .v),
                                                                child: _buildESection(
                                                                    context,
                                                                    textE:
                                                                        "lbl_e"
                                                                            .tr,
                                                                    textOne:
                                                                        "lbl_1"
                                                                            .tr,
                                                                    textThree:
                                                                        "lbl_3"
                                                                            .tr))
                                                          ])))
                                            ])),
                                            Padding(
                                                padding:
                                                    EdgeInsets.only(left: 20.h),
                                                child: SizedBox(
                                                    height: 754.v,
                                                    child: VerticalDivider(
                                                        width: 5.h,
                                                        thickness: 5.v,
                                                        indent: 380.h,
                                                        endIndent: 258.h)))
                                          ])),
                                      SizedBox(height: 24.v)
                                    ]))),
                        CustomImageView(
                            imagePath: ImageConstant.imgComponent8,
                            height: 67.v,
                            width: 69.h,
                            alignment: Alignment.bottomLeft,
                            margin: EdgeInsets.only(bottom: 379.v)),
                        CustomImageView(
                            imagePath: ImageConstant.imgCalculator,
                            height: 111.v,
                            width: 69.h,
                            alignment: Alignment.topRight,
                            margin: EdgeInsets.only(top: 107.v))
                      ])),
                  SizedBox(height: 165.v),
                  CustomImageView(
                      imagePath: ImageConstant.imgRectangle115,
                      height: 99.v,
                      width: 418.h)
                ]))),
            bottomNavigationBar: _buildBottomBarSection(context)));
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
  Widget _buildWhatIsTheAmplitudeSection1(BuildContext context) {
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
  Widget _buildPrevious(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 12.h, right: 5.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          SizedBox(
              height: 54.v,
              width: 174.h,
              child: Stack(alignment: Alignment.bottomLeft, children: [
                Padding(
                    padding: EdgeInsets.only(left: 50.h, bottom: 13.v),
                    child: _buildCSection(context,
                        textC: "lbl_c".tr, textSix: "lbl_6".tr)),
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
                    },
                    alignment: Alignment.bottomLeft)
              ])),
          SizedBox(
              height: 54.v,
              width: 159.h,
              child: Stack(alignment: Alignment.bottomRight, children: [
                Padding(
                    padding: EdgeInsets.only(right: 35.h, bottom: 2.v),
                    child: _buildDSection(context,
                        dynamicText: "lbl_d".tr,
                        dynamicText1: "lbl_2".tr,
                        dynamicText2: "lbl_3".tr)),
                CustomElevatedButton(
                    width: 107.h,
                    text: "lbl_finish".tr,
                    onPressed: () {
                      onTapFinish(context);
                    },
                    alignment: Alignment.bottomRight)
              ]))
        ]));
  }

  /// Section Widget
  Widget _buildBottomBarSection(BuildContext context) {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {});
  }

  /// Common widget
  Widget _buildCSection(
    BuildContext context, {
    required String textC,
    required String textSix,
  }) {
    return Container(
        width: 123.h,
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
          Padding(
              padding: EdgeInsets.only(left: 19.h),
              child: Text(textSix,
                  style: TextStyle(
                      color: theme.colorScheme.primary.withOpacity(1),
                      fontSize: 18.fSize,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w600)))
        ]));
  }

  /// Common widget
  Widget _buildDSection(
    BuildContext context, {
    required String dynamicText,
    required String dynamicText1,
    required String dynamicText2,
  }) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 17.h, vertical: 1.v),
        decoration: AppDecoration.outlineIndigo
            .copyWith(borderRadius: BorderRadiusStyle.circleBorder20),
        child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
              padding: EdgeInsets.only(top: 6.v, bottom: 20.v),
              child: Text(dynamicText,
                  style: TextStyle(
                      color: theme.colorScheme.primary.withOpacity(1),
                      fontSize: 18.fSize,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w600))),
          Padding(
              padding: EdgeInsets.only(left: 11.h, bottom: 4.v),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                        padding: EdgeInsets.only(left: 9.h),
                        child: Text(dynamicText1,
                            style: TextStyle(
                                color: theme.colorScheme.primary.withOpacity(1),
                                fontSize: 18.fSize,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w600))),
                    SizedBox(
                        height: 22.v,
                        width: 31.h,
                        child: Stack(alignment: Alignment.topCenter, children: [
                          Align(
                              alignment: Alignment.center,
                              child: Text(dynamicText2,
                                  style: TextStyle(
                                      color: theme.colorScheme.primary
                                          .withOpacity(1),
                                      fontSize: 18.fSize,
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w600))),
                          Align(
                              alignment: Alignment.topCenter,
                              child: Padding(
                                  padding: EdgeInsets.only(top: 1.v),
                                  child: SizedBox(
                                      width: 31.h,
                                      child: Divider(
                                          color: theme.colorScheme.primary
                                              .withOpacity(1)))))
                        ]))
                  ]))
        ]));
  }

  /// Common widget
  Widget _buildESection(
    BuildContext context, {
    required String textE,
    required String textOne,
    required String textThree,
  }) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 17.h),
        decoration: AppDecoration.outlineIndigo
            .copyWith(borderRadius: BorderRadiusStyle.circleBorder20),
        child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
              padding: EdgeInsets.only(top: 9.v, bottom: 15.v),
              child: Text(textE,
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
                          Text(textOne,
                              style: TextStyle(
                                  color:
                                      theme.colorScheme.primary.withOpacity(1),
                                  fontSize: 18.fSize,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w600)),
                          Text(textThree,
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

  /// Navigates to the videoPageTwoScreen when the action is triggered.
  onTapPrevious(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.videoPageTwoScreen,
    );
  }

  onTapFinish(BuildContext context) {
    // TODO: implement Actions
  }
}
