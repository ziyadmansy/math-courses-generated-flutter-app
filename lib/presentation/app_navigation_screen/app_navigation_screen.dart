import 'models/app_navigation_model.dart';
import 'package:flutter/material.dart';
import 'package:math_courses/core/app_export.dart';
import 'provider/app_navigation_provider.dart';

class AppNavigationScreen extends StatefulWidget {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  AppNavigationScreenState createState() => AppNavigationScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AppNavigationProvider(),
      child: AppNavigationScreen(),
    );
  }
}

class AppNavigationScreenState extends State<AppNavigationScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFFFFFFFF),
        body: SizedBox(
          width: 375.h,
          child: Column(
            children: [
              _buildAppNavigation(context),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0XFFFFFFFF),
                    ),
                    child: Column(
                      children: [
                        _buildScreenTitle(
                          context,
                          screenTitle: "splash".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.splashScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "welcome".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.welcomeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "login".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.loginScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "my_courses_parts".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.myCoursesPartsScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "video_page_one".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.videoPageOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "mock_exam".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.mockExamScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "live_session".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.liveSessionScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "video_page_two".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.videoPageTwoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "quiz".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.quizScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "profile_contacts".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.profileContactsScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "home".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.homeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "my_courses".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.myCoursesScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "notifications_requests".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.notificationsRequestsScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "headquarter_chat".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.headquarterChatScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "new_message".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.newMessageScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "payment_success".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.paymentSuccessScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "invoice_total".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.invoiceTotalScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "invoice_payment_method".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.invoicePaymentMethodScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "invoice_card".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.invoiceCardScreen),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAppNavigation(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation".tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app."
                    .tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF888888),
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle(
    BuildContext context, {
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle!.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  screenTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: Color(0XFF888888),
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(String routeName) {
    NavigatorService.pushNamed(routeName);
  }
}
