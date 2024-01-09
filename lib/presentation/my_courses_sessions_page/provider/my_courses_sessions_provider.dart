import 'package:flutter/material.dart';
import 'package:math_courses/core/app_export.dart';
import 'package:math_courses/presentation/my_courses_sessions_page/models/my_courses_sessions_model.dart';
import '../models/sessioncomponentsection_item_model.dart';

/// A provider class for the MyCoursesSessionsPage.
///
/// This provider manages the state of the MyCoursesSessionsPage, including the
/// current myCoursesSessionsModelObj

// ignore_for_file: must_be_immutable
class MyCoursesSessionsProvider extends ChangeNotifier {
  MyCoursesSessionsModel myCoursesSessionsModelObj = MyCoursesSessionsModel();

  @override
  void dispose() {
    super.dispose();
  }
}
