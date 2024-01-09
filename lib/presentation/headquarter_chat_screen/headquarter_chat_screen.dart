import 'models/headquarter_chat_model.dart';
import 'package:flutter/material.dart';
import 'package:math_courses/core/app_export.dart';
import 'package:math_courses/widgets/custom_text_form_field.dart';
import 'provider/headquarter_chat_provider.dart';

class HeadquarterChatScreen extends StatefulWidget {
  const HeadquarterChatScreen({Key? key}) : super(key: key);

  @override
  HeadquarterChatScreenState createState() => HeadquarterChatScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => HeadquarterChatProvider(),
        child: HeadquarterChatScreen());
  }
}

class HeadquarterChatScreenState extends State<HeadquarterChatScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: SizedBox(
                width: double.maxFinite,
                child: SingleChildScrollView(
                    child: Column(children: [
                  Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: 16.h, vertical: 37.v),
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(ImageConstant.imgGroup164),
                              fit: BoxFit.cover)),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 13.v),
                            _buildHeaderStack(context),
                            SizedBox(height: 26.v),
                            Align(
                                alignment: Alignment.center,
                                child: Text("msg_tue_22_10_2023".tr,
                                    style: TextStyle(
                                        color: theme.colorScheme.primary
                                            .withOpacity(0.6),
                                        fontSize: 16.fSize,
                                        fontFamily: 'Nunito Sans',
                                        fontWeight: FontWeight.w600))),
                            SizedBox(height: 3.v),
                            _buildRespondingToTheColumn(context),
                            SizedBox(height: 26.v),
                            Align(
                                alignment: Alignment.center,
                                child: Text("msg_tue_22_10_2023".tr,
                                    style: TextStyle(
                                        color: theme.colorScheme.primary
                                            .withOpacity(0.6),
                                        fontSize: 16.fSize,
                                        fontFamily: 'Nunito Sans',
                                        fontWeight: FontWeight.w600))),
                            SizedBox(height: 9.v),
                            Padding(
                                padding:
                                    EdgeInsets.only(left: 1.h, right: 18.h),
                                child: Selector<HeadquarterChatProvider,
                                        TextEditingController?>(
                                    selector: (context, provider) =>
                                        provider.responseController,
                                    builder:
                                        (context, responseController, child) {
                                      return CustomTextFormField(
                                          controller: responseController,
                                          hintText: "msg_responding_to_the".tr,
                                          textInputAction: TextInputAction.done,
                                          maxLines: 6,
                                          borderDecoration:
                                              TextFormFieldStyleHelper
                                                  .outlinePrimary,
                                          fillColor: appTheme.gray50);
                                    })),
                            SizedBox(height: 29.v),
                            Padding(
                                padding: EdgeInsets.only(left: 78.h),
                                child: Text("msg_tue_22_10_2023".tr,
                                    style: TextStyle(
                                        color: theme.colorScheme.primary
                                            .withOpacity(0.6),
                                        fontSize: 16.fSize,
                                        fontFamily: 'Nunito Sans',
                                        fontWeight: FontWeight.w600))),
                            SizedBox(height: 8.v),
                            _buildRespondingToTheColumn1(context),
                            SizedBox(height: 138.v),
                            _buildSendAMessageRow(context)
                          ])),
                  SizedBox(height: 165.v),
                  CustomImageView(
                      imagePath: ImageConstant.imgRectangle1118,
                      height: 99.v,
                      width: 418.h)
                ])))));
  }

  /// Section Widget
  Widget _buildHeaderStack(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 6.h, right: 18.h),
        child: Row(children: [
          SizedBox(
              height: 30.v,
              width: 35.h,
              child: Stack(alignment: Alignment.centerRight, children: [
                Align(
                    alignment: Alignment.center,
                    child: Container(
                        height: 30.v,
                        width: 35.h,
                        decoration: BoxDecoration(
                            color: appTheme.blueGray10001.withOpacity(0.5),
                            borderRadius: BorderRadius.circular(17.h)))),
                CustomImageView(
                    imagePath: ImageConstant.imgArrowLeft,
                    height: 18.v,
                    width: 19.h,
                    alignment: Alignment.centerRight,
                    margin: EdgeInsets.only(right: 7.h),
                    onTap: () {
                      onTapImgArrowLeft(context);
                    })
              ])),
          Spacer(flex: 51),
          Text("lbl_head_quarter".tr,
              style: TextStyle(
                  color: theme.colorScheme.primary.withOpacity(1),
                  fontSize: 20.fSize,
                  fontFamily: 'Nunito Sans',
                  fontWeight: FontWeight.w700)),
          Spacer(flex: 48),
          SizedBox(
              height: 30.v,
              width: 35.h,
              child: Stack(alignment: Alignment.centerRight, children: [
                Align(
                    alignment: Alignment.center,
                    child: Container(
                        height: 30.v,
                        width: 35.h,
                        decoration: BoxDecoration(
                            color: appTheme.blueGray10001.withOpacity(0.5),
                            borderRadius: BorderRadius.circular(17.h)))),
                Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                        padding: EdgeInsets.only(right: 6.h),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Container(
                                  height: 5.adaptSize,
                                  width: 5.adaptSize,
                                  decoration: BoxDecoration(
                                      color: appTheme.blueGray90001
                                          .withOpacity(0.8),
                                      borderRadius:
                                          BorderRadius.circular(2.h))),
                              Container(
                                  height: 5.adaptSize,
                                  width: 5.adaptSize,
                                  margin: EdgeInsets.only(left: 3.h),
                                  decoration: BoxDecoration(
                                      color: appTheme.blueGray90001
                                          .withOpacity(0.8),
                                      borderRadius:
                                          BorderRadius.circular(2.h))),
                              Container(
                                  height: 5.adaptSize,
                                  width: 5.adaptSize,
                                  margin: EdgeInsets.only(left: 3.h),
                                  decoration: BoxDecoration(
                                      color: appTheme.blueGray90001
                                          .withOpacity(0.8),
                                      borderRadius: BorderRadius.circular(2.h)))
                            ])))
              ]))
        ]));
  }

  /// Section Widget
  Widget _buildRespondingToTheColumn(BuildContext context) {
    return Align(
        alignment: Alignment.centerRight,
        child: Container(
            width: 367.h,
            margin: EdgeInsets.only(left: 31.h),
            padding: EdgeInsets.symmetric(horizontal: 35.h, vertical: 29.v),
            decoration: AppDecoration.outlinePrimary7
                .copyWith(borderRadius: BorderRadiusStyle.roundedBorder40),
            child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 22.v),
                  Container(
                      width: 243.h,
                      margin: EdgeInsets.only(right: 53.h),
                      child: Text("msg_responding_to_the".tr,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              color: theme.colorScheme.onError,
                              fontSize: 20.fSize,
                              fontFamily: 'Nunito Sans',
                              fontWeight: FontWeight.w600)))
                ])));
  }

  /// Section Widget
  Widget _buildRespondingToTheColumn1(BuildContext context) {
    return Align(
        alignment: Alignment.centerRight,
        child: Container(
            width: 364.h,
            margin: EdgeInsets.only(left: 31.h, right: 3.h),
            padding: EdgeInsets.symmetric(horizontal: 19.h, vertical: 22.v),
            decoration: AppDecoration.outlinePrimary7
                .copyWith(borderRadius: BorderRadiusStyle.roundedBorder40),
            child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 12.v),
                  Container(
                      width: 243.h,
                      margin: EdgeInsets.only(right: 82.h),
                      child: Text("msg_responding_to_the".tr,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              color: theme.colorScheme.onError,
                              fontSize: 20.fSize,
                              fontFamily: 'Nunito Sans',
                              fontWeight: FontWeight.w600)))
                ])));
  }

  /// Section Widget
  Widget _buildSendAMessageRow(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 9.h),
        padding: EdgeInsets.symmetric(horizontal: 9.h, vertical: 4.v),
        decoration: AppDecoration.outlineGray
            .copyWith(borderRadius: BorderRadiusStyle.circleBorder25),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                  padding: EdgeInsets.only(left: 30.h, top: 7.v, bottom: 12.v),
                  child: Text("lbl_send_a_message".tr,
                      style: TextStyle(
                          color: theme.colorScheme.primary.withOpacity(0.8),
                          fontSize: 16.fSize,
                          fontFamily: 'Nunito Sans',
                          fontWeight: FontWeight.w600))),
              Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 18.h, vertical: 8.v),
                  decoration: AppDecoration.fillRed
                      .copyWith(borderRadius: BorderRadiusStyle.circleBorder20),
                  child: SizedBox(
                      height: 24.v,
                      child: VerticalDivider(
                          width: 2.h,
                          thickness: 2.v,
                          color: theme.colorScheme.onError)))
            ]));
  }

  /// Navigates to the previous screen.
  onTapImgArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
