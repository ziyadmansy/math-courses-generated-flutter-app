import 'models/splash_model.dart';
import 'package:flutter/material.dart';
import 'package:math_courses/core/app_export.dart';
import 'provider/splash_provider.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  SplashScreenState createState() => SplashScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => SplashProvider(), child: SplashScreen());
  }
}

class SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(milliseconds: 3000), () {
      NavigatorService.popAndPushNamed(
        AppRoutes.welcomeScreen,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: theme.colorScheme.onPrimary,
            body: SizedBox(
                height: SizeUtils.height,
                width: double.maxFinite,
                child: Stack(alignment: Alignment.topLeft, children: [
                  CustomImageView(
                      imagePath: ImageConstant.imgGraphics,
                      height: 652.v,
                      width: 430.h,
                      alignment: Alignment.bottomCenter),
                  CustomImageView(
                      imagePath: ImageConstant.imgGraphicsOnerror,
                      height: 280.v,
                      width: 356.h,
                      alignment: Alignment.topLeft),
                  Align(
                      alignment: Alignment.topRight,
                      child: SizedBox(
                          height: 548.v,
                          width: 336.h,
                          child:
                              Stack(alignment: Alignment.bottomLeft, children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgBg2,
                                height: 548.v,
                                width: 333.h,
                                alignment: Alignment.center),
                            CustomImageView(
                                imagePath: ImageConstant.imgMohamedEissaL,
                                height: 142.v,
                                width: 238.h,
                                alignment: Alignment.bottomLeft,
                                margin: EdgeInsets.only(bottom: 22.v))
                          ])))
                ]))));
  }
}
