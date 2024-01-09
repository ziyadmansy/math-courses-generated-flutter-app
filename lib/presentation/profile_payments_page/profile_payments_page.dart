import 'models/profile_payments_model.dart';
import 'package:flutter/material.dart';
import 'package:math_courses/core/app_export.dart';
import 'package:math_courses/widgets/custom_elevated_button.dart';
import 'provider/profile_payments_provider.dart';

class ProfilePaymentsPage extends StatefulWidget {
  const ProfilePaymentsPage({Key? key}) : super(key: key);

  @override
  ProfilePaymentsPageState createState() => ProfilePaymentsPageState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => ProfilePaymentsProvider(),
        child: ProfilePaymentsPage());
  }
}

class ProfilePaymentsPageState extends State<ProfilePaymentsPage>
    with AutomaticKeepAliveClientMixin<ProfilePaymentsPage> {
  @override
  bool get wantKeepAlive => true;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(body: _buildContacts(context)));
  }

  /// Section Widget
  Widget _buildContacts(BuildContext context) {
    return SingleChildScrollView(
        child: Padding(
            padding: EdgeInsets.only(bottom: 5.v),
            child: Column(children: [
              Padding(
                  padding: EdgeInsets.only(right: 12.h),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Align(
                            alignment: Alignment.centerRight,
                            child: GestureDetector(
                                onTap: () {
                                  onTapTxtContacts(context);
                                },
                                child: Padding(
                                    padding: EdgeInsets.only(right: 13.h),
                                    child: Text("lbl_contacts".tr,
                                        style: TextStyle(
                                            color: appTheme.blueGray90001,
                                            fontSize: 20.fSize,
                                            fontFamily: 'Nunito Sans',
                                            fontWeight: FontWeight.w700))))),
                        SizedBox(height: 47.v),
                        Align(
                            alignment: Alignment.center,
                            child: Container(
                                margin:
                                    EdgeInsets.only(left: 28.h, right: 17.h),
                                padding: EdgeInsets.symmetric(
                                    horizontal: 19.h, vertical: 22.v),
                                decoration: AppDecoration.outlinePrimary1
                                    .copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder50),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Align(
                                          alignment: Alignment.centerRight,
                                          child: Padding(
                                              padding:
                                                  EdgeInsets.only(left: 19.h),
                                              child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                top: 2.v),
                                                        child: Column(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Text(
                                                                  "lbl_enjoy_our"
                                                                      .tr,
                                                                  style: TextStyle(
                                                                      color: theme
                                                                          .colorScheme
                                                                          .primary
                                                                          .withOpacity(
                                                                              1),
                                                                      fontSize: 18
                                                                          .fSize,
                                                                      fontFamily:
                                                                          'Nunito Sans',
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w700)),
                                                              Align(
                                                                  alignment:
                                                                      Alignment
                                                                          .centerRight,
                                                                  child: RichText(
                                                                      text: TextSpan(children: [
                                                                        TextSpan(
                                                                            text:
                                                                                "lbl_r".tr,
                                                                            style: CustomTextStyles.titleLargeRed40004),
                                                                        TextSpan(
                                                                            text:
                                                                                "lbl_ecent_offer".tr,
                                                                            style: CustomTextStyles.titleLargeRed40004)
                                                                      ]),
                                                                      textAlign: TextAlign.left))
                                                            ])),
                                                    CustomElevatedButton(
                                                        height: 33.v,
                                                        width: 112.h,
                                                        text:
                                                            "lbl_subscribe".tr,
                                                        margin: EdgeInsets.only(
                                                            bottom: 19.v),
                                                        buttonStyle:
                                                            CustomButtonStyles
                                                                .fillYellowA)
                                                  ]))),
                                      SizedBox(height: 13.v),
                                      Text("msg_5400_le_est_course".tr,
                                          style: TextStyle(
                                              color: theme.colorScheme.primary
                                                  .withOpacity(1),
                                              fontSize: 24.fSize,
                                              fontFamily: 'Nunito Sans',
                                              fontWeight: FontWeight.w700)),
                                      SizedBox(height: 11.v)
                                    ]))),
                        SizedBox(height: 166.v),
                        Padding(
                            padding: EdgeInsets.only(left: 51.h),
                            child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("lbl_go_to_payment".tr,
                                      style: TextStyle(
                                          color: theme.colorScheme.primary
                                              .withOpacity(1),
                                          fontSize: 24.fSize,
                                          fontFamily: 'Nunito Sans',
                                          fontWeight: FontWeight.w700)),
                                  CustomImageView(
                                      imagePath:
                                          ImageConstant.imgArrowRightPrimary,
                                      height: 18.v,
                                      width: 19.h,
                                      margin: EdgeInsets.only(
                                          left: 10.h, top: 6.v, bottom: 8.v),
                                      onTap: () {
                                        onTapImgArrowRight(context);
                                      })
                                ])),
                        SizedBox(height: 281.v),
                        CustomImageView(
                            imagePath: ImageConstant.imgRectangle117,
                            height: 99.v,
                            width: 418.h)
                      ]))
            ])));
  }

  /// Navigates to the profileContactsScreen when the action is triggered.
  onTapTxtContacts(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.profileContactsScreen,
    );
  }

  /// Navigates to the invoiceTotalScreen when the action is triggered.
  onTapImgArrowRight(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.invoiceTotalScreen,
    );
  }
}
