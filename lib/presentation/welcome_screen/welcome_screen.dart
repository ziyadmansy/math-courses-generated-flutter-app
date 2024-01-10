import 'models/welcome_model.dart';
import 'package:flutter/material.dart';
import 'package:math_courses/core/app_export.dart';
import 'package:math_courses/widgets/custom_elevated_button.dart';
import 'provider/welcome_provider.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  WelcomeScreenState createState() => WelcomeScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => WelcomeProvider(), child: WelcomeScreen());
  }
}

class WelcomeScreenState extends State<WelcomeScreen> {
  @override
  void initState() {
    super.initState();
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
                      imagePath: ImageConstant.imgBg2547x370,
                      height: 547.v,
                      width: 370.h,
                      alignment: Alignment.topLeft),
                  CustomImageView(
                      imagePath: ImageConstant.imgGraphicsBlueGray90002,
                      height: 547.v,
                      width: 370.h,
                      alignment: Alignment.topLeft),
                  _buildLoginSection(context),
                  CustomImageView(
                      imagePath: ImageConstant.imgCharacter,
                      height: 404.v,
                      width: 164.h,
                      alignment: Alignment.bottomRight,
                      margin: EdgeInsets.only(bottom: 197.v)),
                  CustomImageView(
                      imagePath: ImageConstant.imgCharacterGray90001,
                      height: 406.v,
                      width: 163.h,
                      alignment: Alignment.bottomRight,
                      margin: EdgeInsets.only(bottom: 197.v))
                ]))));
  }

  /// Section Widget
  Widget _buildLoginSection(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 60.h, vertical: 40.v),
        decoration: AppDecoration.outlinePrimary
            .copyWith(borderRadius: BorderRadiusStyle.customBorderTL50),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text("lbl_welcome_back".tr,
                style: TextStyle(
                    color: appTheme.blueGray900,
                    fontSize: 45.fSize,
                    fontFamily: 'Nunito Sans',
                    fontWeight: FontWeight.w700)),
            SizedBox(height: 9.v),
            Text("msg_login_into_your".tr,
                style: TextStyle(
                    color: appTheme.blueGray90001,
                    fontSize: 24.fSize,
                    fontFamily: 'Nunito Sans',
                    fontWeight: FontWeight.w400)),
            SizedBox(height: 54.v),
            CustomElevatedButton(
              height: 67.v,
              text: "lbl_login".tr,
              // buttonStyle: CustomButtonStyles.outlinePrimary,
              onPressed: () {
                onTapLogin(context);
              },
            ),
            SizedBox(height: 43.v)
          ],
        ),
      ),
    );
  }

  /// Navigates to the loginScreen when the action is triggered.
  onTapLogin(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.loginScreen,
    );
  }
}
