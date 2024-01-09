import 'models/login_model.dart';
import 'package:flutter/material.dart';
import 'package:math_courses/core/app_export.dart';
import 'package:math_courses/widgets/custom_elevated_button.dart';
import 'package:math_courses/widgets/custom_text_form_field.dart';
import 'provider/login_provider.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  LoginScreenState createState() => LoginScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => LoginProvider(), child: LoginScreen());
  }
}

class LoginScreenState extends State<LoginScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: theme.colorScheme.onPrimary,
            resizeToAvoidBottomInset: false,
            body: SizedBox(
                height: SizeUtils.height,
                width: double.maxFinite,
                child: Stack(alignment: Alignment.bottomCenter, children: [
                  Align(
                      alignment: Alignment.topLeft,
                      child: SizedBox(
                          height: 177.v,
                          width: 256.h,
                          child: Stack(alignment: Alignment.topLeft, children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgBg2177x256,
                                height: 177.v,
                                width: 256.h,
                                alignment: Alignment.center),
                            CustomImageView(
                                imagePath: ImageConstant.imgComponent2,
                                height: 104.v,
                                width: 238.h,
                                alignment: Alignment.topLeft,
                                margin: EdgeInsets.only(top: 27.v)),
                            CustomImageView(
                                imagePath: ImageConstant.imgBg3,
                                height: 177.v,
                                width: 256.h,
                                alignment: Alignment.center),
                            CustomImageView(
                                imagePath: ImageConstant
                                    .imgGraphicsBlueGray90002177x256,
                                height: 177.v,
                                width: 256.h,
                                alignment: Alignment.center)
                          ]))),
                  Align(
                      alignment: Alignment.bottomCenter,
                      child: SizedBox(
                          height: 865.v,
                          width: double.maxFinite,
                          child: Stack(
                              alignment: Alignment.bottomCenter,
                              children: [
                                CustomImageView(
                                    imagePath: ImageConstant.imgComponent3,
                                    height: 113.v,
                                    width: 99.h,
                                    alignment: Alignment.topLeft,
                                    margin:
                                        EdgeInsets.only(left: 2.h, top: 145.v)),
                                Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Container(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 57.h, vertical: 48.v),
                                        decoration: AppDecoration.outlinePrimary
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .customBorderTL50),
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 3.h),
                                                  child: Text(
                                                      "lbl_welcome_back".tr,
                                                      style: TextStyle(
                                                          color: appTheme
                                                              .blueGray900,
                                                          fontSize: 45.fSize,
                                                          fontFamily:
                                                              'Nunito Sans',
                                                          fontWeight: FontWeight
                                                              .w700))),
                                              SizedBox(height: 1.v),
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 24.h),
                                                  child: Text(
                                                      "msg_login_into_your".tr,
                                                      style: TextStyle(
                                                          color: appTheme
                                                              .blueGray90001,
                                                          fontSize: 24.fSize,
                                                          fontFamily:
                                                              'Nunito Sans',
                                                          fontWeight: FontWeight
                                                              .w400))),
                                              SizedBox(height: 56.v),
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 25.h),
                                                  child: Row(children: [
                                                    CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgPersonFill0Wg,
                                                        height: 24.adaptSize,
                                                        width: 24.adaptSize,
                                                        margin: EdgeInsets.only(
                                                            top: 1.v,
                                                            bottom: 2.v)),
                                                    Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                left: 6.h),
                                                        child: Text(
                                                            "lbl_user_name".tr,
                                                            style: TextStyle(
                                                                color: appTheme
                                                                    .blueGray90001,
                                                                fontSize:
                                                                    20.fSize,
                                                                fontFamily:
                                                                    'Nunito Sans',
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400)))
                                                  ])),
                                              SizedBox(height: 7.v),
                                              Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 10.h),
                                                  child: Selector<LoginProvider,
                                                          TextEditingController?>(
                                                      selector: (context,
                                                              provider) =>
                                                          provider
                                                              .editTextController,
                                                      builder: (context,
                                                          editTextController,
                                                          child) {
                                                        return CustomTextFormField(
                                                            controller:
                                                                editTextController,
                                                            alignment: Alignment
                                                                .center);
                                                      })),
                                              SizedBox(height: 15.v),
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 25.h),
                                                  child: Row(children: [
                                                    CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgLockCopy1,
                                                        height: 20.adaptSize,
                                                        width: 20.adaptSize,
                                                        margin: EdgeInsets.only(
                                                            top: 3.v,
                                                            bottom: 4.v)),
                                                    Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                left: 8.h),
                                                        child: Text(
                                                            "lbl_password".tr,
                                                            style: TextStyle(
                                                                color: appTheme
                                                                    .blueGray90001,
                                                                fontSize:
                                                                    20.fSize,
                                                                fontFamily:
                                                                    'Nunito Sans',
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400)))
                                                  ])),
                                              SizedBox(height: 6.v),
                                              Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 10.h),
                                                  child:
                                                      Consumer<LoginProvider>(
                                                          builder: (context,
                                                              provider, child) {
                                                    return CustomTextFormField(
                                                        controller: provider
                                                            .eyeslashController,
                                                        textInputAction:
                                                            TextInputAction
                                                                .done,
                                                        alignment:
                                                            Alignment.center,
                                                        suffix: InkWell(
                                                            onTap: () {
                                                              provider
                                                                  .changePasswordVisibility();
                                                            },
                                                            child: Container(
                                                                margin:
                                                                    EdgeInsets.fromLTRB(
                                                                        30.h,
                                                                        12.v,
                                                                        12.h,
                                                                        12.v),
                                                                child: CustomImageView(
                                                                    imagePath:
                                                                        ImageConstant
                                                                            .imgEyeslash,
                                                                    height: 25
                                                                        .adaptSize,
                                                                    width: 25
                                                                        .adaptSize))),
                                                        suffixConstraints:
                                                            BoxConstraints(
                                                                maxHeight:
                                                                    49.v),
                                                        obscureText: provider
                                                            .isShowPassword);
                                                  })),
                                              SizedBox(height: 90.v),
                                              CustomElevatedButton(
                                                  height: 67.v,
                                                  text: "lbl_login".tr,
                                                  margin: EdgeInsets.only(
                                                      left: 10.h),
                                                  buttonStyle:
                                                      CustomButtonStyles
                                                          .outlinePrimary,
                                                  onPressed: () {
                                                    navigateToHome(context);
                                                  }),
                                              SizedBox(height: 60.v)
                                            ]))),
                                CustomImageView(
                                    imagePath: ImageConstant.imgCharacter,
                                    height: 333.v,
                                    width: 140.h,
                                    alignment: Alignment.topRight),
                                CustomImageView(
                                    imagePath:
                                        ImageConstant.imgCharacterGray90001,
                                    height: 333.v,
                                    width: 140.h,
                                    alignment: Alignment.topRight,
                                    margin: EdgeInsets.only(top: 1.v))
                              ])))
                ]))));
  }

  /// Navigates to the homeScreen when the action is triggered.
  navigateToHome(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.homeScreen,
    );
  }
}
