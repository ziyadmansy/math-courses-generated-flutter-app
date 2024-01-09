import 'models/payment_success_model.dart';
import 'package:flutter/material.dart';
import 'package:math_courses/core/app_export.dart';
import 'provider/payment_success_provider.dart';

class PaymentSuccessScreen extends StatefulWidget {
  const PaymentSuccessScreen({Key? key})
      : super(
          key: key,
        );

  @override
  PaymentSuccessScreenState createState() => PaymentSuccessScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => PaymentSuccessProvider(),
      child: PaymentSuccessScreen(),
    );
  }
}

class PaymentSuccessScreenState extends State<PaymentSuccessScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 29.h,
                    vertical: 22.v,
                  ),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        ImageConstant.imgGroup164,
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.centerRight,
                        child: Container(
                          height: 30.v,
                          width: 35.h,
                          margin: EdgeInsets.only(right: 3.h),
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              Align(
                                alignment: Alignment.center,
                                child: Container(
                                  height: 30.v,
                                  width: 35.h,
                                  decoration: BoxDecoration(
                                    color:
                                        appTheme.blueGray10001.withOpacity(0.5),
                                    borderRadius: BorderRadius.circular(
                                      17.h,
                                    ),
                                  ),
                                ),
                              ),
                              CustomImageView(
                                imagePath: ImageConstant.imgCloseFill0Wgh,
                                height: 25.adaptSize,
                                width: 25.adaptSize,
                                alignment: Alignment.center,
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 141.v),
                      Container(
                        margin: EdgeInsets.only(
                          left: 54.h,
                          right: 38.h,
                        ),
                        padding: EdgeInsets.symmetric(
                          horizontal: 19.h,
                          vertical: 20.v,
                        ),
                        decoration: AppDecoration.fillRed300.copyWith(
                          borderRadius: BorderRadiusStyle.circleBorder140,
                        ),
                        child: Container(
                          margin: EdgeInsets.only(left: 2.h),
                          padding: EdgeInsets.symmetric(
                            horizontal: 20.h,
                            vertical: 18.v,
                          ),
                          decoration: AppDecoration.fillRed40001.copyWith(
                            borderRadius: BorderRadiusStyle.circleBorder120,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(height: 4.v),
                              Container(
                                height: 200.adaptSize,
                                width: 200.adaptSize,
                                padding: EdgeInsets.symmetric(
                                  horizontal: 53.h,
                                  vertical: 56.v,
                                ),
                                decoration: AppDecoration.fillRed700.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.circleBorder100,
                                ),
                                child: CustomImageView(
                                  imagePath: ImageConstant.imgCheckmark,
                                  height: 80.v,
                                  width: 92.h,
                                  alignment: Alignment.topCenter,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 30.v),
                      Text(
                        "msg_payment_process".tr,
                        style: TextStyle(
                          color: theme.colorScheme.primary.withOpacity(1),
                          fontSize: 24.fSize,
                          fontFamily: 'Nunito Sans',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(height: 30.v),
                    ],
                  ),
                ),
                SizedBox(height: 165.v),
                CustomImageView(
                  imagePath: ImageConstant.imgRectangle1120,
                  height: 99.v,
                  width: 418.h,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
