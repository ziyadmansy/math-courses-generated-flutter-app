import 'models/new_message_model.dart';
import 'package:flutter/material.dart';
import 'package:math_courses/core/app_export.dart';
import 'provider/new_message_provider.dart';

class NewMessageScreen extends StatefulWidget {
  const NewMessageScreen({Key? key}) : super(key: key);

  @override
  NewMessageScreenState createState() => NewMessageScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => NewMessageProvider(), child: NewMessageScreen());
  }
}

class NewMessageScreenState extends State<NewMessageScreen> {
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
                    child: Column(children: [
                  SizedBox(
                      height: 961.v,
                      width: double.maxFinite,
                      child:
                          Stack(alignment: Alignment.bottomCenter, children: [
                        Align(
                            alignment: Alignment.topCenter,
                            child: Container(
                                padding: EdgeInsets.symmetric(vertical: 65.v),
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                            ImageConstant.imgGroup164),
                                        fit: BoxFit.cover)),
                                child: Container(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 35.h, vertical: 22.v),
                                    decoration: AppDecoration.outlinePrimary8
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .circleBorder20),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          _buildMessageSection(context),
                                          SizedBox(height: 38.v),
                                          Padding(
                                              padding:
                                                  EdgeInsets.only(left: 4.h),
                                              child: Row(children: [
                                                Text("lbl_to".tr,
                                                    style: TextStyle(
                                                        color: theme
                                                            .colorScheme.primary
                                                            .withOpacity(1),
                                                        fontSize: 14.fSize,
                                                        fontFamily:
                                                            'Nunito Sans',
                                                        fontWeight:
                                                            FontWeight.w700)),
                                                Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 5.h),
                                                    child: SizedBox(
                                                        height: 19.v,
                                                        child: VerticalDivider(
                                                            width: 1.h,
                                                            thickness: 1.v,
                                                            color: appTheme
                                                                .indigo600,
                                                            indent: 3.h,
                                                            endIndent: 1.h)))
                                              ])),
                                          SizedBox(height: 20.v),
                                          Padding(
                                              padding:
                                                  EdgeInsets.only(left: 4.h),
                                              child: Text("lbl_message".tr,
                                                  style: TextStyle(
                                                      color: theme
                                                          .colorScheme.primary
                                                          .withOpacity(0.7),
                                                      fontSize: 14.fSize,
                                                      fontFamily: 'Nunito Sans',
                                                      fontWeight:
                                                          FontWeight.w700))),
                                          SizedBox(height: 20.v)
                                        ])))),
                        CustomImageView(
                            imagePath: ImageConstant.imgIosIphoneKeyboard,
                            height: 322.v,
                            width: 430.h,
                            alignment: Alignment.bottomCenter)
                      ])),
                  SizedBox(height: 136.v),
                  CustomImageView(
                      imagePath: ImageConstant.imgRectangle1119,
                      height: 99.v,
                      width: 418.h)
                ])))));
  }

  /// Section Widget
  Widget _buildMessageSection(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 1.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          GestureDetector(
              onTap: () {
                onTapTxtCancel(context);
              },
              child: Padding(
                  padding: EdgeInsets.only(top: 1.v),
                  child: Text("lbl_cancel".tr,
                      style: TextStyle(
                          color: appTheme.red900,
                          fontSize: 18.fSize,
                          fontFamily: 'Nunito Sans',
                          fontWeight: FontWeight.w700)))),
          Padding(
              padding: EdgeInsets.only(top: 1.v),
              child: Text("lbl_new_message".tr,
                  style: TextStyle(
                      color: theme.colorScheme.primary.withOpacity(1),
                      fontSize: 18.fSize,
                      fontFamily: 'Nunito Sans',
                      fontWeight: FontWeight.w700))),
          Text("lbl_send".tr,
              style: TextStyle(
                  color: appTheme.blueGray400,
                  fontSize: 18.fSize,
                  fontFamily: 'Nunito Sans',
                  fontWeight: FontWeight.w700))
        ]));
  }

  /// Navigates to the notificationsRequestsScreen when the action is triggered.
  onTapTxtCancel(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.notificationsRequestsScreen,
    );
  }
}
