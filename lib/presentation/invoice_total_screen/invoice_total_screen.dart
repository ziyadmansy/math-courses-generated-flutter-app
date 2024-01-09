import 'models/invoice_total_model.dart';
import 'package:flutter/material.dart';
import 'package:math_courses/core/app_export.dart';
import 'package:math_courses/widgets/custom_bottom_bar.dart';
import 'package:math_courses/widgets/custom_elevated_button.dart';
import 'provider/invoice_total_provider.dart';

class InvoiceTotalScreen extends StatefulWidget {
  const InvoiceTotalScreen({Key? key}) : super(key: key);

  @override
  InvoiceTotalScreenState createState() => InvoiceTotalScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => InvoiceTotalProvider(),
        child: InvoiceTotalScreen());
  }
}

// ignore_for_file: must_be_immutable
class InvoiceTotalScreenState extends State<InvoiceTotalScreen> {
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
                          horizontal: 32.h, vertical: 22.v),
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(ImageConstant.imgGroup164),
                              fit: BoxFit.cover)),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            SizedBox(
                                height: 30.v,
                                width: 35.h,
                                child: Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      Align(
                                          alignment: Alignment.center,
                                          child: Container(
                                              height: 30.v,
                                              width: 35.h,
                                              decoration: BoxDecoration(
                                                  color: appTheme.blueGray10001
                                                      .withOpacity(0.5),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          17.h)))),
                                      CustomImageView(
                                          imagePath:
                                              ImageConstant.imgCloseFill0Wgh,
                                          height: 25.adaptSize,
                                          width: 25.adaptSize,
                                          alignment: Alignment.center)
                                    ])),
                            SizedBox(height: 33.v),
                            Align(
                                alignment: Alignment.center,
                                child: Padding(
                                    padding: EdgeInsets.only(
                                        left: 48.h, right: 58.h),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Container(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 8.h,
                                                  vertical: 7.v),
                                              decoration: AppDecoration
                                                  .fillGrayF
                                                  .copyWith(
                                                      borderRadius:
                                                          BorderRadiusStyle
                                                              .circleBorder14),
                                              child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    SizedBox(height: 1.v),
                                                    Container(
                                                        height: 15.adaptSize,
                                                        width: 15.adaptSize,
                                                        decoration: BoxDecoration(
                                                            color: theme
                                                                .colorScheme
                                                                .onPrimary,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        7.h)))
                                                  ])),
                                          Spacer(flex: 52),
                                          Container(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 8.h,
                                                  vertical: 7.v),
                                              decoration: AppDecoration
                                                  .fillGray5007f
                                                  .copyWith(
                                                      borderRadius:
                                                          BorderRadiusStyle
                                                              .circleBorder14),
                                              child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    SizedBox(height: 1.v),
                                                    Container(
                                                        height: 15.adaptSize,
                                                        width: 15.adaptSize,
                                                        decoration: BoxDecoration(
                                                            color: appTheme
                                                                .gray5001,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        7.h)))
                                                  ])),
                                          Spacer(flex: 47),
                                          Container(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 8.h,
                                                  vertical: 7.v),
                                              decoration: AppDecoration
                                                  .fillGray5007f
                                                  .copyWith(
                                                      borderRadius:
                                                          BorderRadiusStyle
                                                              .circleBorder14),
                                              child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    SizedBox(height: 1.v),
                                                    Container(
                                                        height: 15.adaptSize,
                                                        width: 15.adaptSize,
                                                        decoration: BoxDecoration(
                                                            color: appTheme
                                                                .gray5001,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        7.h)))
                                                  ]))
                                        ]))),
                            SizedBox(height: 51.v),
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                    padding: EdgeInsets.only(left: 7.h),
                                    child: Text("lbl_invoice".tr,
                                        style: TextStyle(
                                            color: theme.colorScheme.primary
                                                .withOpacity(1),
                                            fontSize: 32.fSize,
                                            fontFamily: 'Nunito Sans',
                                            fontWeight: FontWeight.w700)))),
                            SizedBox(height: 33.v),
                            _buildRespondingToTheRow1(context),
                            SizedBox(height: 22.v),
                            _buildRespondingToTheRow2(context,
                                dynamicText1: "msg_responding_to_the".tr,
                                dynamicText2: "lbl_7000_le".tr),
                            SizedBox(height: 31.v),
                            _buildRespondingToTheRow2(context,
                                dynamicText1: "msg_responding_to_the".tr,
                                dynamicText2: "lbl_2000_le".tr),
                            SizedBox(height: 39.v),
                            Padding(
                                padding:
                                    EdgeInsets.only(left: 42.h, right: 14.h),
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("lbl_total".tr,
                                          style: TextStyle(
                                              color: appTheme.blueGray90001,
                                              fontSize: 24.fSize,
                                              fontFamily: 'Nunito Sans',
                                              fontWeight: FontWeight.w700)),
                                      Padding(
                                          padding: EdgeInsets.only(top: 3.v),
                                          child: Text("lbl_14000_le".tr,
                                              style: TextStyle(
                                                  color: theme
                                                      .colorScheme.primary
                                                      .withOpacity(0.8),
                                                  fontSize: 20.fSize,
                                                  fontFamily: 'Nunito Sans',
                                                  fontWeight: FontWeight.w600)))
                                    ])),
                            SizedBox(height: 224.v),
                            CustomElevatedButton(
                                width: 107.h,
                                text: "lbl_next".tr,
                                rightIcon: Container(
                                    margin: EdgeInsets.only(left: 5.h),
                                    child: CustomImageView(
                                        imagePath:
                                            ImageConstant.imgArrowrightOnerror,
                                        height: 18.v,
                                        width: 19.h)),
                                onPressed: () {
                                  onTapNext(context);
                                }),
                            SizedBox(height: 224.v)
                          ])),
                  SizedBox(height: 165.v),
                  CustomImageView(
                      imagePath: ImageConstant.imgRectangle1121,
                      height: 99.v,
                      width: 418.h)
                ]))),
            bottomNavigationBar: _buildBottomBar(context)));
  }

  /// Section Widget
  Widget _buildRespondingToTheRow1(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
              width: 242.h,
              child: Text("msg_responding_to_the".tr,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                      color: appTheme.blueGray90001,
                      fontSize: 18.fSize,
                      fontFamily: 'Nunito Sans',
                      fontWeight: FontWeight.w600))),
          Padding(
              padding: EdgeInsets.only(left: 58.h, bottom: 27.v),
              child: Text("lbl_5000_le".tr,
                  style: TextStyle(
                      color: theme.colorScheme.primary.withOpacity(0.6),
                      fontSize: 16.fSize,
                      fontFamily: 'Nunito Sans',
                      fontWeight: FontWeight.w600)))
        ]);
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {});
  }

  /// Common widget
  Widget _buildRespondingToTheRow2(
    BuildContext context, {
    required String dynamicText1,
    required String dynamicText2,
  }) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
              width: 242.h,
              child: Text(dynamicText1,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                      color: appTheme.blueGray90001,
                      fontSize: 18.fSize,
                      fontFamily: 'Nunito Sans',
                      fontWeight: FontWeight.w600))),
          Padding(
              padding: EdgeInsets.only(left: 57.h, bottom: 29.v),
              child: Text(dynamicText2,
                  style: TextStyle(
                      color: theme.colorScheme.primary.withOpacity(0.6),
                      fontSize: 16.fSize,
                      fontFamily: 'Nunito Sans',
                      fontWeight: FontWeight.w600)))
        ]);
  }

  /// Navigates to the invoicePaymentMethodScreen when the action is triggered.
  onTapNext(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.invoicePaymentMethodScreen,
    );
  }
}
