import 'models/my_courses_model.dart';
import 'package:flutter/material.dart';
import 'package:math_courses/core/app_export.dart';
import 'package:math_courses/widgets/custom_bottom_bar.dart';
import 'package:math_courses/widgets/custom_elevated_button.dart';
import 'provider/my_courses_provider.dart';

class MyCoursesScreen extends StatefulWidget {
  const MyCoursesScreen({Key? key}) : super(key: key);

  @override
  MyCoursesScreenState createState() => MyCoursesScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => MyCoursesProvider(), child: MyCoursesScreen());
  }
}

// ignore_for_file: must_be_immutable
class MyCoursesScreenState extends State<MyCoursesScreen> {
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
                                    horizontal: 24.h, vertical: 33.v),
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                            ImageConstant.imgGroup164),
                                        fit: BoxFit.cover)),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      _buildWelcomeSection(context),
                                      SizedBox(height: 35.v),
                                      Align(
                                          alignment: Alignment.centerLeft,
                                          child: Padding(
                                              padding:
                                                  EdgeInsets.only(left: 26.h),
                                              child: Text("lbl_my_courses".tr,
                                                  style: TextStyle(
                                                      color: appTheme.red900,
                                                      fontSize: 32.fSize,
                                                      fontFamily: 'Nunito Sans',
                                                      fontWeight:
                                                          FontWeight.w700)))),
                                      SizedBox(height: 38.v),
                                      _buildAlgebraCounterSection(context),
                                      SizedBox(height: 25.v),
                                      _buildAlgebraCounterSection2(context),
                                      SizedBox(height: 28.v),
                                      _buildStartSection(context),
                                      SizedBox(height: 28.v),
                                      _buildStartSection2(context)
                                    ]))),
                        CustomImageView(
                            imagePath: ImageConstant.imgUserRed90003,
                            height: 93.v,
                            width: 77.h,
                            alignment: Alignment.topRight,
                            margin: EdgeInsets.only(top: 123.v))
                      ])),
                  SizedBox(height: 165.v),
                  CustomImageView(
                      imagePath: ImageConstant.imgRectangle1110,
                      height: 99.v,
                      width: 418.h)
                ]))),
            bottomNavigationBar: _buildBottomBarSection(context)));
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
  Widget _buildAlgebraCounterSection(BuildContext context) {
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
                  padding: EdgeInsets.only(left: 6.h, right: 14.h),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                            padding: EdgeInsets.only(top: 9.v),
                            child: Text("lbl_algebra_101".tr,
                                style: TextStyle(
                                    color: appTheme.blueGray90001,
                                    fontSize: 26.fSize,
                                    fontFamily: 'Nunito Sans',
                                    fontWeight: FontWeight.w600))),
                        Container(
                            height: 40.v,
                            width: 44.h,
                            margin: EdgeInsets.only(bottom: 5.v),
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
              SizedBox(height: 5.v),
              Padding(
                  padding: EdgeInsets.only(left: 9.h),
                  child: _buildHereYouWillBeSection(context,
                      text: "msg_here_you_will_be2".tr,
                      continueVar: "lbl_continue".tr, onTapContinue: () {
                    onTapContinue(context);
                  })),
              Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                      padding: EdgeInsets.only(right: 22.h),
                      child: Text("lbl_8_12_sessions".tr,
                          style: TextStyle(
                              color: appTheme.blueGray90001.withOpacity(0.6),
                              fontSize: 12.fSize,
                              fontFamily: 'Nunito Sans',
                              fontWeight: FontWeight.w400))))
            ]));
  }

  /// Section Widget
  Widget _buildAlgebraCounterSection2(BuildContext context) {
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
                  padding: EdgeInsets.only(left: 6.h, right: 14.h),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                            padding: EdgeInsets.only(top: 9.v),
                            child: Text("lbl_algebra_101".tr,
                                style: TextStyle(
                                    color: appTheme.blueGray90001,
                                    fontSize: 26.fSize,
                                    fontFamily: 'Nunito Sans',
                                    fontWeight: FontWeight.w600))),
                        Container(
                            height: 40.v,
                            width: 44.h,
                            margin: EdgeInsets.only(bottom: 5.v),
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
                                  child: Text("lbl_40".tr,
                                      style: TextStyle(
                                          color: appTheme.blueGray90001
                                              .withOpacity(0.8),
                                          fontSize: 16.fSize,
                                          fontFamily: 'Nunito Sans',
                                          fontWeight: FontWeight.w600)))
                            ]))
                      ])),
              SizedBox(height: 5.v),
              Padding(
                  padding: EdgeInsets.only(left: 9.h),
                  child: _buildHereYouWillBeSection(context,
                      text: "msg_here_you_will_be2".tr,
                      continueVar: "lbl_continue".tr)),
              Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                      padding: EdgeInsets.only(right: 22.h),
                      child: Text("lbl_5_12_sessions".tr,
                          style: TextStyle(
                              color: appTheme.blueGray90001.withOpacity(0.6),
                              fontSize: 12.fSize,
                              fontFamily: 'Nunito Sans',
                              fontWeight: FontWeight.w400))))
            ]));
  }

  /// Section Widget
  Widget _buildStartSection(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(right: 3.h),
        padding: EdgeInsets.symmetric(vertical: 30.v),
        decoration: AppDecoration.outlinePrimary1
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder50),
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          Padding(
              padding: EdgeInsets.only(top: 4.v, bottom: 1.v),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("lbl_algebra_101".tr,
                        style: TextStyle(
                            color: appTheme.blueGray90001,
                            fontSize: 26.fSize,
                            fontFamily: 'Nunito Sans',
                            fontWeight: FontWeight.w600)),
                    SizedBox(height: 5.v),
                    Container(
                        width: 177.h,
                        margin: EdgeInsets.only(left: 3.h),
                        child: Text("msg_here_you_will_be2".tr,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                color: appTheme.blueGray90001.withOpacity(0.6),
                                fontSize: 16.fSize,
                                fontFamily: 'Nunito Sans',
                                fontWeight: FontWeight.w300)))
                  ])),
          Padding(
              padding: EdgeInsets.only(top: 7.v),
              child: Column(children: [
                CustomElevatedButton(
                    height: 28.v,
                    width: 65.h,
                    text: "lbl_start".tr,
                    buttonStyle: CustomButtonStyles.outlinePrimaryTL141,
                    alignment: Alignment.centerRight),
                SizedBox(height: 40.v),
                Text("lbl_0_12_sessions".tr,
                    style: TextStyle(
                        color: appTheme.blueGray90001.withOpacity(0.6),
                        fontSize: 12.fSize,
                        fontFamily: 'Nunito Sans',
                        fontWeight: FontWeight.w400))
              ]))
        ]));
  }

  /// Section Widget
  Widget _buildStartSection2(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(right: 3.h),
        padding: EdgeInsets.symmetric(horizontal: 30.h, vertical: 25.v),
        decoration: AppDecoration.outlinePrimary1
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder50),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(height: 9.v),
              Padding(
                  padding: EdgeInsets.only(right: 4.h),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("lbl_algebra_101".tr,
                            style: TextStyle(
                                color: appTheme.blueGray90001,
                                fontSize: 26.fSize,
                                fontFamily: 'Nunito Sans',
                                fontWeight: FontWeight.w600)),
                        CustomElevatedButton(
                            height: 28.v,
                            width: 65.h,
                            text: "lbl_start".tr,
                            margin: EdgeInsets.only(top: 2.v, bottom: 5.v),
                            buttonStyle: CustomButtonStyles.outlinePrimaryTL141)
                      ])),
              SizedBox(height: 5.v),
              Padding(
                  padding: EdgeInsets.only(left: 3.h, right: 16.h),
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                            width: 177.h,
                            margin: EdgeInsets.only(bottom: 6.v),
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

  /// Section Widget
  Widget _buildBottomBarSection(BuildContext context) {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {});
  }

  /// Common widget
  Widget _buildHereYouWillBeSection(
    BuildContext context, {
    required String text,
    required String continueVar,
    Function? onTapContinue,
  }) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
              width: 177.h,
              child: Text(text,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                      color: appTheme.blueGray90001.withOpacity(0.6),
                      fontSize: 16.fSize,
                      fontFamily: 'Nunito Sans',
                      fontWeight: FontWeight.w300))),
          GestureDetector(
              onTap: () {
                onTapContinue!.call();
              },
              child: Container(
                  width: 107.h,
                  margin: EdgeInsets.only(left: 37.h, top: 6.v, bottom: 10.v),
                  padding:
                      EdgeInsets.symmetric(horizontal: 10.h, vertical: 2.v),
                  decoration: AppDecoration.outlinePrimary2
                      .copyWith(borderRadius: BorderRadiusStyle.circleBorder14),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                            padding: EdgeInsets.only(bottom: 1.v),
                            child: Text(continueVar,
                                style: TextStyle(
                                    color: appTheme.yellow800,
                                    fontSize: 16.fSize,
                                    fontFamily: 'Nunito Sans',
                                    fontWeight: FontWeight.w700))),
                        CustomImageView(
                            imagePath: ImageConstant.imgArrowRight,
                            height: 15.v,
                            width: 16.h,
                            margin: EdgeInsets.only(top: 4.v, bottom: 3.v))
                      ])))
        ]);
  }

  onTapContinue(BuildContext context) {
    // TODO: implement Actions
  }
}
