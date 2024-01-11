import '../my_courses_sessions_page/widgets/sessioncomponentsection_item_widget.dart';
import 'models/my_courses_sessions_model.dart';
import 'models/sessioncomponentsection_item_model.dart';
import 'package:flutter/material.dart';
import 'package:math_courses/core/app_export.dart';
import 'provider/my_courses_sessions_provider.dart';

class MyCoursesSessionsPage extends StatefulWidget {
  const MyCoursesSessionsPage({Key? key}) : super(key: key);

  @override
  MyCoursesSessionsPageState createState() => MyCoursesSessionsPageState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => MyCoursesSessionsProvider(),
        child: MyCoursesSessionsPage());
  }
}

class MyCoursesSessionsPageState extends State<MyCoursesSessionsPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            body: Container(
                width: SizeUtils.width,
                height: SizeUtils.height,
                decoration: BoxDecoration(
                    color: theme.colorScheme.onError,
                    image: DecorationImage(
                        image: AssetImage(ImageConstant.imgGroup164),
                        fit: BoxFit.cover)),
                child: Container(
                    width: double.maxFinite,
                    decoration: AppDecoration.fillOnError.copyWith(
                        image: DecorationImage(
                            image: AssetImage(ImageConstant.imgGroup164),
                            fit: BoxFit.cover)),
                    child: Column(mainAxisSize: MainAxisSize.min, children: [
                      SizedBox(height: 34.v),
                      Expanded(
                          child: SingleChildScrollView(
                              child: Column(children: [
                        _buildWelcomeSection(context),
                        SizedBox(height: 7.v),
                        _buildSessionsSection(context),
                        SizedBox(height: 25.v),
                        _buildSessionComponentSection(context),
                        SizedBox(height: 198.v),
                        CustomImageView(
                            imagePath: ImageConstant.imgRectangle1111,
                            height: 99.v,
                            width: 418.h)
                      ])))
                    ])))));
  }

  /// Section Widget
  Widget _buildWelcomeSection(BuildContext context) {
    return Align(
        alignment: Alignment.centerLeft,
        child: Padding(
            padding: EdgeInsets.only(left: 34.h, right: 48.h),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                      padding: EdgeInsets.only(top: 5.v, bottom: 1.v),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("lbl_welcome".tr,
                                style: TextStyle(
                                    color:
                                        appTheme.blueGray90001.withOpacity(0.8),
                                    fontSize: 16.fSize,
                                    fontFamily: 'Nunito Sans',
                                    fontWeight: FontWeight.w400)),
                            Padding(
                                padding: EdgeInsets.only(left: 3.h),
                                child: Text("lbl_mohamed_ali".tr,
                                    style: TextStyle(
                                        color: appTheme.blueGray90001,
                                        fontSize: 16.fSize,
                                        fontFamily: 'Nunito Sans',
                                        fontWeight: FontWeight.w700)))
                          ])),
                  CustomImageView(
                      imagePath: ImageConstant.imgEllipse1,
                      height: 50.adaptSize,
                      width: 50.adaptSize,
                      radius: BorderRadius.circular(25.h))
                ])));
  }

  /// Section Widget
  Widget _buildSessionsSection(BuildContext context) {
    return SizedBox(
        height: 265.v,
        child: Stack(alignment: Alignment.topLeft, children: [
          Align(
              alignment: Alignment.topLeft,
              child: Padding(
                  padding: EdgeInsets.only(left: 108.h, top: 25.v),
                  child: Text("lbl_sessions".tr,
                      style: TextStyle(
                          color: appTheme.red900,
                          fontSize: 32.fSize,
                          fontFamily: 'Nunito Sans',
                          fontWeight: FontWeight.w700)))),
          Align(
              alignment: Alignment.topLeft,
              child: Container(
                  height: 30.v,
                  width: 35.h,
                  margin: EdgeInsets.only(left: 53.h, top: 32.v),
                  child: Stack(alignment: Alignment.centerRight, children: [
                    Align(
                        alignment: Alignment.center,
                        child: Container(
                            height: 30.v,
                            width: 35.h,
                            decoration: BoxDecoration(
                                color: appTheme.blueGray10001.withOpacity(0.5),
                                borderRadius: BorderRadius.circular(17.h)))),
                    CustomImageView(
                        imagePath: ImageConstant.imgArrowLeft,
                        height: 18.v,
                        width: 19.h,
                        alignment: Alignment.centerRight,
                        margin: EdgeInsets.only(right: 7.h),
                        onTap: () {
                          onTapImgArrowLeft(context);
                        })
                  ]))),
          CustomImageView(
              imagePath: ImageConstant.imgComponent7,
              height: 79.v,
              width: 52.h,
              alignment: Alignment.topLeft),
          Align(
              alignment: Alignment.bottomRight,
              child: Stack(alignment: Alignment.bottomLeft, children: [
                CustomImageView(
                    imagePath: ImageConstant.imgUserRed90003,
                    height: 93.v,
                    width: 86.h,
                    alignment: Alignment.topRight),
                GestureDetector(
                  onTap: () {
                    NavigatorService.pushNamed(
                      AppRoutes.myCoursesPartsScreen,
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24.0),
                    child: Align(
                        alignment: Alignment.bottomLeft,
                        child: SizedBox(
                            height: 154.v,
                            child:
                                Stack(alignment: Alignment.topRight, children: [
                              Align(
                                  alignment: Alignment.center,
                                  child: Container(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 33.h, vertical: 23.v),
                                      decoration: AppDecoration.outlinePrimary1
                                          .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .roundedBorder50),
                                      child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            SizedBox(height: 9.v),
                                            Text("lbl_session_1".tr,
                                                style: TextStyle(
                                                    color:
                                                        appTheme.blueGray90001,
                                                    fontSize: 26.fSize,
                                                    fontFamily: 'Nunito Sans',
                                                    fontWeight:
                                                        FontWeight.w600)),
                                            SizedBox(height: 7.v),
                                            Padding(
                                                padding: EdgeInsets.only(
                                                    right: 20.h),
                                                child: Row(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Expanded(
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
                                                                          .w300))),
                                                      Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  left: 62.h,
                                                                  top: 37.v),
                                                          child: Text(
                                                              "lbl_0_5_parts"
                                                                  .tr,
                                                              style: TextStyle(
                                                                  color: appTheme
                                                                      .blueGray90001
                                                                      .withOpacity(
                                                                          0.6),
                                                                  fontSize:
                                                                      12.fSize,
                                                                  fontFamily:
                                                                      'Nunito Sans',
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w400)))
                                                    ]))
                                          ]))),
                              Align(
                                  alignment: Alignment.topRight,
                                  child: GestureDetector(
                                      onTap: () {
                                        onTapTxtDownload(context);
                                      },
                                      child: Container(
                                          margin: EdgeInsets.only(
                                              top: 33.v, right: 21.h),
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 11.h, vertical: 2.v),
                                          decoration: AppDecoration
                                              .outlinePrimary6
                                              .copyWith(
                                                  borderRadius:
                                                      BorderRadiusStyle
                                                          .circleBorder14),
                                          child: Text("lbl_download".tr,
                                              style: TextStyle(
                                                  color:
                                                      theme.colorScheme.onError,
                                                  fontSize: 16.fSize,
                                                  fontFamily: 'Nunito Sans',
                                                  fontWeight:
                                                      FontWeight.w700)))))
                            ]))),
                  ),
                )
              ]))
        ]));
  }

  /// Section Widget
  Widget _buildSessionComponentSection(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 24.h, right: 27.h),
        child: Consumer<MyCoursesSessionsProvider>(
            builder: (context, provider, child) {
          return ListView.separated(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              separatorBuilder: (context, index) {
                return SizedBox(height: 28.v);
              },
              itemCount: provider.myCoursesSessionsModelObj
                  .sessioncomponentsectionItemList.length,
              itemBuilder: (context, index) {
                SessioncomponentsectionItemModel model = provider
                    .myCoursesSessionsModelObj
                    .sessioncomponentsectionItemList[index];
                return SessioncomponentsectionItemWidget(model);
              });
        }));
  }

  /// Navigates to the previous screen.
  onTapImgArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }

  onTapTxtDownload(BuildContext context) {
    // TODO: implement Actions
  }
}
