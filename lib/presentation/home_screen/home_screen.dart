import 'models/home_model.dart';
import 'package:flutter/material.dart';
import 'package:math_courses/core/app_export.dart';
import 'package:math_courses/widgets/custom_bottom_bar.dart';
import 'package:math_courses/widgets/custom_elevated_button.dart';
import 'package:math_courses/widgets/custom_search_view.dart';
import 'provider/home_provider.dart';
import 'package:math_courses/presentation/courses_dialog/courses_dialog.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  HomeScreenState createState() => HomeScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => HomeProvider(), child: HomeScreen());
  }
}

// ignore_for_file: must_be_immutable
class HomeScreenState extends State<HomeScreen> {
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
                height: SizeUtils.height,
                width: double.maxFinite,
                child: Stack(alignment: Alignment.bottomCenter, children: [
                  CustomImageView(
                      imagePath: ImageConstant.imgGroup164,
                      height: 932.v,
                      width: 430.h,
                      alignment: Alignment.center),
                  SingleChildScrollView(
                      child: Column(children: [
                        _buildWelcomeSection(context),
                        SizedBox(height: 223.v),
                        CustomImageView(
                            imagePath: ImageConstant.imgRectangle119,
                            height: 99.v,
                            width: 418.h)
                      ]))
                ])),
            bottomNavigationBar: _buildBottomBarSection(context)));
  }

  /// Section Widget
  Widget _buildWelcomeSection(BuildContext context) {
    return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.only(left: 3.h),
        child: IntrinsicWidth(
            child: SizedBox(
                height: 839.v,
                width: 427.h,
                child: Stack(alignment: Alignment.bottomRight, children: [
                  Align(
                      alignment: Alignment.center,
                      child: SizedBox(
                          height: 839.v,
                          width: 427.h,
                          child: Stack(alignment: Alignment.topLeft, children: [
                            Align(
                                alignment: Alignment.topLeft,
                                child: Padding(
                                    padding: EdgeInsets.only(left: 20.h),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Padding(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 11.h),
                                              child: Row(
                                                  mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                                  children: [
                                                    Padding(
                                                        padding:
                                                        EdgeInsets.only(
                                                            top: 5.v,
                                                            bottom: 1.v),
                                                        child: Column(
                                                            crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                            children: [
                                                              Text(
                                                                  "lbl_welcome"
                                                                      .tr,
                                                                  style: TextStyle(
                                                                      color: appTheme
                                                                          .blueGray90001
                                                                          .withOpacity(
                                                                          0.8),
                                                                      fontSize: 16
                                                                          .fSize,
                                                                      fontFamily:
                                                                      'Nunito Sans',
                                                                      fontWeight:
                                                                      FontWeight
                                                                          .w400)),
                                                              Padding(
                                                                  padding: EdgeInsets
                                                                      .only(
                                                                      left: 3
                                                                          .h),
                                                                  child: Text(
                                                                      "lbl_mohamed_ali"
                                                                          .tr,
                                                                      style: TextStyle(
                                                                          color: appTheme
                                                                              .blueGray90001,
                                                                          fontSize: 16
                                                                              .fSize,
                                                                          fontFamily:
                                                                          'Nunito Sans',
                                                                          fontWeight:
                                                                          FontWeight.w700)))
                                                            ])),
                                                    CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgEllipse1,
                                                        height: 50.adaptSize,
                                                        width: 50.adaptSize,
                                                        radius: BorderRadius
                                                            .circular(25.h),
                                                        margin: EdgeInsets.only(
                                                            left: 196.h),
                                                        onTap: () {
                                                          navigateToProfileFromAvatar(
                                                              context);
                                                        })
                                                  ])),
                                          SizedBox(height: 44.v),
                                          Padding(
                                              padding: EdgeInsets.only(
                                                  left: 14.h, right: 12.h),
                                              child: Selector<HomeProvider,
                                                  TextEditingController?>(
                                                  selector: (context,
                                                      provider) =>
                                                  provider.searchController,
                                                  builder: (context,
                                                      searchController, child) {
                                                    return CustomSearchView(
                                                        controller:
                                                        searchController,
                                                        hintText:
                                                        "lbl_search_courses"
                                                            .tr,
                                                        borderDecoration:
                                                        SearchViewStyleHelper
                                                            .fillGray);
                                                  })),
                                          SizedBox(height: 39.v),
                                          Row(
                                              mainAxisAlignment:
                                              MainAxisAlignment.center,
                                              children: [
                                                Text("msg_available_courses".tr,
                                                    style: TextStyle(
                                                        color: appTheme.red900,
                                                        fontSize: 32.fSize,
                                                        fontFamily:
                                                        'Nunito Sans',
                                                        fontWeight:
                                                        FontWeight.w700)),
                                                GestureDetector(
                                                    onTap: () {
                                                      onTapTxtViewAll(context);
                                                    },
                                                    child: Padding(
                                                        padding:
                                                        EdgeInsets.only(
                                                            left: 31.h,
                                                            top: 12.v,
                                                            bottom: 6.v),
                                                        child: Text(
                                                            "lbl_view_all".tr,
                                                            style: TextStyle(
                                                                color: theme
                                                                    .colorScheme
                                                                    .primary
                                                                    .withOpacity(
                                                                    0.6),
                                                                fontSize:
                                                                18.fSize,
                                                                fontFamily:
                                                                'Nunito Sans',
                                                                fontWeight:
                                                                FontWeight
                                                                    .w700))))
                                              ])
                                        ]))),
                            Align(
                                alignment: Alignment.topLeft,
                                child: Container(
                                    margin:
                                    EdgeInsets.only(left: 20.h, top: 253.v),
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 24.h, vertical: 27.v),
                                    decoration: AppDecoration.outlinePrimary1
                                        .copyWith(
                                        borderRadius: BorderRadiusStyle
                                            .roundedBorder50),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                        MainAxisAlignment.center,
                                        children: [
                                          Align(
                                              alignment: Alignment.centerRight,
                                              child: Row(
                                                  mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                                  children: [
                                                    Text("lbl_est".tr,
                                                        style: TextStyle(
                                                            color: appTheme
                                                                .blueGray90001,
                                                            fontSize: 26.fSize,
                                                            fontFamily:
                                                            'Nunito Sans',
                                                            fontWeight:
                                                            FontWeight
                                                                .w600)),
                                                    CustomElevatedButton(
                                                        height: 33.v,
                                                        width: 112.h,
                                                        text:
                                                        "lbl_subscribe".tr,
                                                        margin: EdgeInsets.only(
                                                            left: 33.h),
                                                        buttonStyle:
                                                        CustomButtonStyles
                                                            .fillAmber,
                                                        onPressed: () {
                                                          onTapSubscribe(
                                                              context);
                                                        })
                                                  ])),
                                          SizedBox(height: 24.v),
                                          Container(
                                              width: 177.h,
                                              margin:
                                              EdgeInsets.only(left: 8.h),
                                              child: Text(
                                                  "msg_here_you_will_be2".tr,
                                                  maxLines: 2,
                                                  overflow:
                                                  TextOverflow.ellipsis,
                                                  style: TextStyle(
                                                      color: appTheme
                                                          .blueGray90001
                                                          .withOpacity(0.6),
                                                      fontSize: 16.fSize,
                                                      fontFamily: 'Nunito Sans',
                                                      fontWeight:
                                                      FontWeight.w300))),
                                          SizedBox(height: 2.v)
                                        ]))),
                            Align(
                                alignment: Alignment.bottomCenter,
                                child: Padding(
                                    padding: EdgeInsets.only(
                                        left: 20.h, top: 515.v, bottom: 147.v),
                                    child: Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        children: [
                                          SizedBox(
                                              height: 177.v,
                                              width: 273.h,
                                              child: Stack(
                                                  alignment:
                                                  Alignment.topCenter,
                                                  children: [
                                                    Align(
                                                        alignment:
                                                        Alignment.center,
                                                        child: Container(
                                                            height: 177.v,
                                                            width: 273.h,
                                                            decoration: BoxDecoration(
                                                                color: appTheme
                                                                    .gray50,
                                                                borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                    50.h),
                                                                boxShadow: [
                                                                  BoxShadow(
                                                                      color: theme
                                                                          .colorScheme
                                                                          .primary
                                                                          .withOpacity(
                                                                          0.15),
                                                                      spreadRadius:
                                                                      2.h,
                                                                      blurRadius:
                                                                      2.h,
                                                                      offset:
                                                                      Offset(
                                                                          2,
                                                                          2))
                                                                ]))),
                                                    Align(
                                                        alignment:
                                                        Alignment.topCenter,
                                                        child: Padding(
                                                            padding:
                                                            EdgeInsets.only(
                                                                left: 14.h,
                                                                top: 29.v,
                                                                right:
                                                                18.h),
                                                            child: Column(
                                                                mainAxisSize:
                                                                MainAxisSize
                                                                    .min,
                                                                crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                                children: [
                                                                  SizedBox(
                                                                      width:
                                                                      241.h,
                                                                      child: Row(
                                                                          mainAxisAlignment:
                                                                          MainAxisAlignment.spaceBetween,
                                                                          children: [
                                                                            Text("lbl_algebra_101".tr,
                                                                                style: TextStyle(color: appTheme.blueGray90001, fontSize: 26.fSize, fontFamily: 'Nunito Sans', fontWeight: FontWeight.w600)),
                                                                            CustomElevatedButton(
                                                                                height: 33.v,
                                                                                width: 80.h,
                                                                                text: "lbl_continue".tr,
                                                                                margin: EdgeInsets.only(bottom: 2.v),
                                                                                buttonStyle: CustomButtonStyles.fillRedTL16,
                                                                                onPressed: () {
                                                                                  onTapContinue(context);
                                                                                })
                                                                          ])),
                                                                  SizedBox(
                                                                      height:
                                                                      27.v),
                                                                  Container(
                                                                      width:
                                                                      177.h,
                                                                      margin: EdgeInsets.only(
                                                                          left: 8
                                                                              .h),
                                                                      child: Text(
                                                                          "msg_here_you_will_be2"
                                                                              .tr,
                                                                          maxLines:
                                                                          2,
                                                                          overflow: TextOverflow
                                                                              .ellipsis,
                                                                          style: TextStyle(
                                                                              color: appTheme.blueGray90001.withOpacity(0.6),
                                                                              fontSize: 16.fSize,
                                                                              fontFamily: 'Nunito Sans',
                                                                              fontWeight: FontWeight.w300)))
                                                                ])))
                                                  ])),
                                          Padding(
                                              padding: EdgeInsets.only(
                                                  top: 28.v, bottom: 40.v),
                                              child: Column(
                                                  crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                                  children: [
                                                    Text("lbl_algebra_101".tr,
                                                        textAlign:
                                                        TextAlign.center,
                                                        style: TextStyle(
                                                            color: appTheme
                                                                .blueGray90001,
                                                            fontSize: 26.fSize,
                                                            fontFamily:
                                                            'Nunito Sans',
                                                            fontWeight:
                                                            FontWeight
                                                                .w600)),
                                                    SizedBox(height: 28.v),
                                                    Container(
                                                        width: 183.h,
                                                        margin: EdgeInsets.only(
                                                            left: 4.h),
                                                        child: Text(
                                                            "msg_here_you_will_be2"
                                                                .tr,
                                                            maxLines: 2,
                                                            overflow:
                                                            TextOverflow
                                                                .ellipsis,
                                                            style: TextStyle(
                                                                color: appTheme
                                                                    .blueGray90001
                                                                    .withOpacity(
                                                                    0.6),
                                                                fontSize:
                                                                16.fSize,
                                                                fontFamily:
                                                                'Nunito Sans',
                                                                fontWeight:
                                                                FontWeight
                                                                    .w300)))
                                                  ]))
                                        ]))),
                            Align(
                                alignment: Alignment.bottomCenter,
                                child: Padding(
                                    padding: EdgeInsets.fromLTRB(
                                        27.h, 455.v, 36.h, 339.v),
                                    child: Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text("lbl_my_courses".tr,
                                              style: TextStyle(
                                                  color: appTheme.red900,
                                                  fontSize: 32.fSize,
                                                  fontFamily: 'Nunito Sans',
                                                  fontWeight: FontWeight.w700)),
                                          GestureDetector(
                                              onTap: () {
                                                onTapTxtViewAll1(context);
                                              },
                                              child: Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      vertical: 9.v),
                                                  child: Text("lbl_view_all".tr,
                                                      style: TextStyle(
                                                          color: theme
                                                              .colorScheme
                                                              .primary
                                                              .withOpacity(0.6),
                                                          fontSize: 18.fSize,
                                                          fontFamily:
                                                          'Nunito Sans',
                                                          fontWeight: FontWeight
                                                              .w700))))
                                        ]))),
                            Align(
                                alignment: Alignment.bottomRight,
                                child: Padding(
                                    padding: EdgeInsets.only(right: 73.h),
                                    child: Text("lbl_8_12_sessions".tr,
                                        style: TextStyle(
                                            color: appTheme.blueGray90001
                                                .withOpacity(0.6),
                                            fontSize: 12.fSize,
                                            fontFamily: 'Nunito Sans',
                                            fontWeight: FontWeight.w400)))),
                            CustomImageView(
                                imagePath: ImageConstant.imgUser,
                                height: 79.v,
                                width: 58.h,
                                alignment: Alignment.bottomLeft,
                                margin: EdgeInsets.only(bottom: 44.v)),
                            Align(
                                alignment: Alignment.topRight,
                                child: Container(
                                    margin: EdgeInsets.only(top: 253.v),
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 26.h, vertical: 22.v),
                                    decoration: AppDecoration.outlinePrimary1
                                        .copyWith(
                                        borderRadius: BorderRadiusStyle
                                            .roundedBorder50),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                              padding:
                                              EdgeInsets.only(left: 16.h),
                                              child: Text("lbl_calculus".tr,
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                      color: appTheme
                                                          .blueGray90001,
                                                      fontSize: 26.fSize,
                                                      fontFamily: 'Nunito Sans',
                                                      fontWeight:
                                                      FontWeight.w600))),
                                          SizedBox(height: 29.v),
                                          Align(
                                              alignment: Alignment.centerRight,
                                              child: SizedBox(
                                                  width: 183.h,
                                                  child: Text(
                                                      "msg_here_you_will_be2"
                                                          .tr,
                                                      maxLines: 2,
                                                      overflow:
                                                      TextOverflow.ellipsis,
                                                      style: TextStyle(
                                                          color: appTheme
                                                              .blueGray90001
                                                              .withOpacity(0.6),
                                                          fontSize: 16.fSize,
                                                          fontFamily:
                                                          'Nunito Sans',
                                                          fontWeight: FontWeight
                                                              .w300)))),
                                          SizedBox(height: 8.v)
                                        ])))
                          ]))),
                  CustomImageView(
                      imagePath: ImageConstant.imgRectangle15,
                      height: 177.v,
                      width: 108.h,
                      alignment: Alignment.bottomRight,
                      margin: EdgeInsets.only(bottom: 147.v))
                ]))));
  }

  /// Section Widget
  Widget _buildBottomBarSection(BuildContext context) {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {
      if(type == BottomBarEnum.Notifications) {
        NavigatorService.pushNamed(
          AppRoutes.notificationsPage,
        );
      } else if(type == BottomBarEnum.Mycourses) {
        NavigatorService.pushNamed(
          AppRoutes.myCoursesScreen,
        );
      } else if(type == BottomBarEnum.Profile) {
        NavigatorService.pushNamed(
          AppRoutes.profileFinishedCoursesPage,
        );
      }
    });
  }

  /// Navigates to the profileContactsScreen when the action is triggered.
  navigateToProfileFromAvatar(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.profileContactsScreen,
    );
  }

  onTapTxtViewAll(BuildContext context) {
    // TODO: implement Actions
    NavigatorService.pushNamed(
      AppRoutes.myCoursesScreen,
    );
  }

  /// Displays a dialog with the [CoursesDialog] content.
  onTapSubscribe(BuildContext context) {
    showDialog(
        context: context,
        builder: (_) => AlertDialog(
          content: CoursesDialog.builder(context),
          backgroundColor: Colors.transparent,
          contentPadding: EdgeInsets.zero,
          insetPadding: const EdgeInsets.only(left: 0),
        ));
  }

  onTapContinue(BuildContext context) {
    // TODO: implement Actions
  }

  /// Navigates to the myCoursesScreen when the action is triggered.
  onTapTxtViewAll1(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.myCoursesScreen,
    );
  }
}
