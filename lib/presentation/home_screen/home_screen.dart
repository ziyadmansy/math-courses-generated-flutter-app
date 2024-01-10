import 'package:math_courses/presentation/home_screen/home_page.dart';
import 'package:math_courses/presentation/my_courses_screen/my_courses_screen.dart';
import 'package:math_courses/presentation/notifications_page/notifications_page.dart';
import 'package:math_courses/presentation/profile_finished_courses_page/profile_finished_courses_page.dart';

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

  Widget homeBody = Homepage();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: homeBody,
        bottomNavigationBar: _buildBottomBarSection(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomBarSection(BuildContext context) {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {
      if (type == BottomBarEnum.Home) {
        setState(() {
          homeBody = Homepage();
        });
      } else if (type == BottomBarEnum.Notifications) {
        setState(() {
          homeBody = NotificationsPage();
        });
      } else if (type == BottomBarEnum.Mycourses) {
        setState(() {
          homeBody = MyCoursesScreen();
        });
      } else if (type == BottomBarEnum.Profile) {
        setState(() {
          homeBody = ProfileFinishedCoursesPage();
        });
      }
    });
  }
}
