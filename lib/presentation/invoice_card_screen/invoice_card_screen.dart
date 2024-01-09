import 'dart:async';
import 'models/invoice_card_model.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:math_courses/core/app_export.dart';
import 'package:math_courses/widgets/custom_bottom_bar.dart';
import 'package:math_courses/widgets/custom_elevated_button.dart';
import 'package:math_courses/widgets/custom_outlined_button.dart';
import 'package:math_courses/widgets/custom_text_form_field.dart';
import 'provider/invoice_card_provider.dart';

class InvoiceCardScreen extends StatefulWidget {
  const InvoiceCardScreen({Key? key}) : super(key: key);

  @override
  InvoiceCardScreenState createState() => InvoiceCardScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => InvoiceCardProvider(), child: InvoiceCardScreen());
  }
}

// ignore_for_file: must_be_immutable
class InvoiceCardScreenState extends State<InvoiceCardScreen> {
  Completer<GoogleMapController> googleMapController = Completer();

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

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
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    child: Column(children: [
                  Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: 31.h, vertical: 22.v),
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(ImageConstant.imgGroup164),
                              fit: BoxFit.cover)),
                      child: Column(children: [
                        Align(
                            alignment: Alignment.centerRight,
                            child: Container(
                                height: 30.v,
                                width: 35.h,
                                margin: EdgeInsets.only(right: 1.h),
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
                                    ]))),
                        SizedBox(height: 34.v),
                        _buildShoppingCard(context),
                        SizedBox(height: 6.v),
                        _buildEditText(context),
                        SizedBox(height: 22.v),
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                                padding: EdgeInsets.only(left: 10.h),
                                child: Text("lbl_card_number".tr,
                                    style: TextStyle(
                                        color: appTheme.blueGray90001,
                                        fontSize: 20.fSize,
                                        fontFamily: 'Nunito Sans',
                                        fontWeight: FontWeight.w400)))),
                        SizedBox(height: 3.v),
                        _buildCardNumber(context),
                        SizedBox(height: 19.v),
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                                padding:
                                    EdgeInsets.only(left: 10.h, right: 104.h),
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                          padding: EdgeInsets.only(top: 1.v),
                                          child: Text("lbl_expiry_date".tr,
                                              style: TextStyle(
                                                  color: appTheme.blueGray90001,
                                                  fontSize: 20.fSize,
                                                  fontFamily: 'Nunito Sans',
                                                  fontWeight:
                                                      FontWeight.w400))),
                                      Text("lbl_cvv".tr,
                                          style: TextStyle(
                                              color: appTheme.blueGray90001,
                                              fontSize: 20.fSize,
                                              fontFamily: 'Nunito Sans',
                                              fontWeight: FontWeight.w400))
                                    ]))),
                        SizedBox(height: 1.v),
                        _buildExpiryDate(context),
                        SizedBox(height: 66.v),
                        _buildPrevious(context),
                        SizedBox(height: 66.v)
                      ])),
                  SizedBox(height: 165.v),
                  CustomImageView(
                      imagePath: ImageConstant.imgRectangle1123,
                      height: 99.v,
                      width: 418.h)
                ]))),
            bottomNavigationBar: _buildBottomBar(context)));
  }

  /// Section Widget
  Widget _buildShoppingCardDetails(BuildContext context) {
    return Align(
        alignment: Alignment.center,
        child: Container(
            padding: EdgeInsets.all(21.h),
            decoration: AppDecoration.gradientRedToOnPrimaryContainer
                .copyWith(borderRadius: BorderRadiusStyle.circleBorder14),
            child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 4.v),
                  Padding(
                      padding: EdgeInsets.only(left: 10.h),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                                padding: EdgeInsets.only(top: 3.v),
                                child: Text("lbl_shopping_card".tr,
                                    style: TextStyle(
                                        color: theme.colorScheme.onError,
                                        fontSize: 16.fSize,
                                        fontFamily: 'Nunito Sans',
                                        fontWeight: FontWeight.w700))),
                            Container(
                                height: 21.v,
                                width: 40.h,
                                margin: EdgeInsets.only(bottom: 4.v),
                                child: Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      Align(
                                          alignment: Alignment.center,
                                          child: Container(
                                              height: 8.v,
                                              width: 28.h,
                                              decoration: BoxDecoration(
                                                  color: theme
                                                      .colorScheme.onError))),
                                      CustomImageView(
                                          imagePath: ImageConstant
                                              .imgI390885664MastercardLogo,
                                          height: 21.v,
                                          width: 40.h,
                                          alignment: Alignment.center)
                                    ]))
                          ])),
                  SizedBox(height: 33.v),
                  Padding(
                      padding: EdgeInsets.only(left: 14.h),
                      child: Text("msg_2025_7854_7895_8542".tr,
                          style: TextStyle(
                              color: theme.colorScheme.onError,
                              fontSize: 20.fSize,
                              fontFamily: 'Nunito Sans',
                              fontWeight: FontWeight.w700))),
                  SizedBox(height: 45.v),
                  Padding(
                      padding: EdgeInsets.only(left: 15.h, right: 39.h),
                      child: Row(children: [
                        Column(children: [
                          Text("lbl_card_holder".tr,
                              style: TextStyle(
                                  color: theme.colorScheme.onError,
                                  fontSize: 12.fSize,
                                  fontFamily: 'Nunito Sans',
                                  fontWeight: FontWeight.w400)),
                          Text("lbl_john_doe".tr,
                              style: TextStyle(
                                  color: theme.colorScheme.onError,
                                  fontSize: 14.fSize,
                                  fontFamily: 'Nunito Sans',
                                  fontWeight: FontWeight.w600))
                        ]),
                        Spacer(flex: 41),
                        Column(children: [
                          Text("lbl_expiry_date".tr,
                              style: TextStyle(
                                  color: theme.colorScheme.onError,
                                  fontSize: 12.fSize,
                                  fontFamily: 'Nunito Sans',
                                  fontWeight: FontWeight.w400)),
                          Text("lbl_01_12".tr,
                              style: TextStyle(
                                  color: theme.colorScheme.onError,
                                  fontSize: 14.fSize,
                                  fontFamily: 'Nunito Sans',
                                  fontWeight: FontWeight.w600))
                        ]),
                        Spacer(flex: 58),
                        Padding(
                            padding: EdgeInsets.only(bottom: 7.v),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Align(
                                      alignment: Alignment.center,
                                      child: Text("lbl_cvv".tr,
                                          style: TextStyle(
                                              color: theme.colorScheme.onError,
                                              fontSize: 12.fSize,
                                              fontFamily: 'Nunito Sans',
                                              fontWeight: FontWeight.w400))),
                                  SizedBox(height: 8.v),
                                  Align(
                                      alignment: Alignment.centerRight,
                                      child: Padding(
                                          padding: EdgeInsets.only(right: 1.h),
                                          child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              children: [
                                                Container(
                                                    height: 5.adaptSize,
                                                    width: 5.adaptSize,
                                                    decoration: BoxDecoration(
                                                        color: theme.colorScheme
                                                            .onError,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                                    2.h))),
                                                Container(
                                                    height: 5.adaptSize,
                                                    width: 5.adaptSize,
                                                    margin: EdgeInsets.only(
                                                        left: 3.h),
                                                    decoration: BoxDecoration(
                                                        color: theme.colorScheme
                                                            .onError,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                                    2.h))),
                                                Container(
                                                    height: 5.adaptSize,
                                                    width: 5.adaptSize,
                                                    margin: EdgeInsets.only(
                                                        left: 3.h),
                                                    decoration: BoxDecoration(
                                                        color: theme.colorScheme
                                                            .onError,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(2.h)))
                                              ])))
                                ]))
                      ]))
                ])));
  }

  /// Section Widget
  Widget _buildShoppingCard(BuildContext context) {
    return SizedBox(
        height: 339.v,
        width: 359.h,
        child: Stack(alignment: Alignment.centerLeft, children: [
          _buildShoppingCardDetails(context),
          Container(
              height: 339.v,
              width: 302.h,
              margin: EdgeInsets.only(left: 2.h),
              child: GoogleMap(
                  mapType: MapType.normal,
                  initialCameraPosition: CameraPosition(
                      target: LatLng(37.43296265331129, -122.08832357078792),
                      zoom: 14.4746),
                  onMapCreated: (GoogleMapController controller) {
                    googleMapController.complete(controller);
                  },
                  zoomControlsEnabled: false,
                  zoomGesturesEnabled: false,
                  myLocationButtonEnabled: false,
                  myLocationEnabled: false))
        ]));
  }

  /// Section Widget
  Widget _buildEditText(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 2.h, right: 5.h),
        child: Selector<InvoiceCardProvider, TextEditingController?>(
            selector: (context, provider) => provider.editTextController,
            builder: (context, editTextController, child) {
              return CustomTextFormField(controller: editTextController);
            }));
  }

  /// Section Widget
  Widget _buildCardNumber(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 2.h, right: 5.h),
        child: Selector<InvoiceCardProvider, TextEditingController?>(
            selector: (context, provider) => provider.cardNumberController,
            builder: (context, cardNumberController, child) {
              return CustomTextFormField(
                  controller: cardNumberController, obscureText: true);
            }));
  }

  /// Section Widget
  Widget _buildExpirydate(BuildContext context) {
    return Selector<InvoiceCardProvider, TextEditingController?>(
        selector: (context, provider) => provider.expirydateController,
        builder: (context, expirydateController, child) {
          return CustomTextFormField(
              width: 162.h, controller: expirydateController);
        });
  }

  /// Section Widget
  Widget _buildCvv(BuildContext context) {
    return Selector<InvoiceCardProvider, TextEditingController?>(
        selector: (context, provider) => provider.cvvController,
        builder: (context, cvvController, child) {
          return CustomTextFormField(
              width: 151.h,
              controller: cvvController,
              textInputAction: TextInputAction.done);
        });
  }

  /// Section Widget
  Widget _buildExpiryDate(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 2.h, right: 5.h),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [_buildExpirydate(context), _buildCvv(context)]));
  }

  /// Section Widget
  Widget _buildPreviousSection(BuildContext context) {
    return CustomElevatedButton(
        width: 140.h,
        text: "lbl_previous".tr,
        margin: EdgeInsets.only(bottom: 17.v),
        leftIcon: Container(
            margin: EdgeInsets.only(right: 9.h),
            child: CustomImageView(
                imagePath: ImageConstant.imgArrowleftOnerror,
                height: 18.v,
                width: 19.h)),
        onPressed: () {
          onTapPreviousSection(context);
        });
  }

  /// Section Widget
  Widget _buildPay(BuildContext context) {
    return CustomOutlinedButton(
        width: 140.h,
        text: "lbl_pay".tr,
        onPressed: () {
          onTapPay(context);
        },
        alignment: Alignment.topLeft);
  }

  /// Section Widget
  Widget _buildPrevious(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 5.h),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildPreviousSection(context),
              SizedBox(
                  height: 59.v,
                  width: 146.h,
                  child: Stack(alignment: Alignment.topLeft, children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgArrowrightOnerror,
                        height: 18.v,
                        width: 19.h,
                        alignment: Alignment.bottomRight),
                    _buildPay(context)
                  ]))
            ]));
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {});
  }

  /// Navigates to the invoicePaymentMethodScreen when the action is triggered.
  onTapPreviousSection(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.invoicePaymentMethodScreen,
    );
  }

  /// Navigates to the paymentSuccessScreen when the action is triggered.
  onTapPay(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.paymentSuccessScreen,
    );
  }
}
