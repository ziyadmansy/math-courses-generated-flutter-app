import 'models/invoice_payment_method_model.dart';
import 'package:flutter/material.dart';
import 'package:math_courses/core/app_export.dart';
import 'package:math_courses/widgets/custom_bottom_bar.dart';
import 'package:math_courses/widgets/custom_elevated_button.dart';
import 'provider/invoice_payment_method_provider.dart';

class InvoicePaymentMethodScreen extends StatefulWidget {
  const InvoicePaymentMethodScreen({Key? key}) : super(key: key);

  @override
  InvoicePaymentMethodScreenState createState() =>
      InvoicePaymentMethodScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => InvoicePaymentMethodProvider(),
        child: InvoicePaymentMethodScreen());
  }
}

// ignore_for_file: must_be_immutable
class InvoicePaymentMethodScreenState
    extends State<InvoicePaymentMethodScreen> {
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
                  Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: 24.h, vertical: 22.v),
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
                                    margin: EdgeInsets.only(right: 8.h),
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
                            SizedBox(height: 34.v),
                            Padding(
                                padding:
                                    EdgeInsets.only(left: 55.h, right: 67.h),
                                child: Row(children: [
                                  Container(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 8.h, vertical: 7.v),
                                      decoration: AppDecoration.fillGray5007f
                                          .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .circleBorder14),
                                      child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            SizedBox(height: 1.v),
                                            Container(
                                                height: 15.adaptSize,
                                                width: 15.adaptSize,
                                                decoration: BoxDecoration(
                                                    color: appTheme.gray5001,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            7.h)))
                                          ])),
                                  Spacer(flex: 52),
                                  Container(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 8.h, vertical: 7.v),
                                      decoration: AppDecoration.fillGray6007f01
                                          .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .circleBorder14),
                                      child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            SizedBox(height: 1.v),
                                            Container(
                                                height: 15.adaptSize,
                                                width: 15.adaptSize,
                                                decoration: BoxDecoration(
                                                    color: theme
                                                        .colorScheme.onPrimary,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            7.h)))
                                          ])),
                                  Spacer(flex: 47),
                                  Container(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 8.h, vertical: 7.v),
                                      decoration: AppDecoration.fillGray5007f
                                          .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .circleBorder14),
                                      child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            SizedBox(height: 1.v),
                                            Container(
                                                height: 15.adaptSize,
                                                width: 15.adaptSize,
                                                decoration: BoxDecoration(
                                                    color: appTheme.gray5001,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            7.h)))
                                          ]))
                                ])),
                            SizedBox(height: 49.v),
                            Padding(
                                padding: EdgeInsets.only(left: 4.h),
                                child: Text("lbl_payment_method".tr,
                                    style: TextStyle(
                                        color: theme.colorScheme.primary
                                            .withOpacity(1),
                                        fontSize: 32.fSize,
                                        fontFamily: 'Nunito Sans',
                                        fontWeight: FontWeight.w700))),
                            SizedBox(height: 42.v),
                            Container(
                                margin:
                                    EdgeInsets.only(left: 16.h, right: 53.h),
                                padding: EdgeInsets.symmetric(
                                    horizontal: 19.h, vertical: 13.v),
                                decoration: AppDecoration.fillGray.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.circleBorder25),
                                child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Container(
                                          padding: EdgeInsets.all(5.h),
                                          decoration: AppDecoration
                                              .outlinePrimary9
                                              .copyWith(
                                                  borderRadius:
                                                      BorderRadiusStyle
                                                          .circleBorder14),
                                          child: Container(
                                              height: 15.adaptSize,
                                              width: 15.adaptSize,
                                              decoration: BoxDecoration(
                                                  color: theme
                                                      .colorScheme.onPrimary,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          7.h)))),
                                      Spacer(flex: 57),
                                      CustomImageView(
                                          imagePath:
                                              ImageConstant.imgCreditCardFil,
                                          height: 29.v,
                                          width: 37.h),
                                      Spacer(flex: 42),
                                      Padding(
                                          padding: EdgeInsets.only(
                                              top: 6.v,
                                              right: 18.h,
                                              bottom: 2.v),
                                          child: Text(
                                              "msg_credit_debit_card".tr,
                                              style: TextStyle(
                                                  color: theme
                                                      .colorScheme.primary
                                                      .withOpacity(1),
                                                  fontSize: 14.fSize,
                                                  fontFamily: 'Nunito Sans',
                                                  fontWeight: FontWeight.w700)))
                                    ])),
                            SizedBox(height: 27.v),
                            Container(
                                margin:
                                    EdgeInsets.only(left: 16.h, right: 53.h),
                                padding: EdgeInsets.symmetric(
                                    horizontal: 20.h, vertical: 11.v),
                                decoration: AppDecoration.fillGray.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.circleBorder25),
                                child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Container(
                                          height: 25.adaptSize,
                                          width: 25.adaptSize,
                                          margin: EdgeInsets.symmetric(
                                              vertical: 4.v),
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(12.h),
                                              border: Border.all(
                                                  color: theme
                                                      .colorScheme.primary
                                                      .withOpacity(1),
                                                  width: 1.h,
                                                  strokeAlign:
                                                      strokeAlignOutside))),
                                      CustomImageView(
                                          imagePath:
                                              ImageConstant.imgOrangeMoneyLogo,
                                          height: 32.v,
                                          width: 73.h,
                                          margin: EdgeInsets.only(
                                              left: 28.h, top: 1.v)),
                                      Spacer(),
                                      Padding(
                                          padding: EdgeInsets.only(
                                              top: 7.v,
                                              right: 16.h,
                                              bottom: 5.v),
                                          child: Text("lbl_orange_cash".tr,
                                              style: TextStyle(
                                                  color: theme
                                                      .colorScheme.primary
                                                      .withOpacity(1),
                                                  fontSize: 14.fSize,
                                                  fontFamily: 'Nunito Sans',
                                                  fontWeight: FontWeight.w700)))
                                    ])),
                            SizedBox(height: 22.v),
                            Container(
                                margin:
                                    EdgeInsets.only(left: 16.h, right: 53.h),
                                padding: EdgeInsets.symmetric(
                                    horizontal: 19.h, vertical: 14.v),
                                decoration: AppDecoration.fillGray.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.circleBorder25),
                                child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Container(
                                          height: 25.adaptSize,
                                          width: 25.adaptSize,
                                          margin: EdgeInsets.only(top: 1.v),
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(12.h),
                                              border: Border.all(
                                                  color: theme
                                                      .colorScheme.primary
                                                      .withOpacity(1),
                                                  width: 1.h,
                                                  strokeAlign:
                                                      strokeAlignOutside))),
                                      Spacer(flex: 56),
                                      CustomImageView(
                                          imagePath:
                                              ImageConstant.imgE8a091f3f822d88,
                                          height: 26.v,
                                          width: 55.h,
                                          margin: EdgeInsets.only(top: 1.v)),
                                      Spacer(flex: 43),
                                      Padding(
                                          padding: EdgeInsets.only(
                                              top: 4.v,
                                              right: 23.h,
                                              bottom: 2.v),
                                          child: Text("lbl_vodafone_cash".tr,
                                              style: TextStyle(
                                                  color: theme
                                                      .colorScheme.primary
                                                      .withOpacity(1),
                                                  fontSize: 14.fSize,
                                                  fontFamily: 'Nunito Sans',
                                                  fontWeight: FontWeight.w700)))
                                    ])),
                            SizedBox(height: 27.v),
                            Container(
                                margin:
                                    EdgeInsets.only(left: 16.h, right: 53.h),
                                padding: EdgeInsets.symmetric(
                                    horizontal: 19.h, vertical: 7.v),
                                decoration: AppDecoration.fillGray.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.circleBorder25),
                                child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Container(
                                          height: 25.adaptSize,
                                          width: 25.adaptSize,
                                          margin: EdgeInsets.symmetric(
                                              vertical: 8.v),
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(12.h),
                                              border: Border.all(
                                                  color: theme
                                                      .colorScheme.primary
                                                      .withOpacity(1),
                                                  width: 1.h,
                                                  strokeAlign:
                                                      strokeAlignOutside))),
                                      Spacer(flex: 55),
                                      CustomImageView(
                                          imagePath:
                                              ImageConstant.imgPaymentsFill1,
                                          height: 37.v,
                                          width: 42.h,
                                          margin: EdgeInsets.only(top: 4.v)),
                                      Spacer(flex: 44),
                                      Padding(
                                          padding: EdgeInsets.only(
                                              top: 12.v,
                                              right: 23.h,
                                              bottom: 8.v),
                                          child: Text("lbl_cash_in_person".tr,
                                              style: TextStyle(
                                                  color: theme
                                                      .colorScheme.primary
                                                      .withOpacity(1),
                                                  fontSize: 14.fSize,
                                                  fontFamily: 'Nunito Sans',
                                                  fontWeight: FontWeight.w700)))
                                    ])),
                            SizedBox(height: 202.v),
                            _buildPrevious(context),
                            SizedBox(height: 202.v)
                          ])),
                  SizedBox(height: 165.v),
                  CustomImageView(
                      imagePath: ImageConstant.imgRectangle1122,
                      height: 99.v,
                      width: 418.h)
                ]))),
            bottomNavigationBar: _buildBottomBar(context)));
  }

  /// Section Widget
  Widget _buildPrevious(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 7.h),
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
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {});
  }

  /// Navigates to the invoiceTotalScreen when the action is triggered.
  onTapPrevious(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.invoiceTotalScreen,
    );
  }

  /// Navigates to the invoiceCardScreen when the action is triggered.
  onTapNext(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.invoiceCardScreen,
    );
  }
}
