import '../profile_finished_courses_page/widgets/rectangle_item_widget.dart';
import 'models/profile_finished_courses_model.dart';
import 'models/rectangle_item_model.dart';
import 'package:flutter/material.dart';
import 'package:math_courses/core/app_export.dart';
import 'package:math_courses/presentation/profile_payments_page/profile_payments_page.dart';
import 'package:math_courses/widgets/custom_elevated_button.dart';
import 'provider/profile_finished_courses_provider.dart';

// ignore_for_file: must_be_immutable
class ProfileFinishedCoursesPage extends StatefulWidget {
  const ProfileFinishedCoursesPage({Key? key})
      : super(
          key: key,
        );

  @override
  ProfileFinishedCoursesPageState createState() =>
      ProfileFinishedCoursesPageState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ProfileFinishedCoursesProvider(),
      child: ProfileFinishedCoursesPage(),
    );
  }
}

class ProfileFinishedCoursesPageState extends State<ProfileFinishedCoursesPage>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillOnError,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: SizeUtils.height,
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
                          margin: EdgeInsets.only(right: 1.h),
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
                                buttonStyle: CustomButtonStyles.fillRed,
                              ),
                              SizedBox(height: 13.v),
                              _buildRecentOrders(context),
                              SizedBox(height: 73.v),
                            ],
                          ),
                        ),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgEllipse7,
                        height: 113.v,
                        width: 109.h,
                        radius: BorderRadius.circular(
                          56.h,
                        ),
                        alignment: Alignment.topCenter,
                        margin: EdgeInsets.only(top: 99.v),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 5.v),
                Container(
                  height: 509.v,
                  child: TabBarView(
                    controller: tabviewController,
                    children: [
                      Container(),
                      ProfilePaymentsPage(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
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
  Widget _buildRecentOrders(BuildContext context) {
    return SizedBox(
      height: 416.v,
      width: 401.h,
      child: Stack(
        alignment: Alignment.topLeft,
        children: [
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: EdgeInsets.only(left: 7.h),
              child: Consumer<ProfileFinishedCoursesProvider>(
                builder: (context, provider, child) {
                  return ListView.separated(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    separatorBuilder: (
                      context,
                      index,
                    ) {
                      return SizedBox(
                        height: 1.v,
                      );
                    },
                    itemCount: provider.profileFinishedCoursesModelObj
                        .rectangleItemList.length,
                    itemBuilder: (context, index) {
                      RectangleItemModel model = provider
                          .profileFinishedCoursesModelObj
                          .rectangleItemList[index];
                      return RectangleItemWidget(
                        model,
                      );
                    },
                  );
                },
              ),
            ),
          ),
          Container(
            height: 42.v,
            width: 299.h,
            margin: EdgeInsets.only(top: 11.v),
            child: TabBar(
              controller: tabviewController,
              labelPadding: EdgeInsets.zero,
              labelColor: theme.colorScheme.onError,
              labelStyle: TextStyle(
                fontSize: 20.fSize,
                fontFamily: 'Nunito Sans',
                fontWeight: FontWeight.w700,
              ),
              unselectedLabelColor: theme.colorScheme.primary.withOpacity(1),
              unselectedLabelStyle: TextStyle(
                fontSize: 20.fSize,
                fontFamily: 'Nunito Sans',
                fontWeight: FontWeight.w700,
              ),
              indicator: BoxDecoration(
                color: appTheme.blueGray90001,
                borderRadius: BorderRadius.circular(
                  21.h,
                ),
              ),
              tabs: [
                Tab(
                  child: Text(
                    "msg_finished_courses".tr,
                  ),
                ),
                Tab(
                  child: Text(
                    "lbl_payments".tr,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
