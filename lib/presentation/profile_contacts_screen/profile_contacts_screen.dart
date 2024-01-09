import 'models/profile_contacts_model.dart';
import 'package:flutter/material.dart';
import 'package:math_courses/core/app_export.dart';
import 'package:math_courses/widgets/custom_bottom_bar.dart';
import 'package:math_courses/widgets/custom_elevated_button.dart';
import 'provider/profile_contacts_provider.dart';

class ProfileContactsScreen extends StatefulWidget {
  const ProfileContactsScreen({Key? key})
      : super(
          key: key,
        );

  @override
  ProfileContactsScreenState createState() => ProfileContactsScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ProfileContactsProvider(),
      child: ProfileContactsScreen(),
    );
  }
}

class ProfileContactsScreenState extends State<ProfileContactsScreen> {
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
            child: Column(
              children: [
                SizedBox(
                  height: 933.v,
                  width: double.maxFinite,
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(
                                ImageConstant.imgGroup164,
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              _buildPlaylist(context),
                              SizedBox(height: 679.v),
                              CustomImageView(
                                imagePath: ImageConstant.imgArrowRightGreen900,
                                height: 15.v,
                                width: 16.h,
                                margin: EdgeInsets.only(right: 61.h),
                              ),
                              SizedBox(height: 6.v),
                              Padding(
                                padding: EdgeInsets.only(right: 73.h),
                                child: Text(
                                  "lbl_8_12_sessions".tr,
                                  style: TextStyle(
                                    color:
                                        appTheme.blueGray90001.withOpacity(0.6),
                                    fontSize: 12.fSize,
                                    fontFamily: 'Nunito Sans',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                              SizedBox(height: 58.v),
                            ],
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          margin: EdgeInsets.only(
                            right: 1.h,
                            bottom: 7.v,
                          ),
                          padding: EdgeInsets.symmetric(
                            horizontal: 6.h,
                            vertical: 72.v,
                          ),
                          decoration: AppDecoration.outlinePrimary5,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                "lbl_mohamed_ali".tr,
                                style: TextStyle(
                                  color: appTheme.blueGray90001,
                                  fontSize: 24.fSize,
                                  fontFamily: 'Nunito Sans',
                                  fontWeight: FontWeight.w800,
                                ),
                              ),
                              SizedBox(height: 12.v),
                              Padding(
                                padding: EdgeInsets.only(
                                  left: 148.h,
                                  right: 144.h,
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "lbl_22".tr,
                                      style: TextStyle(
                                        color: theme.colorScheme.primary
                                            .withOpacity(1),
                                        fontSize: 18.fSize,
                                        fontFamily: 'Nunito Sans',
                                        fontWeight: FontWeight.w800,
                                      ),
                                    ),
                                    Spacer(
                                      flex: 52,
                                    ),
                                    Text(
                                      "lbl_2".tr,
                                      style: TextStyle(
                                        color: theme.colorScheme.primary
                                            .withOpacity(1),
                                        fontSize: 18.fSize,
                                        fontFamily: 'Nunito Sans',
                                        fontWeight: FontWeight.w800,
                                      ),
                                    ),
                                    Spacer(
                                      flex: 47,
                                    ),
                                    Text(
                                      "lbl_50".tr,
                                      style: TextStyle(
                                        color: theme.colorScheme.primary
                                            .withOpacity(1),
                                        fontSize: 18.fSize,
                                        fontFamily: 'Nunito Sans',
                                        fontWeight: FontWeight.w800,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 15.v),
                              CustomElevatedButton(
                                width: 152.h,
                                text: "lbl_edit_profile".tr,
                                buttonStyle: CustomButtonStyles.fillRedTL21,
                              ),
                              SizedBox(height: 13.v),
                              _buildClientTestimonials(context),
                              SizedBox(height: 18.v),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding: EdgeInsets.only(left: 41.h),
                                  child: Text(
                                    "lbl_address".tr,
                                    style: TextStyle(
                                      color: theme.colorScheme.primary
                                          .withOpacity(1),
                                      fontSize: 18.fSize,
                                      fontFamily: 'Nunito Sans',
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: 8.v),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding: EdgeInsets.only(left: 48.h),
                                  child: Text(
                                    "msg_4_el_nile_street".tr,
                                    style: TextStyle(
                                      color: theme.colorScheme.primary
                                          .withOpacity(1),
                                      fontSize: 16.fSize,
                                      fontFamily: 'Nunito Sans',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: 28.v),
                              Padding(
                                padding: EdgeInsets.only(left: 14.h),
                                child: _buildReviews(
                                  context,
                                  landLineText: "lbl_phone_number".tr,
                                  mobileNoText: "lbl_01298765765".tr,
                                ),
                              ),
                              SizedBox(height: 22.v),
                              Padding(
                                padding: EdgeInsets.only(left: 14.h),
                                child: _buildReviews(
                                  context,
                                  landLineText: "lbl_land_line".tr,
                                  mobileNoText: "lbl_20298765765".tr,
                                ),
                              ),
                              SizedBox(height: 22.v),
                            ],
                          ),
                        ),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgEllipse7113x109,
                        height: 113.v,
                        width: 109.h,
                        radius: BorderRadius.circular(
                          56.h,
                        ),
                        alignment: Alignment.topCenter,
                        margin: EdgeInsets.only(top: 99.v),
                      ),
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Container(
                          width: 177.h,
                          margin: EdgeInsets.only(left: 65.h),
                          child: Text(
                            "msg_here_you_will_be2".tr,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              color: appTheme.blueGray90001.withOpacity(0.6),
                              fontSize: 16.fSize,
                              fontFamily: 'Nunito Sans',
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 163.v),
                CustomImageView(
                  imagePath: ImageConstant.imgRectangle118,
                  height: 99.v,
                  width: 418.h,
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: _buildBottomBar(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildPlaylist(BuildContext context) {
    return Container(
      height: 156.v,
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 15.h,
        vertical: 21.v,
      ),
      decoration: AppDecoration.outlinePrimary4,
      child: Stack(
        alignment: Alignment.topRight,
        children: [
          Align(
            alignment: Alignment.topRight,
            child: Container(
              height: 30.v,
              width: 35.h,
              decoration: BoxDecoration(
                color: appTheme.blueGray10001.withOpacity(0.5),
                borderRadius: BorderRadius.circular(
                  17.h,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: Padding(
              padding: EdgeInsets.only(
                top: 13.v,
                right: 7.h,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    height: 5.adaptSize,
                    width: 5.adaptSize,
                    decoration: BoxDecoration(
                      color: appTheme.blueGray90001,
                      borderRadius: BorderRadius.circular(
                        2.h,
                      ),
                    ),
                  ),
                  Container(
                    height: 5.adaptSize,
                    width: 5.adaptSize,
                    margin: EdgeInsets.only(left: 3.h),
                    decoration: BoxDecoration(
                      color: appTheme.blueGray90001,
                      borderRadius: BorderRadius.circular(
                        2.h,
                      ),
                    ),
                  ),
                  Container(
                    height: 5.adaptSize,
                    width: 5.adaptSize,
                    margin: EdgeInsets.only(left: 3.h),
                    decoration: BoxDecoration(
                      color: appTheme.blueGray90001,
                      borderRadius: BorderRadius.circular(
                        2.h,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildClientTestimonials(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 14.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(
                top: 11.v,
                bottom: 63.v,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 265.h,
                    margin: EdgeInsets.symmetric(vertical: 6.v),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(bottom: 1.v),
                          child: Text(
                            "msg_finished_courses".tr,
                            style: TextStyle(
                              color: appTheme.blueGray90001,
                              fontSize: 20.fSize,
                              fontFamily: 'Nunito Sans',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                        Text(
                          "lbl_payments".tr,
                          style: TextStyle(
                            color: appTheme.blueGray90001,
                            fontSize: 20.fSize,
                            fontFamily: 'Nunito Sans',
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                  ),
                  CustomElevatedButton(
                    width: 108.h,
                    text: "lbl_contacts".tr,
                    buttonStyle: CustomButtonStyles.fillBlueGray,
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 7.h),
            child: SizedBox(
              height: 116.v,
              child: VerticalDivider(
                width: 5.h,
                thickness: 5.v,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {},
    );
  }

  /// Common widget
  Widget _buildReviews(
    BuildContext context, {
    required String landLineText,
    required String mobileNoText,
  }) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 27.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            landLineText,
            style: TextStyle(
              color: theme.colorScheme.primary.withOpacity(1),
              fontSize: 18.fSize,
              fontFamily: 'Nunito Sans',
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(height: 4.v),
          Padding(
            padding: EdgeInsets.only(left: 24.h),
            child: Text(
              mobileNoText,
              style: TextStyle(
                color: theme.colorScheme.primary.withOpacity(1),
                fontSize: 16.fSize,
                fontFamily: 'Nunito Sans',
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
